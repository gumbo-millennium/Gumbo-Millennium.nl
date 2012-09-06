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
include($phpbb_root_path . 'common.' . $phpEx);
include($phpbb_root_path . 'includes/functions_user.' . $phpEx);
include($phpbb_root_path . 'includes/functions_display.' . $phpEx);
include($phpbb_root_path . 'dc/dc_activity_user_class.' . $phpEx);
include_once($phpbb_root_path . 'dc/dc_activity_class.' . $phpEx);
include_once($phpbb_root_path . 'includes/functions_messenger.' . $phpEx);

// Start session management
$user->session_begin();
$auth->acl($user->data);
$user->setup('mods/dc_activity');

if(!isset($_GET["act"])){
	trigger_error($user->lang['DC_ACT_NO_ACT']);
}

// Build main objecs
$activity_controller = new activity_user();									// build user controller
$activity =  $activity_controller->get_activity(request_var('act', 0));		// build activity by id (default = 0)

// get authorisation 
if (!$activity->user_acces($user->data['user_id']))
{
     trigger_error('NOT_AUTHORISED');
}
// set activity readed
/*
DOES NOT WORK
if($activity_controller->get_read($user->data['user_id'], $activity->getId()) == null)
	$activity_controller->set_read($user->data['user_id'], $activity->getId());
*/

// chance enroll status
$template->assign_var('CHANCE', ($chance_status = request_var('chance', false))); 	// open enroll select options (default = false)
$status = request_var('status', 0);											// get new enroll status (default = 0: no new status)
if($status != 0){															// if a new status
	switch($status){														// check new status
		case 1:																// new status = yes
			user_new_status("yes",$activity);								// set new status to yes
			/*
			SEND MAIL TO USER, NOT WORKING BECAUSE I HAVE NO MAIL SERVER
				BUILD THIS IN THE LIVE STAGE!
			$messenger = new messenger();
			$messenger->subject($activity->getName);
			$messenger->template('dc_activity_notify_user',$user->data['user_lang']);
			$messenger->to($user->data['user_email'], $user->data['username']);
			$messenger->im($user->data['user_jabber'], $user->data['username']);
			$messenger->assign_vars(array(
				'FOO'    => "henk",
				'BAR'    => "klaas"
			));
			$messenger->send($user->data['user_notify_type']);
			$messenger->save_queue();
			*/
			break;
		case 2:																// new status = no					
			user_new_status("no", $activity);								// set new status to no
			break;
		case 3:																// new status = maybe
			user_new_status("maybe", $activity);							// set new status to maybe
			break;
	}
}

// get comment
// Used the salt because the default must be a string to check if there is a new comment. 
// I wanted to use a boolean as default but that is impassable because than the input has to be aan boolean. 
// So if the input is the salt there is no new comment. 
$salt = (String)mt_rand(); 													// create (string) salt for gettting the comment 
$comment = utf8_normalize_nfc(request_var('comment', $salt)); 									// get new comment (default = $salt: no new comment)
if($comment != $salt){														// check for a new comment
	if(array_key_exists($user->data['user_id'], $activity->get_all_status("all"))){ 			// check if user has enrolled
		$activity->set_user_comment($user->data['user_id'],$comment); 		// set new comment
		$template->assign_var('COMMENT_SAVED', true);						// set template saved	
	}
}


// set default variables
$template->assign_var('TITLE', $activity->getName());						// set title
$template->assign_var('DESCRIPTION', $activity->getDescription());			// set description
$template->assign_var('START_DATE_TIME',$user->format_date( $activity->getStartDatetime()->getTimestamp()));	// set start date and time
$template->assign_var('END_DATE_TIME', $user->format_date( $activity->getEndDatetime()->getTimestamp()));		// set end date and time 

// function for chancing status
function user_new_status($new_status, $activity){
	global $user;
	$current_status = $activity->get_all_status("all");
	if( $current_status[$user->data['user_id']]['status'] != $new_status){
		$activity->set_user_status($user->data['user_id'], $user->ip, $current_status[$user->data['user_id']]['comments'], $new_status);
	}
}

