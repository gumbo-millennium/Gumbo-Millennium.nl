<?php
define('IN_PHPBB', true);
$phpbb_root_path = (defined('PHPBB_ROOT_PATH')) ? PHPBB_ROOT_PATH : './../';
$phpEx = substr(strrchr(__FILE__, '.'), 1);
include($phpbb_root_path . 'common.' . $phpEx);
include($phpbb_root_path . 'includes/bbcode.' . $phpEx);
include($phpbb_root_path . 'includes/functions_display.' . $phpEx);

// Start session management
$user->session_begin();
$auth->acl($user->data);
$user->setup();

page_header($user->lang['BESTUUR']);

$sql = 'SELECT u.user_id, u.username, pfd.pf_gumbo_realname, u.user_lastvisit, g.group_name FROM ' . USERS_TABLE . ' AS u, ' . PROFILE_FIELDS_DATA_TABLE . ' AS pfd, ' . GROUPS_TABLE . ' AS g, ' . USER_GROUP_TABLE . ' AS ug WHERE u.user_id = ug.user_id AND ug.group_id = g.group_id AND u.user_id = pfd.user_id AND g.group_id in (9, 10, 11, 24, 25)';

/*
Numbers explained
A-Leden = 11
Leden = 9
Oud leden = 10
Ere Leden = 25
Begunstigers = 24
*/

$result = $db->sql_query($sql);

while ($row = $db->sql_fetchrow($result))  
{   
	$template->assign_block_vars('groep', array(
		'GUMBO_REALNAME' 		=> $row['pf_gumbo_realname'],
		'A_USERNAME'			=> $row['username'],
		'GROUP_NAME'			=> $row['group_name'],
		'LAST_VISIT'			=> $row['user_lastvisit'],
	));
}

// language information
$template->assign_block_vars('taal', array(
	'L_GUMBO_GROUP_NAME'	=> $user->lang['BESTUUR'],
	'L_GUMBO_NICK'			=> $user->lang['NICKNAME'],
	'L_GUMBO_IRL'			=> $user->lang['IRLNAME'],
));

// send to template
$template->set_filenames(array('body' => 'gumbo_member_overview.html',));
page_footer();
?>