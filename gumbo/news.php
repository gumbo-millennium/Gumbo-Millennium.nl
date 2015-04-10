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
	define('IN_NEWS', true);

	$phpbb_root_path = (defined('PHPBB_ROOT_PATH')) ? PHPBB_ROOT_PATH : './../';
	$phpEx = substr(strrchr(__FILE__, '.'), 1);
	include($phpbb_root_path . 'common.' . $phpEx);
	include($phpbb_root_path . 'includes/bbcode.' . $phpEx);
	include_once($phpbb_root_path . 'includes/functions_display.' . $phpEx);
	include_once($phpbb_root_path . 'includes/functions_user.' . $phpEx);

	$user->add_lang('common');

	// Start session management
	$user->session_begin();
	$auth->acl($user->data);
	$user->setup('viewforum');

	$news_id = request_var('n', 0);

	$posts = fetch_posts(14, true, 10, 5, 0, "news_all", 0, false, true, true, false);
	//$posts = fetch_posts(14, true, 10, 5, 0, "news_all", 0, false, true);
	// check if news id exists in database!
	if(isset($posts[$news_id])){
		$post = $posts[$news_id];
		include($phpbb_root_path . '/gumbo/news_single.' . $phpEx);
	}else{
		include($phpbb_root_path . '/gumbo/news_list.' . $phpEx);
	}
	

	page_footer();

?>