$enroll_list = $activity->get_all_status("yes");				// get enroll_list
//check for enroll
if( $activity->getEnroll() == 1 ){										//need enroll?postprofile
	$template->assign_var('ENROLL', true);								// set enroll
		$template->assign_var('ENROLL_MAX', ((count($enroll_list) < $activity->getEnrollMax()) || ($activity->getEnrollMax() == 0)) ? true : false); // check the limit of subscriptions is reached
		$enroll_date_time = $activity->getEnrollDateTime();			// get max enroll date and time
		$template->assign_var('ENROLL_DATE',$user->format_date( $enroll_date_time->getTimestamp() )); // set end enroll date time
		if($enroll_date_time > new DateTime("now")){				// check if the enroll date time is past
			$template->assign_var('ENROLL_DATE_CHECK', true);		// enroll date time not past
		}else{
			$template->assign_var('ENROLL_DATE_CHECK', false);		// enroll date time past
		}
		
			
}

// some more default variables
$template->assign_var('PRICE', $activity->getPrice());					// set price
$template->assign_var('PRICE_MEMBER', $activity->getPriceMember());		// set price member
$template->assign_var('LOCATION', $activity->getLocation());			// set location

// list of all user that are enrolled in 2 rows
if($enroll_list!= 0){		// get a list of all enrolled users	
	$users_enrolled = count($enroll_list);						// count amount enrolled users
	$template->assign_var('USERS_ENROLLED_AMOUNT', $users_enrolled);	// set template amount
	$template->assign_var('USERS_ENROLLED_CHECK', true);				// set force enroll
	// split the group into two lists
	$split = $users_enrolled / 2 ;										// caluclate the half of all enrolled users
	$counter = 0;														// counter for splitting
	$enroll_block = 1;													// current list with users
	foreach ($enroll_list as $id => $value)						// split enrolled users in two groups
	{
		if($split <= $counter)											// if the half of the group is splitted
			$enroll_block = 2;											// set next blok
		
		$template->assign_block_vars('users_enrolled'.$enroll_block, array(	// set array of enrolled user groups
			'USER_ID'    => $id,
			'USER_LINK'	=>	append_sid($phpbb_root_path.'memberlist.'.$phpEx, "mode=viewprofile&u=". $id),
			'USER_NAME'    => $value['username'],
		));
		$counter++;														// next enrolled user
	}
}else{
	$template->assign_var('USERS_ENROLLED_CHECK', false); 				// set no forced enroll
}

// user enrolle status
if(($user_current_status = $activity->get_user_status($user->data['user_id'])) != null){	// check if user is enrolled
	$all_users_enroll_list = $activity->get_all_status("all");								// get a list of all enrolled users
	$template->assign_var('USER_ENROLLED_CHECK', true);										// set user enrolled
	$template->assign_var('USER_ENROLLED_PAID',  $all_users_enroll_list[$user->data['user_id']]["price_payed"]);	// set user amount paid
	$template->assign_var('USER_ENROLLED_STATUS', ucfirst( $all_users_enroll_list[$user->data['user_id']]["status"]) );	// set current user status
	$template->assign_var('USER_ENROLLED_COMMENT', $all_users_enroll_list[$user->data['user_id']]["comments"]);		// get current comment
	
}else{
	$template->assign_var('USER_ENROLLED_CHECK', false); 									// user not enrolled
}

