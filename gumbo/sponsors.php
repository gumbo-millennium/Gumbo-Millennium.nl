<?php
define('IN_PHPBB', true);
$phpbb_root_path = (defined('PHPBB_ROOT_PATH')) ? PHPBB_ROOT_PATH : './..';
$phpEx = substr(strrchr(__FILE__, '.'), 1);
include($phpbb_root_path . 'common.' . $phpEx);
include($phpbb_root_path . 'includes/bbcode.' . $phpEx);
include($phpbb_root_path . 'includes/functions_display.' . $phpEx);

// Start session management
$user->session_begin();
$auth->acl($user->data);
$user->setup();

page_header('Sponsors');

$sql = 'SELECT * FROM ' . POSTS_TABLE . ' AS p WHERE post_id = 27';

$result = $db->sql_query_limit($sql, $config['portal_max_topics']);
$row = $db->sql_fetchrow($result);

// Parse the message and subject
$message = censor_text($row['post_text']);

// Second parse bbcode here
if ($row['bbcode_bitfield'])
{
	$bbcode = new bbcode(base64_encode($row['bbcode_bitfield']));
	$bbcode->bbcode_second_pass($message, $row['bbcode_uid'], $row['bbcode_bitfield']);
}

$message = bbcode_nl2br($message);
$message = smiley_text($message);

$db->sql_freeresult($result);

$template->assign_var('MESSAGE_TEXT', $message);

$template->set_filenames(array(
    'body' => 'singlepost_body.html',
));

page_footer();