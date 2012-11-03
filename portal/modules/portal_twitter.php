<?php
/**
*
* @package Board3 Portal v2 - Weather
* @copyright (c) Board3 Group ( www.board3.de )
* @license http://opensource.org/licenses/gpl-license.php GNU Public License
*
*/

/**
* @ignore
*/
if (!defined('IN_PHPBB'))
{
	exit;
}

/**
* @package Weather
*/
class portal_twitter_module
{
	/**
	* Allowed columns: Just sum up your options (Exp: left + right = 10)
	* top		1
	* left		2
	* center	4
	* right		8
	* bottom	16
	*/
	public $columns = 10;

	/**
	* Default modulename
	*/
	public $name = 'PORTAL_TWITTER';

	/**
	* Default module-image:
	* file must be in "{T_THEME_PATH}/images/portal/"
	*/
	public $image_src = 'portal_twitter.png';

	/**
	* module-language file
	* file must be in "language/{$user->lang}/mods/portal/"
	*/
	public $language = 'portal_twitter_module';
	
	/**
	* custom acp template
	* file must be in "adm/style/portal/"
	*/
	public $custom_acp_tpl = '';
	
	/**
	* hide module name in ACP configuration page
	*/
	public $hide_name = false;

/*	public function get_template_center($module_id)
	{
		global $config, $template, $user, $db;

        $sql = "SELECT pf_plz, pf_land
                FROM " . PROFILE_FIELDS_DATA_TABLE . "
                WHERE user_id = " . $user->data['user_id'];

        $result = $db->sql_query_limit($sql, 1);
        $row = $db->sql_fetchrow($result);
        $land = $row['pf_land'];
        $plz = $row['pf_plz'];

		$template->assign_vars(array(
			'WEATHER_PLZ'     => (!empty($plz) && !empty($land)) ? $plz : $config['board3_weather_default_postal_' . $module_id], // default postal code
			'WEATHER_COUNTRY'  => (!empty($land)&& !empty($land)) ? $land : $config['board3_weather_default_country_' . $module_id], // default country name
		));

		return 'weather_center.html';
	}*/

	public function get_template_side($module_id)
	{
		global $config, $template, $user, $db;
		
		$template->assign_vars(array(
			'TWITTER_SEARCH'     => 'windesheim'
		));

		return 'twitter_side.html';
	}

	public function get_template_acp($module_id)
	{
		return array(
			'title'	=> 'PORTAL_TWITTER',
			'vars'	=> array(
				'legend1'							=> 'ACP_PORTAL_TWITTER_SETTINGS',
			),
		);
	}

	/**
	* API functions
	*/
	public function install($module_id)
	{
		return true;
	}

	public function uninstall($module_id)
	{
		return true;
	}
}