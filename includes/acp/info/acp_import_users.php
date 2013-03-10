<?php
/**
*
* @license http://opensource.org/licenses/gpl-license.php GNU Public License
*
*/

/**
* @package module_install
*/
class acp_import_users_info
{
	function module()
	{
		return array(
			'filename'	=> 'acp_import_users',
			'title'		=> 'ACP_IMPORT_USERS',
			'version'	=> '1.0.0',
			'modes'		=> array(
				'import'		=> array('title' => 'ACP_IMPORT_USERS', 'auth' => 'acl_a_user', 'cat' => array('ACP_CAT_USERS')),
			),
		);
	}

	function install()
	{
	}

	function uninstall()
	{
	}
}

?>