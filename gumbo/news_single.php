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

	if(intval($user->data['user_id']) != 1 && !$post["user_readed"]){
		markread("topic", $post['forum_id'] , $post['topic_id']);
	}

	$template->assign_vars(array(
		'TITLE' 				=> $post["topic_title"],
		'POST_DAY' 			=> $user->format_date( $post['topic_time']->getTimestamp(), 'j'),
		'POST_MONTH' 			=> $user->format_date( $post['topic_time']->getTimestamp(), 'M'),
		'AUTHOR'    		=> $post['username'],
		'CONTENT'    		=> $post['post_text'], 
		'COMMENTS'    			=> $post['topic_replies'], 
		'VIEWS'    				=> $post['topic_views'], 
	));

	foreach ($post['images'] as $img_id => $img_data)
    {
        $template->assign_block_vars('images', array(
            'URL'        => $img_data["URL"],
            'LINK'        => $img_data["LINK"],
        ));
    }


    if(is_array($posts)){
		$template->assign_var('NEWS_AVAILABLE', true);
			foreach ($posts as $key => $post_other) {
				if (is_array($post_other) && $post_other != $post) {
					$template->assign_block_vars('posts_other', array(
						'TITLE'			 => $post_other['topic_title'],
						'HREF'			 => append_sid($phpbb_root_path.'/gumbo/news.'.$phpEx, "n=". $post_other['topic_id'])
					));
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

	$template->assign_block_vars('navlinks', array(
		'FORUM_NAME'		=> $post["topic_title"], 
		'U_VIEW_FORUM'		=> append_sid("{$phpbb_root_path}gumbo/news.$phpEx", "n=".$news_id) //The path to the custom file relative to the phpbb root path.            
	));
	
	// Output page
	page_header($user->lang['NEWS']);

	$template->set_filenames(array(
		'body' => 'news_single.html')
	);
?>