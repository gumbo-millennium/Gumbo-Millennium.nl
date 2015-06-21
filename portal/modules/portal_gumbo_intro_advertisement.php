<?php
/**
*
* @package gumbo_millennium_layout
* @version v 1.11
* @author: Gerco Versloot
* @date: 6 - 5 - 2015
* @Gumbo Millennium
*/

/**
* @ignore
*/
if (!defined('IN_PHPBB'))
{
	exit;
}

class portal_gumbo_intro_advertisement_module
{

	/**
	* Allowed columns: Just sum up your options (Exp: left + right = 10)
	* top		1
	* left		2
	* center	4
	* right		8
	* bottom	16
	*/
	public $columns = 20;

	/**
	* Default modulename
	*/
	public $name = 'GUMBO_INTRO_ADVERTISEMENT';

	/**
	* Default module-image:
	* file must be in "{T_THEME_PATH}/images/portal/"
	*/
	public $image_src = '';

	/**
	* module-language file
	* file must be in "language/{$user->lang}/mods/portal/"
	*/
	public $language = 'portal_gumbo_into_advertisement';

	/**
	* custom acp template
	* file must be in "adm/style/portal/"
	*/
	public $custom_acp_tpl = '';

	{
		global $config, $template, $db, $user, $auth, $cache, $phpEx, $phpbb_root_path;
	public function get_template_center($module_id)
		
		$post_id = intval($config['portal_gumbo_intro_advertisement_post_id_' . $module_id]);
		$sql = 'SELECT post_text, bbcode_uid, bbcode_bitfield, enable_bbcode, enable_smilies, enable_magic_url  FROM ' . POSTS_TABLE . ' AS p WHERE post_id = '.$post_id;
		$result = $db->sql_query_limit($sql, 1, 0, 3600);
		$row = $db->sql_fetchrow($result);
		if ( is_array($row) )
		{  
			$template->assign_var('INTRO_POST_AVAILABLE', true);
			$post_text = $row['post_text'];
			$images = get_images_data($post_text, $row['bbcode_uid'], true);
			if (count($images) >= 1) {
				$template->assign_vars(array(
					'P_INTRO_IMAGE_URL'	=> html_entity_decode($images[0]["URL"]),
					'P_INTRO_LINK'	=> html_entity_decode($images[0]["LINK"]),
				));
			}

			$options = 	(($row['enable_bbcode']) ? OPTION_FLAG_BBCODE : 0) +
				(($row['enable_smilies']) ? OPTION_FLAG_SMILIES : 0) + 
				(($row['enable_magic_url']) ? OPTION_FLAG_LINKS : 0);
			$post_text = generate_text_for_display($post_text, $row['bbcode_uid'], $row['bbcode_bitfield'], $options);
			$pattern = "/\[title\](.*)\[\/title\]/";
			preg_match($pattern, $post_text, $matches);
			$post_title = $matches[1];
			$post_text = preg_replace($pattern, "", $post_text);
			
			$template->assign_vars(array(
				'P_INTRO_TITEL'	=> $post_title,
				'P_INTRO_TEXT'	=> $post_text,
			));
		}
		else
		{
			$template->assign_var('INTRO_POST_AVAILABLE', false);
		}
		$db->sql_freeresult($result);	

		return 'gumbo_intro_advertisement_center.html';
	}

	public function get_template_acp($module_id)
	{
		return array(
			'title'	=> 'PORTAL_GUMBO_EVENTS',
			'vars'	=> array(
				'legend1'							=> 'ACP_PORTAL_GUMBO_INTRO_ADVERTISEMENT_SETTINGS',
				'portal_gumbo_intro_advertisement_post_id_' . $module_id			=> array('lang' => 'ACP_PORTAL_GUMBO_INTRO_ADV_POST_ID'		 ,	'validate' => 'INT',		'type' => 'text:10:10',		 'explain' => true),
			),
		);
	}

	/**
	* API functions
	*/
	public function install($module_id)
	{
		set_config('portal_gumbo_intro_advertisement_post_id_' . $module_id, 10);
		return true;
	}

	public function uninstall($module_id)
	{
		global $db;

		$del_config = array(
			'portal_gumbo_intro_advertisement_post_id_' . $module_id,
		);
		$sql = 'DELETE FROM ' . CONFIG_TABLE . '
			WHERE ' . $db->sql_in_set('config_name', $del_config);
		return $db->sql_query($sql);
	}

}
