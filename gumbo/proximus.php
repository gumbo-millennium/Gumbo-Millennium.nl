<?php
	/**
	*
	* @package phpBB3
	* @version $Id$
	* @copyright (c) 2005 phpBB Group
	* @license http://opensource.org/licenses/gpl-license.php GNU Public License
	*
	*/

	/**
	*/

	/**
	* @ignore
	*/
	define('IN_PHPBB', true);
	$phpbb_root_path = (defined('PHPBB_ROOT_PATH')) ? PHPBB_ROOT_PATH : './../';
	$phpEx = substr(strrchr(__FILE__, '.'), 1);
	include($phpbb_root_path . 'common.' . $phpEx);
	include($phpbb_root_path . 'includes/bbcode.' . $phpEx);
	include_once($phpbb_root_path . 'includes/functions_display.' . $phpEx);

	// Start session management
	$user->session_begin();
	$auth->acl($user->data);
	$user->setup('viewforum');
	
	// Get the page content and title
	$sql = 'SELECT * FROM ' . POSTS_TABLE . ' AS p WHERE post_id = 1384';

	$result = $db->sql_query_limit($sql, 1);
	$row = $db->sql_fetchrow($result);
	
	$options = 	($row['enable_bbcode'] ? OPTION_FLAG_BBCODE : 0) +
				($row['enable_smilies'] ? OPTION_FLAG_SMILIES : 0) + 
				($row['enable_magic_url'] ? OPTION_FLAG_LINKS : 0);
	
	$message = generate_text_for_display($row['post_text'], $row['bbcode_uid'], $row['bbcode_bitfield'], $options);
	
	$template->assign_var('MESSAGE_TEXT', $message);
	
	$db->sql_freeresult($result);
	
	// Add the title/breadcrumbs bar
	$template->assign_vars(array(
		'PAGE_TITLE_BOX_HIDE'	=> false
	));
	
	// Set the breadcrumbs
	$template->assign_block_vars('navlinks', array(
		'FORUM_NAME'		=> $user->lang['PROXIMUS'],
		'U_VIEW_FORUM'		=> append_sid("{$phpbb_root_path}gumbo/proximus.$phpEx" )) //The path to the custom file relative to the phpbb root path.            
	);
	
	// Output page
	page_header($user->lang['PROXIMUS']);
	
	$template->set_filenames(array(
		'body' => 'dc_singlepost_body.html')
	);

	page_footer();

?>
