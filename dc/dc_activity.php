<?php

/**
*
* @package phpBB3
* @version $Id$
* @athor: Gerco Versloot
* @date: 6 - 8 - 2012
* @license http://opensource.org/licenses/gpl-license.php GNU Public License
* @Gumbo millennium
*/

/**
* @ignore
*/
define('IN_PHPBB', true);
$phpbb_root_path = (defined('PHPBB_ROOT_PATH')) ? PHPBB_ROOT_PATH : './../';
$phpEx = substr(strrchr(__FILE__, '.'), 1);
include_once($phpbb_root_path . 'common.' . $phpEx);
include_once($phpbb_root_path . 'includes/functions_user.' . $phpEx);
include_once($phpbb_root_path . 'includes/functions_display.' . $phpEx);
include_once ($phpbb_root_path . 'dc/dc_activity_class.' . $phpEx);
include_once($phpbb_root_path . 'includes/functions_messenger.' . $phpEx);

// Start session management
$user->session_begin();
$auth->acl($user->data);
$user->setup('mods/dc_activity');

if (!$auth->acl_get('u_view_activity'))
{
     trigger_error('NOT_AUTHORISED');
}


if(!isset($_GET["act"])){
	trigger_error($user->lang['DC_ACT_NO_ACT']);
}

// Build main objects
$act_hndlr = $activities_handler;			// build activity handler
$activity_id = request_var('act', 0);			// get activity by id (default = 0)	


if($activity_id == 0){
	trigger_error($user->lang['DC_ACT_NO_ACT']);
}

$activity = Activity::get_activity($activity_id, intval($user->data['user_id']));	
if($activity == NULL){
	trigger_error($user->lang['DC_ACT_NO_ACT']);				// send error to the user
	return null;
}
	

$manager = $activity->is_manager($user->data['user_id']);
$in_the_past = ($activity->getStartDatetime() < new DateTime('now') ? true : false) ;

// get authorisation 
if (!($activity->user_access($user->data['user_id']) || $manager) )
{	
	$activity->set_error_log("Page ".__FILE__.": No user access;");
	trigger_error('NOT_AUTHORISED');
}

// set activity readed
if($activity->get_read( intval($user->data['user_id']) )  == FALSE ){
	$activity->set_read( intval($user->data['user_id']));
}
// change enrol status
$template->assign_var('CHANGE', ($change_status = request_var('change', false))); 	// open enrol select options (default = false)
$status = request_var('status', 0);											// get new enrol status (default = 0: no new status)

$enrol_list = $activity->get_enrol_list(ALL_USERS, 'ASC', "username");				// get enrol_list

$current_status = 0;

if (isset($enrol_list[ $user->data['user_id']])) {
	switch ($enrol_list[$user->data['user_id']]["status"]) {
	case 'yes':
		$current_status = 1;
		break;
	
	case "no":
		$current_status = 2;
		break;
	}
	
}


if($status != 0 && check_form_key('chance_the_subscribe_status') && $status != $current_status ){															// if a new status
	if($user->data['user_id'] == ANONYMOUS || $user->data['user_type'] == USER_INACTIVE){	// check if user is guest or if user is inactive
		$activity->set_error_log("Page ".__FILE__.": User tried to subscribe without access;");
		trigger_error($user->lang['LOGIN_VIEWFORUM']);				// send error to the user
	}else {
		switch($status){														// check new status
			case 1:																// new status = yes
			if($activity->is_max_enrolled(1)){
				$activity->set_error_log("Page ".__FILE__.": Max amount of users enrolled");
				trigger_error($user->lang['DC_ACT_ENROLL_AMOUNT_MAX']);
			}else{
				$activity->set_users_status(
					array( 
						array(
							"user_id"		=> intval($user->data["user_id"]),
							"user_ip"		=> $user->ip,
							"status"		=> USER_SIGN_IN,
							)
						)
					);
				
					// test sends messagers
					$url = generate_board_url() . '/' . $user->page['page'];		// get current page
					$messenger = new messenger(FALSE);
					$messenger->subject($activity->getName());
					$messenger->template('dc_activity_subscribe',$user->data['user_lang']);
					$messenger->to($user->data['user_email'], $user->data['username']);
					$messenger->im($user->data['user_jabber'], $user->data['username']);
					$messenger->assign_vars(array(
						'ACTIVITY_NAME'    		=> $activity->getName(),
						'USERNAME'    			=> $user->data['username'],
						'YEAR'					=> date("Y"),
						'TITLE'    				=> $activity->getName(),
						'START_DATETIME'    	=> $user->format_date( $activity->getStartDatetime()->getTimestamp()),
						'END_DATETIME'    		=> $user->format_date( $activity->getEndDatetime()->getTimestamp()),
						'UNSUBSCRIBE_DATETIME'	=> $user->format_date( $activity->getUnsubscribeMaxDatetime()->getTimestamp() ),
						'DESCRIPTION'    		=> $activity->getDescription_preview(10),
						'LINK'    				=> substr($url , 0, strpos($url , '?'))."?act=".$activity->getId(),		// remove all query parameters (like: ?sid=XXXX) and add only the current activity
						'COMMISSION'    		=> get_group_name($activity->getCommission())
					));
					$messenger->send($user->data['user_notify_type']);
					$messenger->save_queue();
				}
				break;
			case 2:																// new status = no					
			$activity->set_users_status(array(
				array(
					"user_id"		=> intval($user->data["user_id"]),
					"user_ip"		=> $user->ip,
					"status"		=> USER_SIGN_OUT
					)
				));
			break;
		}
	}
}

