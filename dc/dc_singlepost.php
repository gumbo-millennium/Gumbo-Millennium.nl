<?php
define('IN_PHPBB', true);
global $db, $phpbb_root_path, $phpEx;
include($phpbb_root_path . 'common.' . $phpEx);
include($phpbb_root_path . 'includes/bbcode.' . $phpEx);
include_once($phpbb_root_path . 'includes/functions_display.' . $phpEx);

// Start session management
$user->session_begin();
$auth->acl($user->data);
$user->setup();


//eigen code
$sql = 'SELECT p.post_text, p.bbcode_bitfield, p.bbcode_uid, t.topic_title, p.post_subject FROM ' . POSTS_TABLE . ' AS p, ' . TOPICS_TABLE . ' as t WHERE p.topic_id = t.topic_id AND p.post_id = 50';
// $config['max_topics'] zorgt voor dat je maximaal aantal posts ophaalt als je meerdere zou ophalen om weer te geven
$result = $db->sql_query_limit($sql, 1);
$row = $db->sql_fetchrow($result);

// Parse the message and subject
$message = censor_text($row['post_text']);
$subject = censor_text($row['post_subject']);

page_header($subject);
// Second parse bbcode here
if ($row['bbcode_bitfield'])
{
	$bbcode = new bbcode(base64_encode($row['bbcode_bitfield']));
	$bbcode->bbcode_second_pass($message, $row['bbcode_uid'], $row['bbcode_bitfield']);
}

$message = bbcode_nl2br($message);
$message = smiley_text($message);

$db->sql_freeresult($result);

$template->assign_var('MESSAGE_TITLE', $subject);
$template->assign_var('MESSAGE_TEXT', $message);

$template->set_filenames(array(
    'body' => 'dc_singlepost_body.html',
));

page_footer();
