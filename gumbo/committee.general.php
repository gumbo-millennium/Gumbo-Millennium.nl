<?php
	/**
	*
	* @package gumbo_millennium_layouy
	* @autor Gerco Versloot
	*
	*/
	if (!defined('IN_PHPBB') || !defined('IN_COMMITTEE'))
	{
		exit;
	}

	// Get the page content and title
	$sql = 'SELECT * FROM ' . POSTS_TABLE . ' AS p WHERE post_id = 1373';

	$result = $db->sql_query_limit($sql, 1);
	$row = $db->sql_fetchrow($result);
	
	$options = 	($row['enable_bbcode'] ? OPTION_FLAG_BBCODE : 0) +
				($row['enable_smilies'] ? OPTION_FLAG_SMILIES : 0) + 
				($row['enable_magic_url'] ? OPTION_FLAG_LINKS : 0);

	$message = (!empty($row['post_text'])) ? generate_text_for_display($row['post_text'], $row['bbcode_uid'], $row['bbcode_bitfield'], $options) : "Geen informatie"; 

	$template->assign_var('MESSAGE_TEXT', $message);
	
	$db->sql_freeresult($result);
	
	page_header($user->lang['COMMITTEE']);
	
	$template->set_filenames(array(
		'body' => 'dc_singlepost_body.html')
	);

	page_header($user->lang['COMMITTEE']);
	
?>
