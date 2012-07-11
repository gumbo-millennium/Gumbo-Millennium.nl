<?php
include ($phpbb_root_path . 'dc/dc_activity_user_class.' . $phpEx);
include ($phpbb_root_path . 'dc/dc_activity_class.' . $phpEx);
include ($phpbb_root_path . '/includes/functions_posting.' . $phpEx);
class acp_dc_activity_management
{
   var $u_action;
   var $new_config;
   function main($id, $mode)
   {
      global $db, $user, $auth, $template;
		global $config, $phpbb_root_path, $phpbb_admin_path, $phpEx;
		global $cache;

		$user->add_lang('mods/dc_activity');
		$user->add_lang(array('posting','acp/board'));

		$action	= request_var('action', '');
		$submit = (isset($_POST['submit'])) ? true : false;
		$activitys_controller = new activity_user();
		
		/**
		*	Validation types are:
		*		string, int, bool,
		*		script_path (absolute path in url - beginning with / and no trailing slash),
		*		rpath (relative), rwpath (realtive, writable), path (relative path, but able to escape the root), wpath (writable)
		*/
		
      switch($mode)
      {
		case 'edit_event':
        case 'new_event':
			// set form key
			$form_key = 'acp_dc_act_new';
			add_form_key($form_key);
			
			if (!function_exists('generate_smilies'))
			{
				include_once($phpbb_root_path . 'includes/functions_posting.' . $phpEx);
			}

			if (!function_exists('display_custom_bbcodes'))
			{
				include_once($phpbb_root_path . 'includes/functions_display.' . $phpEx);
			}
			
			$display_vars = array(
					'title'	=> 'ACP_ACTIVITY_NEW',
					'vars'	=> array(				
						'legend1'				=> 'GENERAL_SETTINGS',		
						
						'name'					=> array('lang' => 'ACP_DC_ACT_NAME',			'validate' => 'string',	'type' => 'text:20:50', 'explain' => true),
						'start_date'			=> array('lang' => 'ACP_DC_ACT_START_DATE',		'validate' => 'string',	'type' => 'text:10:10', 'explain' => true, 'append'  => '<br>(DD-MM-YYYY)'),
						'start_time'			=> array('lang' => 'ACP_DC_ACT_START_TIME',		'validate' => 'string',	'type' => 'text:10:8', 'explain' => true, 'append'  => '<br>(HH:MM:SS)'),
						
						'end_date'				=> array('lang' => 'ACP_DC_ACT_END_DATE',		'validate' => 'string',	'type' => 'text:10:10', 'explain' => true, 'append'  => '<br>(DD-MM-YYYY)'),
						'end_time'				=> array('lang' => 'ACP_DC_ACT_END_TIME',		'validate' => 'string',	'type' => 'text:10:8', 'explain' => true, 'append'  => '<br>(HH:MM:SS)'),
						
						'enroll'				=> array('lang' => 'ACP_DC_ACT_ENROL',			'validate' => 'bool',	'type' => 'radio:yes_no', 'explain' => true),
						'location'				=> array('lang' => 'ACP_DC_ACT_LOCATION',		'validate' => 'string',	'type' => 'textarea:2:2', 'explain' => true),
						'pay_option'			=> array('lang' => 'ACP_DC_ACT_PAY_OPTION',		'validate' => 'int',	'type' => 'select', 'method' => 'apc_pay_options', 'explain' => true),
						
						'legend2'				=> 'OPTIONAL_SETTINGS',
						'enroll_date'			=> array('lang' => 'ACP_DC_ACT_ENROLL_DATE',		'validate' => 'string',	'type' => 'text:10:10', 'explain' => true, 'append'  => '<br>(DD-MM-YYYY)'),
						'enroll_time'			=> array('lang' => 'ACP_DC_ACT_ENROLL_TIME',		'validate' => 'string',	'type' => 'text:10:8', 'explain' => true, 'append'  => '<br>(HH:MM:SS)'),
						'price'					=> array('lang' => 'ACP_DC_ACT_PRICE',				'validate' => 'string',	'type' => 'text:10:8', 'explain' => true, 'append' => ' euro'),
						'price_member'			=> array('lang' => 'ACP_DC_ACT_PRICE_MEMBER',				'validate' => 'string',	'type' => 'text:10:8', 'explain' => true, 'append' => ' euro'),
						
						'legend3'				=> 'ACP_DC_ACT_DESCRIPTION',
						'description'			=> array('lang' => 'ACP_DC_ACT_DESCRIPTION','validate' => 'string',	'type' => 'custom', 'method' => 'acp_description', 'explain' => true),
												
					)
				);
				
				// Description is custom made because of the bbcode and smilies
				$template->assign_var('DESCRIPTION', 'description');			
				
				// Generate smilies on inline displaying
				generate_smilies('inline', '');

				// Assigning custom bbcode
				display_custom_bbcodes();
				
				$this->tpl_name = 'dc/acp_dc_activity_new';
				break;
			

		 case 'overview':
            $this->page_title = 'Overview';
            $this->tpl_name = 'dc/acp_dc_activity_overview';
            break;
		case 'find_user_events':
            $this->page_title = 'Find user events';
            $this->tpl_name = 'dc/acp_dc_activity_find_all_user_events';
            break;
		case 'users_not_paid':
            $this->page_title = 'Users not paid';
            $this->tpl_name = 'dc/acp_dc_activity_users_not_paid';
            break;
		case 'chance_user_payment':
            $this->page_title = 'Chance user payment';
            $this->tpl_name = 'dc/acp_dc_activity_chance_user_payment';
            break;
		
      }
	  
		if (isset($display_vars['lang']))
		{
			$user->add_lang($display_vars['lang']);
		}

		$cfg_array = utf8_normalize_nfc(request_var('config', array('' => ''), true));
		$error = array();
		
		
		// We validate the complete config if whished
		validate_config_vars($display_vars['vars'], $cfg_array, $error);
		
		$submit = false;
		$error[] = "te veel henk";
		$error[] = "te veel iemand anders";
		
		if ($submit && !check_form_key($form_key))
		{
			$error[] = $user->lang['FORM_INVALID'];
		}
		// Do not write values if there is an error
		if (sizeof($error))
		{
			$submit = false;
		}

		// We go through the display_vars to make sure no one is trying to set variables he/she is not allowed to...
		foreach ($display_vars['vars'] as $config_name => $null)
		{
			if (!isset($cfg_array[$config_name]) || strpos($config_name, 'legend') !== false)
			{
				continue;
			}

			$this->new_config[$config_name] = $config_value = $cfg_array[$config_name];

			if ($config_name == 'email_function_name')
			{
				$this->new_config['email_function_name'] = trim(str_replace(array('(', ')'), array('', ''), $this->new_config['email_function_name']));
				$this->new_config['email_function_name'] = (empty($this->new_config['email_function_name']) || !function_exists($this->new_config['email_function_name'])) ? 'mail' : $this->new_config['email_function_name'];
				$config_value = $this->new_config['email_function_name'];
			}

			// save value
			if ($submit)
			{
				//var_dump($null);
				
			}
			
		}

		// send succesfull update
		if ($submit)
		{
			var_dump($cfg_array);
			var_dump($error);
			
			//add_log('admin', 'LOG_CONFIG_' . strtoupper($mode));

			trigger_error($user->lang['CONFIG_UPDATED'] . adm_back_link($this->u_action));
		}

		$this->page_title = $display_vars['title'];

		$template->assign_vars(array(
			'L_TITLE'			=> $user->lang[$display_vars['title']],
			'L_TITLE_EXPLAIN'	=> $user->lang[$display_vars['title'] . '_EXPLAIN'],

			'S_ERROR'			=> (sizeof($error)) ? true : false,
			'ERROR_MSG'			=> implode('<br />', $error),

			'S_MODE'			=> $mode,
			'U_ACTION'			=> $this->u_action,
			'SUBMIT'			=> $user->lang['ACP_SUBMIT_CHANGES'])
		);

		// Output relevant page
		foreach ($display_vars['vars'] as $config_key => $vars)
		{
			if (!is_array($vars) && strpos($config_key, 'legend') === false)
			{
				continue;
			}

			if (strpos($config_key, 'legend') !== false)
			{
				$template->assign_block_vars('options', array(
					'S_LEGEND'		=> true,
					'LEGEND'		=> (isset($user->lang[$vars])) ? $user->lang[$vars] : $vars)
				);

				continue;
			}

			$type = explode(':', $vars['type']);

			$l_explain = '';
			if ($vars['explain'] && isset($vars['lang_explain']))
			{
				$l_explain = (isset($user->lang[$vars['lang_explain']])) ? $user->lang[$vars['lang_explain']] : $vars['lang_explain'];
			}
			else if ($vars['explain'])
			{
				$l_explain = (isset($user->lang[$vars['lang'] . '_EXPLAIN'])) ? $user->lang[$vars['lang'] . '_EXPLAIN'] : '';
			}

			$content = build_cfg_template($type, $config_key, $this->new_config, $config_key, $vars);

			if (empty($content))
			{
				continue;
			}

			$template->assign_block_vars('options', array(
				'KEY'			=> $config_key,
				'TITLE'			=> (isset($user->lang[$vars['lang']])) ? $user->lang[$vars['lang']] : $vars['lang'],
				'S_EXPLAIN'		=> $vars['explain'],
				'TITLE_EXPLAIN'	=> $l_explain,
				'CONTENT'		=> $content,
				)
			);

			unset($display_vars['vars'][$config_key]);
		}

   }
   // make dropdown box for payment options: chash or iDeal
   function apc_pay_options($value){
		global $user;
		
		$options = '<option value="1"' . (($value == 1) ? ' selected="selected"' : '') . '>' . $user->lang['CASH'] . '</option>';
		$options .= '<option value="2"' . (($value == 1) ? ' selected="selected"' : '') . '>' . $user->lang['IDEAL'] . '</option>';
		
		return $options;
   }
  
   function acp_description($value, $key){
		return '<textarea id="'.$key.'" cols="6" rows="20" name="config['.$key.']"  onselect="storeCaret(this);" onclick="storeCaret(this);" onkeyup="storeCaret(this);" >'.$value.'</textarea>';
   }
}
?>