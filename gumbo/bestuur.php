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

$sql = 'SELECT u.username, u.user_sig, u.user_sig_bbcode_uid, u.user_sig_bbcode_bitfield, u.user_avatar, u.user_avatar_type, u.user_avatar_width, u.user_avatar_height, pfd.pf_gumbo_realname, pfd.pf_gumbo_verhaal FROM ' . USERS_TABLE . ' AS u, ' . PROFILE_FIELDS_DATA_TABLE . ' AS pfd, ' . USER_GROUP_TABLE . ' AS g WHERE u.user_id = g.user_id AND u.user_id = pfd.user_id AND g.group_id = 13';

$result = $db->sql_query($sql);

while ($row = $db->sql_fetchrow($result))  
{   
	// Parse the signature
	$signature = censor_text($row['user_sig']);

	// Second parse bbcode here
	if ($row['user_sig_bbcode_bitfield'])
	{
		$bbcode = new bbcode(base64_encode($row['user_sig_bbcode_bitfield']));
		$bbcode->bbcode_second_pass($signature, $row['user_sig_bbcode_uid'], $row['user_sig_bbcode_bitfield']);
	}
	
	$signature = bbcode_nl2br($signature);
	$signature = smiley_text($signature); // Always process smilies after parsing bbcodes

	$template->assign_block_vars('groep', array(
		'GUMBO_REALNAME' 		=> $row['pf_gumbo_realname'],
		'A_USERNAME'			=> $row['username'],
		'SIGNATURE'				=> $signature,
		'AVATAR_IMG'			=> get_user_avatar($row['user_avatar'], $row['user_avatar_type'], $row['user_avatar_width'], $row['user_avatar_height']),
		'GUMBO_VERHAAL'			=> $row['pf_gumbo_verhaal'],
		'L_GUMBO_NICK'			=> $user->lang['NICKNAME'],
		'L_GUMBO_IRL'			=> $user->lang['IRLNAME'],
		'L_GUMBO_ONDERSCHRIFT'	=> $user->lang['ONDERSCHRIFT'],
		'L_GUMBO_STORY'			=> $user->lang['STORY'],
	));
}

// language information
$template->assign_block_vars('taal', array(
	'L_GUMBO_GROUP_NAME'	=> $user->lang['BESTUUR'],
));

// send to template
$template->set_filenames(array('body' => 'groep.html',));
page_footer();
?>