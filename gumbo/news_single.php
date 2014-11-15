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
	* @ignore
	*/

	if (!defined('IN_PHPBB') || !defined('IN_NEWS'))
	{
		exit;
	}

	// Add the title/breadcrumbs bar
	$template->assign_vars(array(
		'L_GO_TO_NEWS'	=> $user->lang["GO_TO_NEWS"],
		'PAGE_TITLE_BOX_HIDE'	=> false
	));
	
	// Set the breadcrumbs
	$template->assign_block_vars('navlinks', array(
		'FORUM_NAME'		=> $user->lang['NEWS'], 
		'U_VIEW_FORUM'		=> append_sid("{$phpbb_root_path}gumbo/news.$phpEx") //The path to the custom file relative to the phpbb root path.            
	));

	$template->assign_block_vars('navlinks', array(
		'FORUM_NAME'		=> "de neuws post", 
		'U_VIEW_FORUM'		=> append_sid("{$phpbb_root_path}gumbo/news.$phpEx", "n=".$news_id) //The path to the custom file relative to the phpbb root path.            
	));
	
	// Output page
	page_header($user->lang['NEWS']);

	$template->set_filenames(array(
		'body' => 'news_single.html')
	);
?>