$enrol_list = $activity->get_enrol_list(ALL_USERS, 'ASC', "username");
// get comment
// Used the salt because the default must be a string to check if there is a new comment. 
// I wanted to use a boolean as default but that is impassable because than the input has to be aan boolean. 
// So if the input is the salt there is no new comment. 
$salt = (String)mt_rand(); 													// create (string) salt for gettting the comment 
$comment = utf8_normalize_nfc(request_var('comment', $salt)); 									// get new comment (default = $salt: no new comment)
if($comment != $salt && check_form_key('chance_the_subscribe_status')){											// check for a new comment
	if(array_key_exists($user->data['user_id'], $enrol_list)){ 			// check if user has enrolled
		$activity->set_user_comment($user->data['user_id'],$comment, $enrol_list); 		// set new comment
		$template->assign_var('COMMENT_SAVED', true);						// set template saved	
	}
}

add_form_key('chance_the_subscribe_status'); // set form key to avoid cross side scripting
// set default variables

// assign image
foreach (get_images_data($activity->getDescription_raw(), $activity->getUID(), TRUE) as $img_id => $img_data)
{
    $template->assign_block_vars('images', array(
        'URL'        => $img_data["URL"]
    ));
}

$template->assign_vars(array(
	'TITLE' 				=> $activity->getName(),
	'START_DAY' 			=> $user->format_date( $activity->getStartDatetime()->getTimestamp(), 'j'),
	'START_MONTH' 			=> $user->format_date( $activity->getStartDatetime()->getTimestamp(), 'M'),
	'COMMISSION'    		=> get_group_name($activity->getCommission()),
	'DESCRIPTION'    		=> $activity->getDescription(true), // set description with images 
	'START_DATE_TIME'    	=> $user->format_date( $activity->getStartDatetime()->getTimestamp()), 
	'END_DATE_TIME'    		=> $user->format_date( $activity->getEndDatetime()->getTimestamp()), 
));

// check if the event is past
if($activity->getEndDatetime() < new DateTime("now")){
	$template->assign_var('EVENT_FINISHED', true);	// set start date and time	
}else{
	$template->assign_var('EVENT_FINISHED', false);	// set start date and time	
}
	

// check if user is in the enroll list
if (isset($enrol_list[ $user->data['user_id']])) {
	$template->assign_vars(array(
		'USER_ENROLLED_CHECK' 		=> true,
		'USER_ENROLLED_PAID' 		=> $enrol_list[$user->data['user_id']]["price_paid"],
		'USER_ENROLLED_COMMENT' 	=> $enrol_list[$user->data['user_id']]["comments"],
	));
	// check if the user is enrolled
	if ($enrol_list[$user->data['user_id']]["status"] == "yes") {
		$template->assign_vars(array(
			'USER_ENROLLED_TEXT' 		=> $user->lang['DC_ACT_USER_ENROLLED'],	// set the
			'USER_ENROLLED_STATUS' 		=> true,								// set status of the user
		));
		$template->assign_var('USER_ENROLLED_TEXT', $user->lang['DC_ACT_USER_ENROLLED']);	// set current user status	
		$template->assign_var('USER_ENROLLED_STATUS', true);	// set current user status	
	}else{
		$template->assign_var('USER_ENROLLED_TEXT', $user->lang['DC_ACT_IS_NOT_ENROLLED']);
		$template->assign_var('USER_ENROLLED_STATUS', false);	// set current user status	// set current user status
	}
}else{
	$template->assign_var('USER_ENROLLED_CHECK', false);
}

