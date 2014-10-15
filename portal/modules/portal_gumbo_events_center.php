<?php
/**
*
* @package Board3 Portal v2 - Recent
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
* @package gumbo_events
*/
class portal_gumbo_events_center_module
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
	public $name = 'GUMBO_EVENTS';

	/**
	* Default module-image:
	* file must be in "{T_THEME_PATH}/images/portal/"
	*/
	public $image_src = '';

	/**
	* module-language file
	* file must be in "language/{$user->lang}/mods/portal/"
	*/
	public $language = 'portal_gumbo_events_module';

	/**
	* custom acp template
	* file must be in "adm/style/portal/"
	*/
	public $custom_acp_tpl = '';

	private $local_events_list;
	private $activity_controller;

	private function get_event_list($module_id){
		global $config, $user,  $phpEx, $phpbb_root_path, $activities_handler;

		
		if (empty($this->local_events_list)) {

			include_once($phpbb_root_path . 'common.' . $phpEx);
			include_once($phpbb_root_path . 'includes/functions_user.' . $phpEx);
			include_once($phpbb_root_path . 'includes/functions_display.' . $phpEx);
			include_once($phpbb_root_path . 'dc/dc_activities_handler.' . $phpEx);
			include_once($phpbb_root_path . 'dc/dc_activity_class.' . $phpEx);
			include_once($phpbb_root_path . 'includes/functions_messenger.' . $phpEx);
			$user->add_lang('mods/dc_activity');
			
        	$this->activity_controller = $activities_handler;

			$search_parameters = NULL;

			// check if reeded events is needed 
			if(intval($user->data['user_id']) > 1){
				
				$search_parameters = array(
					USER_READED 		=> TRUE,
					MANAGERS_GROUPS		=> FALSE,
				);
			}

			$this->local_events_list = $this->activity_controller->get_user_activities( intval($user->data['user_id']), USER_ACCESS, FUTURE_ACTIVE, $search_parameters, START_DATETIME, ASC, intval($config['portal_gumbo_events_max_' . $module_id]));
		}
		return $this->local_events_list;
	}

	public function get_template_center($module_id)
	{
		global  $template, $user, $phpEx, $phpbb_root_path;

		$events_list = $this->get_event_list($module_id);
		
		if($events_list != NULL){
			$template->assign_var('LIST_AVAILABLE', true);
			$row_count = 1;
			$group_name_ary = array();
			foreach($events_list AS $index => $activity){
				
				if(!isset($group_name_ary[$activity->getCommission()])){
					$group_name_ary[$activity->getCommission()] = get_group_name($activity->getCommission());
				}
				
				$template->assign_block_vars('activity', array(
					'NAME'    					=> $activity->getName(),
					'ACT_LINK'   				=>  append_sid($phpbb_root_path.'dc/dc_activity.'.$phpEx, "act=" . $activity->getId()),
					'COMMISSION'    			=>  $group_name_ary[$activity->getCommission()],
					'START_DAY' 				=>  $user->format_date( $activity->getStartDatetime()->getTimestamp(), 'j'),
					'START_MONTH' 				=>  $user->format_date( $activity->getStartDatetime()->getTimestamp(), 'M'),
					'START_DATE_TIME' 			=>  $user->format_date( $activity->getStartDatetime()->getTimestamp()),
					'ENROLLED'  				=>  $activity->getAmountEnrolledUser(),
					'READED'					=> 	((intval($user->data['user_id']) == 1 ) ? TRUE : $activity->get_read(intval($user->data['user_id']))), 	
					'PREVIEW'					=> 	$activity->getDescription_preview(5 , FALSE, FALSE, TRUE, FALSE, FALSE), 	
					'S_ROW_COUNT'    			=>  $row_count,
				));



				foreach (get_images_data($activity->getDescription_raw(), $activity->getUID(), FALSE) as $img_id => $img_data)
			    {
			        $template->assign_block_vars('activity.imgs', array(
			            'URL'        => $img_data["URL"]
			        ));
			    }

				$row_count++;
			}
		}else{
			$template->assign_var('LIST_AVAILABLE', false);
		}

		$template->assign_var('URL_ACTIVITIES_LIST',  append_sid($phpbb_root_path.'dc/dc_activity_list.'.$phpEx));
		$template->assign_var('LANG_ACTIVITY',  $user->lang['DC_ACT']);

		return 'gumbo_events_center.html';
	}

	public function get_template_acp($module_id)
	{
		return array(
			'title'	=> 'PORTAL_GUMBO_EVENTS',
			'vars'	=> array(
				'legend1'							=> 'ACP_PORTAL_GUMBO_EVENTS_SETTINGS',
				'portal_gumbo_events_max_' . $module_id			=> array('lang' => 'ACP_PORTAL_GUBMO_EVENTS_MAX'		 ,	'validate' => 'INT',		'type' => 'text:3:3',		 'explain' => true),
			),
		);
	}

	/**
	* API functions
	*/
	public function install($module_id)
	{
		set_config('portal_gumbo_events_max_' . $module_id, 10);
		return true;
	}

	public function uninstall($module_id)
	{
		global $db;

		$del_config = array(
			'portal_gumbo_events_max_' . $module_id,
		);
		$sql = 'DELETE FROM ' . CONFIG_TABLE . '
			WHERE ' . $db->sql_in_set('config_name', $del_config);
		return $db->sql_query($sql);
	}

}
