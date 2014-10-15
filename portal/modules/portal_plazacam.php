<?php
/**
*
* @package Board3 Portal v2 - Default
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
* @package Modulname
*/
class portal_plazacam_module
{
	/**
	* Allowed columns: Just sum up your options (Exp: left + right = 10)
	* top		1
	* left		2
	* center	4
	* right		8
	* bottom	16
	*/
	public $columns = 4;

	/**
	* Default modulename
	*/
	public $name = 'PORTAL_PLAZAWEBCAMS';

	/**
	* module-language file
	* file must be in "language/{$user->lang}/mods/portal/"
	*/
	public $language = 'portal_plazacam_module';

	/**
	* Default module-image:
	* file must be in "{T_THEME_PATH}/images/portal/"
	*/
	public $image_src = '';


	/**
	* hide module name in ACP configuration page
	*/
	public $hide_name = false;

	public function get_template_center($module_id)
	{
		global $config, $template, $db, $user;

		// 2014-02-24 tijdcheck ivm traffic 
		$hourarray = array(23, 0, 1, 2, 3, 4, 5, 6);
		$check = '';
		foreach ($hourarray as &$hour)
		{
			if ( date('G') == $hour )
			{
				$check += 1;
			}
		}

		if ( date('G') == 22 && date('i') < 59 && date('i') > 30)
		{
			$check += 1;
		}
		
		if ( $check !== 1  || true)
		{  
			$template->assign_var('WEBCAM_AVAILABLE', true);
			$post_id = intval($config['board3_plazacam_post_id' . $module_id]);
			$sql = 'SELECT * FROM ' . POSTS_TABLE . ' AS p WHERE post_id = '.$post_id;

			$result = $db->sql_query_limit($sql, 1);
			$row = $db->sql_fetchrow($result);
			$images = get_images_data($row['post_text'], $row['bbcode_uid']);
			$template->assign_vars(array(
				'S_PLAZACAM_URL'	=> html_entity_decode($images[0]["URL"]),
				'L_PLAZACAM_ALT'	=> $user->lang["PORTAL_PLAZACAM"],
				'L_PLAZACAM_TITLE'	=> $user->lang["PORTAL_PLAZACAM_TITLE"],
				'L_PLAZACAM_SUB'	=> $user->lang["PORTAL_PLAZACAM_SUB"],
				'S_KOFFIECAM_URL'	=> html_entity_decode($images[1]["URL"]),
				'L_KOFFIECAM_ALT'	=> $user->lang["PORTAL_KOFFIECAM"],
				'L_KOFFIECAM_TITLE'	=> $user->lang["PORTAL_KOFFIECAM_TITLE"],
				'L_KOFFIECAM_SUB'	=> $user->lang["PORTAL_KOFFIECAM_SUB"],
			));

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
		}
		else
		{
			$template->assign_var('WEBCAM_AVAILABLE', false);
			$template->assign_var('MESSAGE_TEXT', $user->lang["PORTAL_OUT_OF_SERVICE"]);
		}

		$template->assign_vars(array(
			'REFRESH_RATE'			=> $config['board3_plazacam_refresh_rate_ms' . $module_id],
		));

		return 'plazacam_center.html';
	}

	public function get_template_acp($module_id)
	{
		return array(
			'title'	=> 'ACP_PORTAL_PLAZACAM_SETTINGS',
			'vars'	=> array(
				'legend1'								=> 'ACP_PORTAL_PLAZACAM_SETTINGS',
				'board3_plazacam_refresh_rate_ms' . $module_id	=> array('lang' => 'ACP_PORTAL_PLAZACAM_REFRESH_RATE',		'validate' => 'int',	'type' => 'text:10:200',	'explain' => false),
				'board3_plazacam_post_id' . $module_id	=> array('lang' => 'ACP_PORTAL_PLAZACAM_POST_ID',		'validate' => 'int',	'type' => 'text:10:200',	'explain' => false),
				
			),
		);
	}

	/**
	* API functions
	*/
	public function install($module_id)
	{
		set_config('board3_plazacam_refresh_rate_ms' . $module_id, 5000);
		set_config('board3_plazacam_post_id' . $module_id, 168);
		return true;
	}

	public function uninstall($module_id)
	{
		global $db;

		$del_config = array(
			'board3_plazacam_refresh_rate_ms' . $module_id,
			'board3_plazacam_refresh_rate_ms' . $module_id,
		);
		$sql = 'DELETE FROM ' . CONFIG_TABLE . '
			WHERE ' . $db->sql_in_set('config_name', $del_config);
		return $db->sql_query($sql);
	}
}
