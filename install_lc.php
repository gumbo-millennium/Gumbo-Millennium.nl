<?php
/**
*
* @author Elglobo (Mickael Salfati) elglobo@phpbb-services.com 
* @package umil
* @copyright (c) 2009 Mickael Salfati 
* @license http://opensource.org/licenses/gpl-license.php GNU Public License
*
*/

/**
* @ignore
*/
define('UMIL_AUTO', true);
define('IN_PHPBB', true);
$phpbb_root_path = (defined('PHPBB_ROOT_PATH')) ? PHPBB_ROOT_PATH : './';
$phpEx = substr(strrchr(__FILE__, '.'), 1);
include($phpbb_root_path . 'common.' . $phpEx);
$user->session_begin();
$auth->acl($user->data);
$user->setup();

if (!file_exists($phpbb_root_path . 'umil/umil_auto.' . $phpEx))
{
	trigger_error('Please download the latest UMIL (Unified MOD Install Library) from: <a href="http://www.phpbb.com/mods/umil/">phpBB.com/mods/umil</a>', E_USER_ERROR);
}

// The name of the mod to be displayed during installation.
$mod_name = 'ACP_CONNECTIONS_LOGS';

/*
* The name of the config variable which will hold the currently installed version
* You do not need to set this yourself, UMIL will handle setting and updating the version itself.
*/
$version_config_name = 'lc_mod_version';

/*
* The language file which will be included when installing
* Language entries that should exist in the language file for UMIL (replace $mod_name with the mod's name you set to $mod_name above)
* $mod_name
* 'INSTALL_' . $mod_name
* 'INSTALL_' . $mod_name . '_CONFIRM'
* 'UPDATE_' . $mod_name
* 'UPDATE_' . $mod_name . '_CONFIRM'
* 'UNINSTALL_' . $mod_name
* 'UNINSTALL_' . $mod_name . '_CONFIRM'
*/
$language_file = 'mods/info_acp_lc';

/*
* The array of versions and actions within each.
* You do not need to order it a specific way (it will be sorted automatically), however, you must enter every version, even if no actions are done for it.
*
* You must use correct version numbering.  Unless you know exactly what you can use, only use X.X.X (replacing X with an integer).
* The version numbering must otherwise be compatible with the version_compare function - http://php.net/manual/en/function.version-compare.php
*/
$versions = array(
	// Version 1.0.2
	'1.0.2'	=> array(
		'config_add' => array(
			array('lc_mod_enable', false),
			array('lc_disable', false),
			array('lc_acp_disable', false),
			array('lc_founder_disable', false),
			array('lc_admin_disable', false),
			array('lc_prune_entries', false),
			array('lc_prune_day', 7),
			array('lc_interval', 60),
		),
		
		'table_column_add' => array(
			array(LOG_TABLE, 'log_number', array('UINT', 1)),
		),
		
		'table_add' => array(
			array(LOG_LC_EXCLUDE_IP_TABLE, array(
					'COLUMNS'		=> array(
						'exclude_id'		=> array('UINT', NULL, 'auto_increment'),
						'exclude_ip'		=> array('VCHAR:40', ''),				
					),
					'PRIMARY_KEY'	=> 'exclude_id',
				),
			),
		),
		
		'module_add' => array(
			array('acp', 'ACP_FORUM_LOGS', array(
					'module_basename'		=> 'lc',
					'modes'					=> array('connections'),
				),
			),
			array('acp', 'ACP_BOARD_CONFIGURATION', array(
					'module_basename'		=> 'lc',
					'modes'					=> array('log_connections'),
				),
			),
		),
	),

	// Version 1.0.3
	'1.0.3' => array(
		// Nothing changed in this version.
	),
	
	// Version 1.0.5
	'1.0.5' => array(
		// Nothing changed in this version.
	),
	
	// Version 1.0.6
	'1.0.6' => array(
		// Nothing changed in this version.
	),
);

// Include the UMIF Auto file and everything else will be handled automatically.
include($phpbb_root_path . 'umil/umil_auto.' . $phpEx);

?>