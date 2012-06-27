<?php
define('IN_PHPBB', true);
$phpbb_root_path = (defined('PHPBB_ROOT_PATH')) ? PHPBB_ROOT_PATH : './../';
$phpEx = substr(strrchr(__FILE__, '.'), 1);
include($phpbb_root_path . 'common.' . $phpEx);
include($phpbb_root_path . 'includes/functions_user.' . $phpEx);
include($phpbb_root_path . 'includes/functions_display.' . $phpEx);
include ($phpbb_root_path . 'dc/dc_activity_user_class.' . $phpEx);
include ($phpbb_root_path . 'dc/dc_activity_class.' . $phpEx);
include_once($phpbb_root_path . 'includes/functions_messenger.' . $phpEx);

// Start session management
$user->session_begin();
$auth->acl($user->data);
$user->setup('mods/dc_activity');

// Build main objecs
$activity_controller = new activity_user();

/*
// get authorisation 
if (!$activity->user_acces($user->data['user_id']))
{
     //trigger_error('NOT_AUTHORISED');
}
*/

if(($full_list = $activity_controller->get_full_list_active($user->data['user_id'])) != null){
	$template->assign_var('LIST_AVAILABLE', true);
	$row_count = 1;
	foreach($full_list AS $index => $activity){
		$enrolled = count($activity->get_all_status("yes"));  
		$template->assign_block_vars('activity', array(
			'NAME'    			=> $activity->getName(),
			'ACT_LINK'   		=>  append_sid($phpbb_root_path.'dc/dc_activity.'.$phpEx, "act=" . $activity->getId()),
			'COMMISSION'    	=>  get_group_name($activity->getCommission()),
			'START_DATE_TIME'   =>  $user->format_date( $activity->getStartDatetime()->getTimestamp()),
			'ENROLLED'  		=>  $enrolled,
			'S_ROW_COUNT'    	=>  $row_count,
		));
		$row_count++;
	}
}else{
	$template->assign_var('LIST_AVAILABLE', false);
}	



// add links
//$template->assign_var('URL_CLEAN', append_sid($phpbb_root_path.'dc/dc_activity_list'.$phpEx));

// some additional words for transalation

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

page_header("Activity list");
// set template

$template->assign_block_vars('navlinks', array(
            'FORUM_NAME'         => 'Activity list', //Name of the page you wish to see on the navlinks page. You should use language files, but for the purpose of this demonstration I have not.
            'U_VIEW_FORUM'      	=> append_sid("{$phpbb_root_path}dc/dc_activity_list.$phpEx")) //The path to the custom file relative to the phpbb root path.
);

$template->set_filenames(array(
    'body' => 'dc_activity_list.html',
));

make_jumpbox(append_sid("{$phpbb_root_path}viewforum.$phpEx"));
page_footer();
?>