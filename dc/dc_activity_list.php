<?php
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
global $db;

if (!$auth->acl_get('u_list_activities'))
{
     trigger_error('NOT_AUTHORISED');
}


$search_parameters = NULL;

// check if reeded events is needed 
if(intval($user->data['user_id']) > 1){
	
	$search_parameters = array(
		USER_READED 		=> TRUE,
		MANAGERS_GROUPS		=> FALSE,
	);
}
if(($full_list = $activities_handler->get_user_activities( intval($user->data['user_id']), USER_ACCESS, FUTURE_ACTIVE, $search_parameters, START_DATETIME)) != NULL){
	$template->assign_var('LIST_AVAILABLE', true);
	$row_count = 1;
	$group_name_ary = array();
	foreach($full_list AS $index => $activity){
		
		if(!isset($group_name_ary[$activity->getCommission()])){
			$group_name_ary[$activity->getCommission()] = get_group_name($activity->getCommission());
		}
		
		$template->assign_block_vars('activity', array(
			'NAME'    						=> $activity->getName(),
			'ACT_LINK'   				=>  append_sid($phpbb_root_path.'dc/dc_activity.'.$phpEx, "act=" . $activity->getId()),
			'COMMISSION'    			=>  $group_name_ary[$activity->getCommission()],
			'START_DAY' 				=>  $user->format_date( $activity->getStartDatetime()->getTimestamp(), 'j'),
			'START_MONTH' 				=>  $user->format_date( $activity->getStartDatetime()->getTimestamp(), 'M'),
			'START_DATE_TIME' 			=>  $user->format_date( $activity->getStartDatetime()->getTimestamp()),
			'ENROLLED'  				=>  $activity->getAmountEnrolledUser(),
			'READED'					=> 	((intval($user->data['user_id']) == 1 ) ? TRUE : $activity->get_read(intval($user->data['user_id']))), 	
			'PREVIEW'					=> 	$activity->getDescription_preview(), 	
			'S_ROW_COUNT'    			=>  $row_count,
		));

		foreach (get_images_data($activity->getDescription_raw(), $activity->getUID(), FALSE) as $img_id => $img_data)
	    {
	        $template->assign_block_vars('activity.imgs', array(
	            'URL'        => $img_data["URL"],
	            'LINK'        => $img_data["LINK"],

	        ));
	    }

		$row_count++;
	}
}else{
	$template->assign_var('LIST_AVAILABLE', false);
}	

// some additional words for translation
$template->assign_var('URL_CLEAN', append_sid($phpbb_root_path.'dc/dc_activity.'.$phpEx));
$template->assign_var('URL_ICAL', $phpbb_root_path . 'dc/ical.' . $phpEx .'?id='.$user->data['user_id']);
$template->assign_var('LANG_ICAL_TITLE', $user->lang['DC_ACT_LANG_ICAL_TITLE']);
$template->assign_var('LANG_ICAL_URL', $user->lang['DC_ACT_LANG_ICAL_URL']);
$template->assign_var('LANG_ICAL_EXPLAIN', $user->lang['DC_ACT_LANG_ICAL_EXPLAIN']);
$template->assign_var('LANG_ICAL_HOW', $user->lang['DC_ACT_LANG_ICAL_MORE_INFO']);
$template->assign_var('LANG_ICAL_HOW_URL', "https://support.google.com/calendar/answer/37100?hl=nl");
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
$template->assign_var('LANG_GO_TO_EVENT', $user->lang['DC_ACT_GO_TO']);

page_header($user->lang['DC_ACT_LIST']);
// set template

$template->assign_block_vars('navlinks', array(
	'FORUM_NAME'        => $user->lang['DC_ACT_LIST'], //Name of the page you wish to see on the navlinks page. You should use language files, but for the purpose of this demonstration I have not.
	'U_VIEW_FORUM'      => append_sid("{$phpbb_root_path}dc/dc_activity_list.$phpEx")) //The path to the custom file relative to the phpbb root path.
);

$template->set_filenames(array(
    'body' => 'dc_activity_list.html',
));

make_jumpbox(append_sid("{$phpbb_root_path}viewforum.$phpEx"));
page_footer();
?>