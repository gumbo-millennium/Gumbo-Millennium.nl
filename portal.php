<?php
/**
*
* @package Board3 Portal v2
* @copyright (c) Board3 Group ( www.board3.de )
* @license http://opensource.org/licenses/gpl-license.php GNU Public License
*
*/

/**
* @ignore
*/
define('IN_PHPBB', true);
define('IN_PORTAL', true);

$phpbb_root_path = (defined('PHPBB_ROOT_PATH')) ? PHPBB_ROOT_PATH : './';
$phpEx = substr(strrchr(__FILE__, '.'), 1);

include($phpbb_root_path . 'common.' . $phpEx);

/*
include($phpbb_root_path . 'portal/includes/constants.' . $phpEx);
$portal_root_path = PORTAL_ROOT_PATH;
include($phpbb_root_path . $portal_root_path . 'includes/functions_modules.' . $phpEx);
include($phpbb_root_path . $portal_root_path . 'includes/functions.' . $phpEx);
*/

// Start session management
$user->session_begin();
$auth->acl($user->data);
$user->setup('mods/portal');

/**
* Make sure we do an isset first, 
* else we will get errors if someone uninstalls the portal and forgets to remove portal.php
*/
if (!isset($config['board3_enable']) || !$config['board3_enable'] || !$auth->acl_get('u_view_portal'))
{
	redirect(append_sid($phpbb_root_path . 'index.' . $phpEx));
}


/**
* get initial data
*/
/*
$portal_config = obtain_portal_config();
$portal_modules = obtain_portal_modules();
*/
/**
* set up column_count array
* with this we can hide unneeded parts of the portal
*/


// Redirect to index if there are currently no active modules
/*
global $module_count;
if($module_count['total'] < 1)
{
	redirect(append_sid($phpbb_root_path . 'index.' . $phpEx));
}
*/

$template->assign_vars(array(
	'PAGE_TITLE_BOX_HIDE'	=> true
));

// Output page
page_header($user->lang['PORTAL']);

$template->set_filenames(array(
	'body' => 'portal/portal_body.html')
);

make_jumpbox(append_sid("{$phpbb_root_path}viewforum.$phpEx"));

page_footer();
