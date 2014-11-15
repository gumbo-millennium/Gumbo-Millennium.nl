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


	
	$posts = fetch_posts(14, true, 10, 5, 0, "news_all");
	if(is_array($posts)){
		$template->assign_var('NEWS_AVAILABLE', true);
		foreach ($posts as $key => $post) {
			if (is_array($post)) {	
				$template->assign_block_vars('posts', array(
					'TITLE'			 => $post['topic_title'],
					'PREVIEW'		 => $post['post_text'],
					'HREF'			 => append_sid($phpbb_root_path.'/gumbo/news.'.$phpEx, "n=". $post['topic_id']),
					'DATE_DAY'		 => $post['topic_time']->format("d"),
					'DATE_MONTH'	 => $post['topic_time']->format("M"),
					'COMMENTS'		 => $post['topic_replies'],
					'AUTHOR'		 => $post['username'],
					'READED'		 => (intval($user->data['user_id']) == 1 ) ? TRUE : $post["user_readed"],
					'AUTHOR_PROFILE' => append_sid($phpbb_root_path.'memberlist.'.$phpEx, "mode=viewprofile&u=". $post['user_id']),

				));
				foreach ($post['images'] as $img_id => $img_data)
			    {
			        $template->assign_block_vars('posts.imgs', array(
			            'URL'        => $img_data["URL"],
			            'LINK'        => $img_data["LINK"],
			        ));
			    }
			}
		
		}
	}else{
		$template->assign_vars(array(
			'NEWS_AVAILABLE'		=> false,
			'L_NEWS_AVAILABLE_TITLE'	=> $user->lang["NEWS_AVAILABLE_TITLE"],
			'L_NEWS_AVAILABLE_TEXT'	=> $user->lang["NEWS_AVAILABLE_TEXT"],
		));
	
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
	
	// Output page
	page_header($user->lang['NEWS']);

	$template->set_filenames(array(
		'body' => 'news_list.html')
	);
?>