<?php
	/**
	*
	* @package gumbo_millennium_layouy
	* @autor Gerco Versloot
	*
	*/

	define('IN_PHPBB', true);
	define('IN_COMMITTEE', true);
	$phpbb_root_path = (defined('PHPBB_ROOT_PATH')) ? PHPBB_ROOT_PATH : './../';
	$phpEx = substr(strrchr(__FILE__, '.'), 1);
	include($phpbb_root_path . 'common.' . $phpEx);
	include($phpbb_root_path . 'includes/bbcode.' . $phpEx);
	include_once($phpbb_root_path . 'includes/functions_display.' . $phpEx);

	// Start session management
	$user->session_begin();
	$auth->acl($user->data);
	$user->setup('viewforum');

	// Add the title/breadcrumbs bar
	$template->assign_vars(array(
		'PAGE_TITLE_BOX_HIDE'	=> false
	));

	// Set the breadcrumbs
	$template->assign_block_vars('navlinks', array(
		'FORUM_NAME'		=> $user->lang['COMMITTEE'],
		'U_VIEW_FORUM'		=> append_sid("{$phpbb_root_path}gumbo/committee.$phpEx" )) //The path to the custom file relative to the phpbb root path.            
	);

	$committee = request_var("c", "");
	
	$group_id = null;

	switch ($committee) {
		case 'directors':
			$group_id = 13;
			break;
		case 'dc':
			$group_id = 15;
			break;
		case 'sc':
			$group_id = 17;
			break;
		case 'pc':
			$group_id = 18;
			break;
		case 'ac':
			$group_id = 14;
			break;
		case 'gc':
			$group_id = 23;
			break;
		case 'kas':
			$group_id = 19;
			break;
		case 'ib':
			$group_id = 20;
			break;
		default:
			$group_id = null;
			break;
	}

	// check if valid group is found
	
	if($group_id != null) {

		include($phpbb_root_path . '/gumbo/committee.single.' . $phpEx);
	}else{ // no valid group found	
		include($phpbb_root_path . '/gumbo/committee.general.' . $phpEx);	

	}

	// Add the title/breadcrumbs bar
	$template->assign_vars(array(
		'PAGE_TITLE_BOX_HIDE'	=> false
	));

	page_footer();

?>