// links
$template->assign_var('URL_CLEAN', append_sid($phpbb_root_path.'dc/dc_activity.'.$phpEx, "act=" .$activity->getId()));
$template->assign_var('URL_STATUS', append_sid($phpbb_root_path.'dc/dc_activity.'.$phpEx, "act=" .$activity->getId()));
$template->assign_var('URL_CHANCE_STATUS_YES', append_sid($phpbb_root_path.'dc/dc_activity.'.$phpEx, "act=".$activity->getId()."&status=1" ));
$template->assign_var('URL_CHANCE_STATUS_NO', append_sid($phpbb_root_path.'dc/dc_activity.'.$phpEx, "act=".$activity->getId()."&status=2" ));
$template->assign_var('URL_CHANCE_STATUS_MAYBE', append_sid($phpbb_root_path.'dc/dc_activity.'.$phpEx, "act=".$activity->getId()."&status=3" ));
$template->assign_var('URL_CHANCE_STATUS', append_sid($phpbb_root_path.'dc/dc_activity.'.$phpEx, "act=".$activity->getId()."&chance=true" ));

// some additional words for transalation
$template->assign_var('LANG_TILL', strtolower($user->lang['DC_ACT_LANG_TILL']));
$template->assign_var('LANG_ENROLLS', $user->lang['DC_ACT_LANG_ENROLLS']);
$template->assign_var('LANG_SUBSCRIBE', $user->lang['DC_ACT_LANG_SUBSCRIBE']);
$template->assign_var('LANG_DATE', $user->lang['DC_ACT_LANG_DATE']);
$template->assign_var('LANG_PRICE', $user->lang['DC_ACT_LANG_PRICE']);
$template->assign_var('LANG_MEMBER', strtolower($user->lang['DC_ACT_LANG_MEMBER']));
$template->assign_var('LANG_LOCATION', $user->lang['DC_ACT_LANG_LOCATION']);
$template->assign_var('LANG_ENROLL_NOBODY', $user->lang['DC_ACT_ENROLL_NOBODY']);
$template->assign_var('LANG_ENROLL_FORCE', $user->lang['DC_ACT_ENROLL_FORCE']);
$template->assign_var('LANG_ENROLL_TIME', $user->lang['DC_ACT_ENROLL_TIME']);
$template->assign_var('LANG_ENROLL_AMOUNT', $user->lang['DC_ACT_ENROLL_AMOUNT']);
$template->assign_var('LANG_ENROLL_CLOSED', $user->lang['DC_ACT_ENROLL_CLOSED']);
$template->assign_var('LANG_SAVE_COMMENT', $user->lang['DC_ACT_SAVE_COMMENT']);
$template->assign_var('LANG_YES', $user->lang['YES']);
$template->assign_var('LANG_NO', $user->lang['NO']);
$template->assign_var('LANG_MAYBE', $user->lang['MAYBE']);
$template->assign_var('LANG_AMOUNT', $user->lang['AMOUNT']);
$template->assign_var('LANG_PAID', strtolower($user->lang['PAID']));
$template->assign_var('LANG_CANCEL', $user->lang['CANCEL']);
$template->assign_var('LANG_SAVED', $user->lang['SAVED']);
$template->assign_var('LANG_TO', strtolower($user->lang['TO']));

// other assignments
$template->assign_var('FORM_HIDDEN_ACT',$activity->getId() );
$template->assign_var('FORM_HIDDEN_SID', $user->data["session_id"]);


page_header($activity->getName());
// set template
$template->assign_block_vars('navlinks', array(
            'FORUM_NAME'         => 'Activity list', //Name of the page you wish to see on the navlinks page. You should use language files, but for the purpose of this demonstration I have not.
            'U_VIEW_FORUM'      	=> append_sid("{$phpbb_root_path}dc/dc_activity_list.$phpEx" )) //The path to the custom file relative to the phpbb root path.            
);

$template->assign_block_vars('navlinks', array(
            'FORUM_NAME'         => 'Activity', //Name of the page you wish to see on the navlinks page. You should use language files, but for the purpose of this demonstration I have not.
            'U_VIEW_FORUM'      	=> append_sid("{$phpbb_root_path}dc/dc_activity.$phpEx", "act=".$activity->getId())) //The path to the custom file relative to the phpbb root path.            
);
$template->set_filenames(array(
    'body' => 'dc_activity.html',
));

make_jumpbox(append_sid("{$phpbb_root_path}viewforum.$phpEx"));
page_footer();
?>