$sign_up_places = $activity->getEnrolMax() - $activity->getAmountEnrolledUser();
$enrol_date_time = $activity->getEnrolDateTime();			// get max enrol date and time
$unsubscribe_date_time = $activity->getUnsubscribeMaxDatetime();			// get the time the user has to unsubscribe
$template->assign_vars(array(
	'ENROLL'			 => $activity->getEnrol(),
	'U_SIGN_UPS_LEFT'	 => ($activity->getEnrolMax() > 0) ? $sign_up_places : $user->lang['DC_ACT_ENROLL_UNLIMITED'],
	'IS_ACTIVE'			 => $activity->getActive(),
	'IS_ENROLL_MAX'		 => $activity->is_max_enrolled(1), // check the limit of subscriptions is reached
	'ENROLL_DATE' 		 => $user->format_date( $enrol_date_time->getTimestamp() ), // set end enrol date time
	'UNSUBSCRIBE_MAX_DATETIME' => $user->format_date( $unsubscribe_date_time->getTimestamp() ), // set end enrol date time
));


if($enrol_date_time > new DateTime("now")){					// check if the enrol date time or  is past
	$template->assign_var('ENROLL_DATE_CHECK', true);		// enrol date time not past
}else{
	$template->assign_var('ENROLL_DATE_CHECK', false);		// enrol date time past
}
if($unsubscribe_date_time > new DateTime("now")){				// check if the subscribe date time or  is past
	$template->assign_var('UNSUBSCRIBE_DATE_CHECK', true);		// enrol date time not past
}else{
	$template->assign_var('UNSUBSCRIBE_DATE_CHECK', false);		// enrol date time past
}	


// some more default variables
$template->assign_var('PRICE', $activity->getPrice());					// set price
$template->assign_var('PRICE_MEMBER', $activity->getPriceMember());		// set price member
$template->assign_var('LOCATION', $activity->getLocation());			// set location

// list of all user that are enrolled in 2 rows
if($enrol_list!= 0){		// get a list of all enrolled users	
	$users_enrolled = $activity->getAmountEnrolledUser();				// count amount enrolled users
	$template->assign_var('USERS_ENROLLED_AMOUNT', $users_enrolled);	// set template amount
	$template->assign_var('USERS_ENROLLED_CHECK', true);				// set force enrol
1;													// current list with users
	foreach ($enrol_list as $id => $value)								// split enrolled users in two groups
	{
		if($value['status'] == "yes"){
			
			$template->assign_block_vars('users_enrolled', array(	// set array of enrolled user groups
				'USER_ID'    => $id,
				'USER_LINK'	=>	append_sid($phpbb_root_path.'memberlist.'.$phpEx, "mode=viewprofile&u=". $id),
				'USER_NAME'    => $value['username'],
			));														// next enrolled user
		}
	}
}else{
	$template->assign_var('USERS_ENROLLED_CHECK', false); 				// set no forced enrol
}



// links
$template->assign_vars(array(
	'URL_CLEAN' => append_sid($phpbb_root_path.'dc/dc_activity.'.$phpEx, "act=" .$activity->getId()),
	'URL_STATUS' => append_sid($phpbb_root_path.'dc/dc_activity.'.$phpEx, "act=" .$activity->getId()),
	'URL_CHANGE_STATUS_YES' => append_sid($phpbb_root_path.'dc/dc_activity.'.$phpEx, "act=".$activity->getId()."&status=1" ),
	'URL_CHANGE_STATUS_NO' => append_sid($phpbb_root_path.'dc/dc_activity.'.$phpEx, "act=".$activity->getId()."&status=2" ),
	'URL_CHANGE_STATUS_MAYBE' => append_sid($phpbb_root_path.'dc/dc_activity.'.$phpEx, "act=".$activity->getId()."&status=3" ),
	'URL_CHANGE_STATUS' => append_sid($phpbb_root_path.'dc/dc_activity.'.$phpEx, "act=".$activity->getId()."&change=true" ),
));


// some additional words for translation

