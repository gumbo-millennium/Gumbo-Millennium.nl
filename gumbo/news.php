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
	include($phpbb_root_path . 'includes/functions_display.' . $phpEx);
	include($phpbb_root_path . 'includes/functions_user.' . $phpEx);

	$user->add_lang('common');

	// Start session management
	$user->session_begin();
	$auth->acl($user->data);
	$user->setup('viewforum');

	// Get the page content and title
	//$sql = 'SELECT * FROM ' . POSTS_TABLE . ' AS p WHERE forum_id = 14 AND topic_id = (SELECT topic_id FROM ' . TOPICS_TABLE . ' WHERE forum_id = 14 ORDER BY topic_time LIMIT 1) GROUP BY topic_id';
	/*$sql = '
		SELECT *
		FROM ' . TOPICS_TABLE . ' t
		LEFT JOIN ' . POSTS_TABLE . ' p
		ON p.topic_id = t.topic_first_post_id
		WHERE t.forum_id = 14
		ORDER BY topic_time
	';*/

	$sql_array = array(
		'SELECT'		=> '*',
		'FROM'			=> array(TOPICS_TABLE => 't'),
		'LEFT_JOIN'		=> array(
			array(
				'FROM'	=> array(POSTS_TABLE => 'p'),
				'ON'	=> 'p.topic_id = t.topic_first_post_id'
			)
		),
		'WHERE'			=> 't.forum_id = 14',
		'ORDER BY'		=> 't.topic_time'
	);

	$result = $db->sql_query_limit($db->sql_build_query('SELECT', $sql_array), 10);
	/*
	$row = $db->sql_fetchrow($result);
	
	$options = 	($row['enable_bbcode'] ? OPTION_FLAG_BBCODE : 0) +
				($row['enable_smilies'] ? OPTION_FLAG_SMILIES : 0) + 
				($row['enable_magic_url'] ? OPTION_FLAG_LINKS : 0);
	
	$message = generate_text_for_display($row['post_text'], $row['bbcode_uid'], $row['bbcode_bitfield'], $options);
	
	$images = array();
	if(preg_match_all('/<img[^>]+src="([^"]*)"[^>]+>/i', $message, $imgs))
	{	
		foreach($imgs[1] as $image)
		{	
			$images[] = $image;
		}
		
		$message = preg_replace('/<img[^>]+src="([^"]*)"[^>]+>/i', '', $message);
		
		foreach($images as $image)
		{	
			$template->assign_block_vars('images', array(
				'IMAGE' => $image
			));
		}
	}
	
	$template->assign_var('MESSAGE_TITLE', $row['post_subject']);
	$template->assign_var('MESSAGE_TEXT', $message);
	*/

	while($row = $db->sql_fetchrow($result))
	{
		$options = 	($row['enable_bbcode'] ? OPTION_FLAG_BBCODE : 0) +
				($row['enable_smilies'] ? OPTION_FLAG_SMILIES : 0) + 
				($row['enable_magic_url'] ? OPTION_FLAG_LINKS : 0);
		$message = generate_text_for_display($row['post_text'], $row['bbcode_uid'], $row['bbcode_bitfield'], $options);
		$user_id = $row['topic_poster'];
		user_get_id_name($user_id, $username);

		if(is_array($username))
		{
			$username = $username[$row['topic_poster']];
		}
		$template->assign_block_vars('posts', array(
			'TITLE'			 => $row['post_subject'],
			'CONTENT'		 => $message,
			'DATE_DAY'		 => date('d', $row['post_time']),
			'DATE_MONTH'	 => date('M', $row['post_time']),
			'COMMENTS'		 => $row['topic_replies'] . ($row['topic_replies'] == 1 ? ' Comment' : ' Comments'),
			'AUTHOR'		 => $username,
			'AUTHOR_PROFILE' => append_sid($phpbb_root_path.'memberlist.'.$phpEx, "mode=viewprofile&u=". $row['topic_poster'])
		));
	}

	$db->sql_freeresult($result);
	
	// Add the title/breadcrumbs bar
	$template->assign_vars(array(
		'PAGE_TITLE_BOX_HIDE'	=> false
	));
	
	// Set the breadcrumbs
	$template->assign_block_vars('navlinks', array(
		'FORUM_NAME'		=> $user->lang['NEWS_AND_EVENTS'],
		'U_VIEW_FORUM'		=> append_sid("{$phpbb_root_path}gumbo/news_and_events.$phpEx" )) //The path to the custom file relative to the phpbb root path.            
	);
	
	$template->assign_block_vars('navlinks', array(
		'FORUM_NAME'		=> $user->lang['NEWS'], 
		'U_VIEW_FORUM'		=> append_sid("{$phpbb_root_path}gumbo/news.$phpEx") //The path to the custom file relative to the phpbb root path.            
	));
	
	// Output page
	page_header($user->lang['NEWS']);

	$template->set_filenames(array(
		'body' => 'news.html')
	);

	page_footer();

?>