$template->assign_vars(array(
	'LANG_TILL' => strtolower($user->lang['DC_ACT_LANG_TILL']),
	'LANG_EVENT_FINISHED' => $user->lang['DC_ACT_IN_PAST_AND_OVER'],
	'LANG_NON_MEMBERS' => strtolower($user->lang['NON_MEMBERS']),
	'LANG_ENROLLS' => $user->lang['DC_ACT_LANG_ENROLLS'],
	'LANG_SIGN_UPS_LEFT' => $user->lang['DC_ACT_ENROLL_LEFT'],
	'LANG_SUBSCRIPTIONS' => $user->lang['DC_ACT_LANG_SUBSCRIBE'],  
	'LANG_UNSUBSCRIPTIONS' => $user->lang['DC_ACT_UNSUBSCRIBE'],
	'LANG_SUBSCRIBE' => $user->lang['ACP_DC_ACT_ENROL'],  
	'LANG_UNSUBSCRIBE' => $user->lang['ACP_DC_ACT_DEENROL'],  
	'LANG_DATE' => $user->lang['DC_ACT_LANG_DATE'],
	'LANG_PRICE' => $user->lang['DC_ACT_LANG_PRICE'],
	'LANG_NOT_ACTIVE' => $user->lang['DC_ACT_NOT_ACTIVE'],
	'LANG_LOCATION' => $user->lang['DC_ACT_LANG_LOCATION'],
	'LANG_ENROLL_NOBODY' => $user->lang['DC_ACT_ENROLL_NOBODY'],
	'LANG_ENROLL_FORCE' => $user->lang['DC_ACT_ENROLL_FORCE'],
	'LANG_ENROLL_TIME' => $user->lang['DC_ACT_ENROLL_TIME'],
	'LANG_ENROLL_AMOUNT' => $user->lang['DC_ACT_ENROLL_AMOUNT'],
	'LANG_ENROLL_AMOUNT_MAX' => $user->lang['DC_ACT_ENROLL_AMOUNT_MAX'],
	'LANG_ENROLL_DATETIME_OVER' => $user->lang['DC_ACT_ENROLL_DATETIME_OVER'],
	'LANG_ENROLL_CLOSED' => $user->lang['DC_ACT_ENROLL_CLOSED'],
	'LANG_SAVE_COMMENT' => $user->lang['DC_ACT_SAVE_COMMENT'],
	'LANG_YES' => $user->lang['YES'],
	'LANG_NO' => $user->lang['NO'],
	'LANG_MAYBE' => $user->lang['MAYBE'],
	'LANG_AMOUNT' => $user->lang['AMOUNT'],
	'LANG_PAID' => strtolower($user->lang['PAID']),
	'LANG_CANCEL' => $user->lang['CANCEL'],
	'LANG_SAVED' => $user->lang['SAVED'],
	'LANG_TO' => strtolower($user->lang['TO']),
	'LANG_CHANGE' =>  ucfirst(strtolower($user->lang['DC_ACT_CHANGE_STATE'])),
	'LANG_NO_LOGIN_NEEDED' =>  $user->lang['DC_ACT_NO_LOGIN_NEEDED'],
));

// if a user is a manager: some extra functions and assignments
$template->assign_var('IS_MANAGER', $manager);
if($manager){

	$template->assign_var('EVENT_MANAGEMENT', $user->lang['DC_ACT_EVENT_MANAGEMENT']);

	$template->assign_var('OVERVIEW_NAME', ucfirst(strtolower($user->lang['ACP_DC_ACT_OVERVIEW'])));
	$template->assign_var('OVERVIEW_URL',  append_sid("{$phpbb_root_path}adm/index.$phpEx", "i=dc_activity_management&mode=overview", true, $user->session_id));	
	
	
	$template->assign_var('EDIT_NAME', ucfirst(strtolower($user->lang['ACP_DC_ACT_EDIT'])));
	$template->assign_var('EDIT_URL',  append_sid("{$phpbb_root_path}adm/index.$phpEx", "i=dc_activity_management&mode=edit_activity&id=".$activity->getId(), true, $user->session_id));	

	$template->assign_var('SUBSCRIBE_NAME', ucfirst(strtolower($user->lang['DC_ACT_LANG_ENROLLS'])));
	$template->assign_var('SUBSCRIBE_URL',  append_sid("{$phpbb_root_path}adm/index.$phpEx", "i=dc_activity_management&mode=enrolls&id=".$activity->getId(), true, $user->session_id));	
	
	
	$template->assign_var('IS_PAST', $in_the_past);
	$template->assign_var('RECYLCLE_NAME', ucfirst(strtolower($user->lang['ACP_DC_ACT_RECYCLE'])));
	$template->assign_var('RECYLCLE_URL',  append_sid("{$phpbb_root_path}adm/index.$phpEx", "i=dc_activity_management&mode=recycle_activity&id=".$activity->getId(), true, $user->session_id));	
}



// other assignments
$template->assign_var('FORM_HIDDEN_ACT',$activity->getId() );
$template->assign_var('FORM_HIDDEN_SID', $user->data["session_id"]);


page_header($activity->getName());
// set template

$template->assign_block_vars('navlinks', array(
	'FORUM_NAME'         => $user->lang['DC_ACT_LIST'],
            'U_VIEW_FORUM'      	=> append_sid("{$phpbb_root_path}dc/dc_activity_list.$phpEx" )) //The path to the custom file relative to the phpbb root path.            
);

$template->assign_block_vars('navlinks', array(
	'FORUM_NAME'         => $activity->getName(), 
            'U_VIEW_FORUM'      	=> append_sid("{$phpbb_root_path}dc/dc_activity.$phpEx", "act=".$activity->getId())) //The path to the custom file relative to the phpbb root path.            
);

$template->set_filenames(array(
	'body' => 'dc_activity.html',
	));

make_jumpbox(append_sid("{$phpbb_root_path}viewforum.$phpEx"));
page_footer();
?>