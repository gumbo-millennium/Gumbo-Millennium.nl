<?php

/**
*
* @package phpBB3
* @version $Id$
* @athor: Gerco Versloot
* @date: 6 - 8 - 2012
* @license http://opensource.org/licenses/gpl-license.php GNU Public License
* @Gumbo millennium
*/

/**
* @ignore
*/
// set defines
define("GROUP_SEPARATOR", ",");											// separator for selecting groups
define("EXCLUDE_PRE_DEFINED_GROUPS", serialize(array(3)));				// exclude pre definde (like ADMINISTRATORS) groups for selecting the making commission ,groups by id: 9: leden, 10: oud leden, 11: A-leden 
define("EXCLUDE_GROUPS_COMMISSION", serialize(array(9, 10, 11)));		// exclude groups for selecting the making commission ,groups by id: 9: leden, 10: oud leden, 11: A-leden 

// include functions
include ($phpbb_root_path . 'dc/dc_activity_user_class.' . $phpEx);
include ($phpbb_root_path . 'dc/dc_activity_class.' . $phpEx);
include_once($phpbb_root_path . '/includes/functions_posting.' . $phpEx);
include_once($phpbb_root_path . 'dc/dc_activity_class.' . $phpEx);
include_once($phpbb_root_path . 'includes/functions_convert.' . $phpEx);
include_once($phpbb_root_path . 'includes/functions_user.' . $phpEx);
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
						
						'name'					=> array('lang' => 'ACP_DC_ACT_NAME',			'validate' => 'string',	'type' => 'text:20:50', 'empty' => false, 'explain' => true, 'preg'=> '[^a-zA-Z0-9 ]'),
						'start_date'			=> array('lang' => 'ACP_DC_ACT_START_DATE',		'validate' => 'string',	'type' => 'text:10:10', 'empty' => false, 'explain' => true, 'append'  => '<br>(DD-MM-YYYY)', 'preg'=> '[^0-9-]', 'patern' => array( 'type' => 'date' ,'format' =>'D-M-YYYY')),
						'start_time'			=> array('lang' => 'ACP_DC_ACT_START_TIME',		'validate' => 'string',	'type' => 'text:10:8',  'empty' => false, 'explain' => true, 'append'  => '<br>(HH:MM:SS)', 'preg'=> '[^0-9:]', 'patern' => array( 'type' => 'time')),
						
						'end_date'				=> array('lang' => 'ACP_DC_ACT_END_DATE',		'validate' => 'string',	'type' => 'text:10:10', 'empty' => false, 'explain' => true, 'append'  => '<br>(DD-MM-YYYY)', 'patern' => array( 'type' => 'date' ,'format' =>'D-M-YYYY')), 
						'end_time'				=> array('lang' => 'ACP_DC_ACT_END_TIME',		'validate' => 'string',	'type' => 'text:10:8',  'empty' => false, 'explain' => true, 'append'  => '<br>(HH:MM:SS)', 'preg'=> '[^0-9:]', 'patern' => array( 'type' => 'time')), 
						
						'enroll'				=> array('lang' => 'ACP_DC_ACT_ENROL',			'validate' => 'string',	'type' => 'custom', 'empty' => false, 'method' => 'apc_enroll', 'explain' => true , 'preg'=> '[^(yes)||(no)]'),
						'location'				=> array('lang' => 'ACP_DC_ACT_LOCATION',		'validate' => 'string',	'type' => 'textarea:2:2', 'empty' => false, 'explain' => true, 'preg'=> '[^a-zA-Z0-9, ]'),
						'pay_option'			=> array('lang' => 'ACP_DC_ACT_PAY_OPTION',		'validate' => 'string',	'type' => 'select', 'empty' => false,'method' => 'apc_pay_options', 'explain' => false, 'preg'=> '[^(cash)|(iDeal)]'),
						'commission'			=> array('lang' => 'ACP_DC_ACT_COMMISSION',		'validate' => 'int',	'type' => 'select', 'empty' => false, 'method' => 'apc_commission', 'explain' => true, 'preg'=> '[^0-9]'),
						
						'legend2'				=> 'OPTIONAL_SETTINGS',
						'enroll_date'			=> array('lang' => 'ACP_DC_ACT_ENROLL_DATE',	'validate' => 'string',	'type' => 'text:10:10','empty' => true, 'explain' => true, 'append'  => '<br>(DD-MM-YYYY)', 'preg'=> '[^0-9-]' , 'patern' => array( 'type' => 'date' ,'format' =>'D-M-YYYY')),
						'enroll_time'			=> array('lang' => 'ACP_DC_ACT_ENROLL_TIME',	'validate' => 'string',	'type' => 'text:10:8', 'empty' => true, 'explain' => true, 'append'  => '<br>(HH:MM:SS)' , 'preg'=> '[^0-9:]' , 'patern' => array( 'type' => 'time')),
						'enroll_max'			=> array('lang' => 'ACP_DC_ACT_ENROLL_MAX',		'validate' => 'int',	'type' => 'text:10:8', 'empty' => true, 'explain' => true, 'preg'=> '[^0-9]'),
						'price'					=> array('lang' => 'ACP_DC_ACT_PRICE',			'validate' => 'string',	'type' => 'text:10:8', 'empty' => true, 'explain' => true, 'append' => ' euro', 'preg'=> '[^0-9,]',  'patern' => array( 'type' => 'money')),
						'price_member'			=> array('lang' => 'ACP_DC_ACT_PRICE_MEMBER',	'validate' => 'string',	'type' => 'text:10:8', 'empty' => true, 'explain' => true, 'append' => ' euro', 'preg'=> '[^0-9,]',  'patern' => array( 'type' => 'money')),
						
						'legend3'				=> 'ACP_DC_ACT_ACCES',
						'add_manager'			=> array('lang' => 'ACP_DC_ACT_ADD_MANAGER',		'validate' => 'string',	'type' => 'custom', 'empty' => true, 'method' => 'select_user', 'explain' => true, 'preg'=> '[^a-zA-Z]'),
						'add_group'				=> array('lang' => 'ACP_DC_ACT_ADD_GROUP',			'validate' => 'string',	'type' => 'custom', 'empty' => false, 'method' => 'select_group', 'explain' => true, 'preg'=> '[<>]'),
						
						'legend4'				=> 'ACP_DC_ACT_DESCRIPTION',
						'description'			=> array('lang' => 'ACP_DC_ACT_DESCRIPTION','validate' => 'string',	'type' => 'custom', 'empty' => false, 'method' => 'acp_description', 'explain' => true),
												
					)
				);
				
				// Description is custom made because of the bbcode and smilies
				$template->assign_var('DESCRIPTION', 'description');							
				
				// Generate smilies on inline displaying
				generate_smilies('inline', $form_key);

				// Assigning custom bbcode
				display_custom_bbcodes();
				
				$this->tpl_name = 'dc/acp_dc_activity_new';
				break;
			

		 case 'overview':
		 
			$mode2 = 'admin';
			$user->add_lang('mcp');

			// Set up general vars
			$action		= request_var('action', '');
			$forum_id	= request_var('f', 0);
			$topic_id	= request_var('t', 0);
			$start		= request_var('start', 0);
			$deletemark = (!empty($_POST['delmarked'])) ? true : false;
			$deleteall	= (!empty($_POST['delall'])) ? true : false;
			$marked		= request_var('mark', array(0));

			// Sort keys
			$sort_days	= request_var('st', 0);
			$sort_key	= request_var('sk', 't');
			$sort_dir	= request_var('sd', 'd');

			$this->page_title = $user->lang['OVERVIEW'];
            $this->tpl_name = 'dc/acp_dc_activity_overview';
			$this->log_type = constant('LOG_ADMIN');
			//$this->log_type = constant('LOG_' . strtoupper($mode2));

			// Delete entries if requested and able
			if (($deletemark || $deleteall) && $auth->acl_get('a_clearlogs'))
			{
				if (confirm_box(true))
				{
					$where_sql = '';

					if ($deletemark && sizeof($marked))
					{
						$sql_in = array();
						foreach ($marked as $mark)
						{
							$sql_in[] = $mark;
						}
						$where_sql = ' AND ' . $db->sql_in_set('log_id', $sql_in);
						unset($sql_in);
					}

					if ($where_sql || $deleteall)
					{
						$sql = 'DELETE FROM ' . LOG_TABLE . "
							WHERE log_type = {$this->log_type}
							$where_sql";
						$db->sql_query($sql);

						add_log('admin', 'LOG_CLEAR_' . strtoupper($mode2));
					}
				}
				else
				{
					confirm_box(false, $user->lang['CONFIRM_OPERATION'], build_hidden_fields(array(
						'f'			=> $forum_id,
						'start'		=> $start,
						'delmarked'	=> $deletemark,
						'delall'	=> $deleteall,
						'mark'		=> $marked,
						'st'		=> $sort_days,
						'sk'		=> $sort_key,
						'sd'		=> $sort_dir,
						'i'			=> $id,
						'mode'		=> $mode2,
						'action'	=> $action))
					);
				}
			}

			// Sorting
			$limit_days = array(0 => $user->lang['ALL_ENTRIES'], 1 => $user->lang['1_DAY'], 7 => $user->lang['7_DAYS'], 14 => $user->lang['2_WEEKS'], 30 => $user->lang['1_MONTH'], 90 => $user->lang['3_MONTHS'], 180 => $user->lang['6_MONTHS'], 365 => $user->lang['1_YEAR']);
			$sort_by_text = array('u' => $user->lang['SORT_USERNAME'], 't' => $user->lang['SORT_DATE'], 'i' => $user->lang['SORT_IP'], 'o' => $user->lang['SORT_ACTION']);
			$sort_by_sql = array('u' => 'u.username_clean', 't' => 'l.log_time', 'i' => 'l.log_ip', 'o' => 'l.log_operation');

			$s_limit_days = $s_sort_key = $s_sort_dir = $u_sort_param = '';
			gen_sort_selects($limit_days, $sort_by_text, $sort_days, $sort_key, $sort_dir, $s_limit_days, $s_sort_key, $s_sort_dir, $u_sort_param);

			// Define where and sort sql for use in displaying logs
			$sql_where = ($sort_days) ? (time() - ($sort_days * 86400)) : 0;
			$sql_sort = $sort_by_sql[$sort_key] . ' ' . (($sort_dir == 'd') ? 'DESC' : 'ASC');

			$keywords = utf8_normalize_nfc(request_var('keywords', '', true));
			$keywords_param = !empty($keywords) ? '&amp;keywords=' . urlencode(htmlspecialchars_decode($keywords)) : '';

			$l_title = $user->lang['OVERVIEW'];
			$l_title_explain = $user->lang['ACP_ADMIN_LOGS_EXPLAIN'];	
			
			//$l_title = $user->lang['ACP_' . strtoupper($mode2) . '_LOGS'];
			//$l_title_explain = $user->lang['ACP_' . strtoupper($mode2) . '_LOGS_EXPLAIN'];

			$this->page_title = $l_title;

			// Define forum list if we're looking @ mod logs
			if ($mode2 == 'mod')
			{
				$forum_box = '<option value="0">' . $user->lang['ALL_FORUMS'] . '</option>' . make_forum_select($forum_id);
				
				$template->assign_vars(array(
					'S_SHOW_FORUMS'			=> true,
					'S_FORUM_BOX'			=> $forum_box)
				);
			}
			
			// Grab log data
			$log_data = array();
			$log_count = 0;
			$start = view_log($mode2, $log_data, $log_count, $config['topics_per_page'], $start, $forum_id, 0, 0, $sql_where, $sql_sort, $keywords);
			
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
		if(isset($display_vars['vars'])){
			validate_config_vars($display_vars['vars'], $cfg_array, $error);
		}
		
		
		if ($submit && !check_form_key($form_key))
		{
			$error[] = $user->lang['FORM_INVALID'];
		}
		
		///// AS INPUT IS A FORM ////
		
		// check default the input for a form
		if($submit && isset($display_vars)){
			foreach($display_vars['vars'] as $config_name => $vars){
			
				// check all vars that are not allowd to be empty
				if((empty($cfg_array[$config_name]) && !$vars['empty'])){
					$error[] = ucfirst(strtolower(($user->lang[$vars['lang']]." ". $user->lang["NOT_EMPTY"])));
				}
				
				// check for forbidden chars
				if(is_array($vars) && isset($vars['preg'])){ 				// isset formidden chars
					if(preg_match("/".$vars['preg']."/", $cfg_array[$config_name]) && !(empty($cfg_array[$config_name]) && $vars['empty'])) // check input or input is empty (and allowed to be emty)
						$error[] = ucfirst(strtolower(($user->lang[$vars['lang']]." ". $user->lang["NOT_PREG"])));		// set error
				}
				
				// check for paterns
				// available paterns: date, time
				if(is_array($vars) && isset($vars['patern']) ){				// is set a patern
					if(!(empty($cfg_array[$config_name]) && $vars['empty'])){	// check if input is emty and allowed to be empty 
						$set_error = false;									// set no error
						switch($vars['patern']['type']){
							case 'date':									// if patern is a date
								if(!valid_date($cfg_array[$config_name], $vars['patern']['format'])) // check input
									$set_error = true;						// set error
								break;
							case 'time':									// if patern is a time
								if(!valid_time($cfg_array[$config_name]))	// check input
									$set_error = true;						// set error
								break;
							case 'money':									// if patern is money
								if(!preg_match("/\d+(,\d{2}$)?$/",$cfg_array[$config_name])){ // check input
									$set_error = true;						// set error
								}
								break;
						}
						
						if($set_error)										// error found
							$error[] = ucfirst(strtolower($user->lang[$vars['lang']] .' '. $user->lang['WRONG_FORMAT'])); // set output error
					}
				}
			}
		}
		
		////// MODE SPECIFIC INPUT CHECK /////
		
		// mode  = new_event
		if($mode = "new_event" && $submit){
			
			//check enroll
			$enroll = true;
			switch($cfg_array["enroll"]){
				case 'yes':
					$enroll = true;
					break;
				case 'no':
					$enroll = false; 
					break;
				default:
					$error[] = ucfirst(strtolower($user->lang[$display_vars['vars']['enroll']['lang']] . $user->lang["UNVALID"]));
			}
			
			// check payment
			switch($cfg_array["pay_option"]){
				case "cash":
				case "iDeal":
					break;
				default:
					$error[] = ucfirst(strtolower($user->lang[$display_vars['vars']['pay_option']['lang']] . $user->lang["UNVALID"]));
			}
			
			// check commission
			$sql = "SELECT COUNT(g.group_id)
				FROM " . GROUPS_TABLE . " g
				WHERE ". $db->sql_in_set('g.group_id', $cfg_array["commission"], false, false) ."
				AND ". $db->sql_in_set('g.group_id', unserialize(EXCLUDE_GROUPS_COMMISSION), true, false)."
				AND ". $db->sql_in_set('g.group_type', unserialize(EXCLUDE_PRE_DEFINED_GROUPS), true, false);
			$result = $db->sql_query($sql);
			if(!$result){ 	// no commission found
				$error[] = ucfirst(strtolower($user->lang[$display_vars['vars']['commission']['lang']] . $user->lang["UNVALID"]));
			}
			
			//check if all users exists
			if(!empty($cfg_array["add_manager"])){
				$managers_name_input = array_unique(explode("\n", $cfg_array["add_manager"]));
				$managers_id = array();
				user_get_id_name($managers_id ,$managers_name_input, false);
				
				if(!(count($managers_id) == count($managers_name_input))){
					$error[] = ucfirst(strtolower( $user->lang['USERNAMES']." ".$user->lang['NOT_FOUND'])) ;
				}

				
			}
			
			//check if all groups exists
			if(!empty($cfg_array["add_group"])){
				$groups = array_unique(explode(GROUP_SEPARATOR, $cfg_array["add_group"])); // split array by the separator
				foreach($groups as $key => $group_name_input){
					$groups[$key] = trim($groups[$key]);
					$group_name_db = ($temp =array_search($groups[$key], $user->lang)) ? preg_replace("/G_/", "", $temp) : $group_name_input;
					$groups_save[trim($group_name_db)] = $groups[$key];
					$groups[$key] = trim($group_name_db);					
				}
				$groups_id_valid = array();									// array for all validated groupnames
				$sql_array = array(
					'SELECT'    => 'g.group_id AS group_id, g.group_name as group_name',

					'FROM'      => array(
						GROUPS_TABLE => 'g',
					),

					'WHERE'     =>  $db->sql_in_set('g.group_name', $groups),
				);

				$sql = $db->sql_build_query('SELECT', $sql_array);

				// Run the built query statement
				$result = $db->sql_query($sql);
				while($valid_groups = $db->sql_fetchrow($result)){
					$groups_id_valid[] = intval($valid_groups['group_id']);
					unset($groups_save[$valid_groups['group_name']]); 
				}
				
				if(count($groups_save) > 0){
					foreach($groups_save as $group_name_db => $group_name_input){
						$error[] = ucfirst(strtolower($group_name_input ." ". $user->lang['GROUP'] ." ". $user->lang['NOT_FOUND'])) ;
					}
				}
				$db->sql_freeresult($result);
				
			}
			
			// combine some vars and check it.
			if(count($error) == 0){
				$timezone = new DateTimeZone(date_default_timezone_get());			// get current timezone
				$start_date_time = new DateTime($cfg_array['start_date'] ." ".  $cfg_array['start_time'], $timezone);		// set start date + time
				$end_date_time = new DateTime($cfg_array['end_date'] ." ".  $cfg_array['end_time'], $timezone);				// set end date + time
				// check if start date+time  > now
				if(new DateTime("now") > $start_date_time)
					$error[] = ucfirst(strtolower(
						$user->lang[$display_vars['vars']['start_date']['lang']] ." ". $user->lang['AND'] ." ". $user->lang[$display_vars['vars']['start_time']['lang']] 
						." ". $user->lang["CANT_PAST"]
					));
				// check if end date+time is later than start date+time
				if( $end_date_time < $start_date_time ){
					$error[] = ucfirst(strtolower(
							$user->lang[$display_vars['vars']['end_date']['lang']] ." ". $user->lang['AND'] ." ". $user->lang[$display_vars['vars']['end_time']['lang']]
							 ." ".$user->lang["CANT_LATER"]." ".
							$user->lang[$display_vars['vars']['start_date']['lang']] ." ". $user->lang['AND'] ." ". $user->lang[$display_vars['vars']['start_time']['lang']] 
						)); // set error
				}
				//check if enroll date/time > start date/time 
				if(!empty($cfg_array['enroll_date'])){					// date empty
					$end_date_time_input = $cfg_array['enroll_date'];	// get input
					$end_date_time_input .= (!empty($cfg_array['enroll_time'])) ? " ". $cfg_array['enroll_time'] : " 23:59:59"; // if time is empty
					$enroll_date_time = new DateTime($end_date_time_input, $timezone);	// make a datetime object
					if($enroll_date_time > $start_date_time)			// check if enroll date+time > start date+time
						$error[] = ucfirst(strtolower(
							$user->lang[$display_vars['vars']['enroll_date']['lang']] ." ". $user->lang['AND'] ." ". $user->lang[$display_vars['vars']['enroll_time']['lang']]
							 ." ".$user->lang["CANT_LATER"]." ".
							$user->lang[$display_vars['vars']['start_date']['lang']] ." ". $user->lang['AND'] ." ". $user->lang[$display_vars['vars']['start_time']['lang']] 
						)); // set error
				}else{
					$enroll_date_time = $start_date_time;
				}
			}
		}
		// end mode = new_event
		
		// Do not write values if there is an error
		if (sizeof($error))
		{
			$submit = false;
		}
		
		// save the vars
		if(isset($display_vars['vars'])){
			foreach ($display_vars['vars'] as $config_name => $null)
			{
				if (!isset($cfg_array[$config_name]) || strpos($config_name, 'legend') !== false)
				{
					continue;
				}

				$this->new_config[$config_name] = $config_value = $cfg_array[$config_name];			
			}
		}
		
		// send succesfull update
		if ($submit)
		{
			switch($mode){
			case 'new_event':
				$activity = new activity();
				$activity->setName($cfg_array['name']);
				$activity->setDescription($cfg_array['description']);
				$activity->setStartDatetime($start_date_time);
				$activity->setEndDatetime($end_date_time);
				$activity->setEnroll($enroll);
				$activity->setEnrollDateTime($enroll_date_time);
				$activity->setEnrollMax($cfg_array['enroll_max']);
				$activity->setPrice($cfg_array['price']);
				$activity->setPriceMember($cfg_array['price_member']);
				$activity->setLocation($cfg_array['location']);
				$activity->setPayOption($cfg_array['pay_option']);
				$activity->setCommission($cfg_array['commission']);
				if($activity->save()){				// save new activity and check if saving is done
					// set managers
					if(isset($managers_id)  && count($managers_id) > 0){
						foreach($managers_id AS $key => $user_id){
							$activity->set_user_manager($user_id,"enable");
						}
					}
					
					// set group acces
					if(isset($groups_id_valid)  && count($groups_id_valid) > 0){
						foreach($groups_id_valid AS $key => $group_id){
							$activity->set_group_acces($group_id,"enable");
						}
					}
				}
				add_log('admin', 'LOG_CONFIG_' . strtoupper($mode));
				break;
			}
			trigger_error($user->lang['CONFIG_UPDATED'] . adm_back_link($this->u_action));
		}

				///// OUTPUT ///
		
		// Output relevant page
		if(isset($display_vars)){									// output for forms
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
		
		// output for a list
		if(isset($log_data)){
			$template->assign_vars(array(
				'L_TITLE'		=> $l_title,
				'L_EXPLAIN'		=> $l_title_explain,
				'U_ACTION'		=> $this->u_action . "&amp;$u_sort_param$keywords_param&amp;start=$start",

				'S_ON_PAGE'		=> on_page($log_count, $config['topics_per_page'], $start),
				'PAGINATION'	=> generate_pagination($this->u_action . "&amp;$u_sort_param$keywords_param", $log_count, $config['topics_per_page'], $start, true),

				'S_LIMIT_DAYS'	=> $s_limit_days,
				'S_SORT_KEY'	=> $s_sort_key,
				'S_SORT_DIR'	=> $s_sort_dir,
				'S_CLEARLOGS'	=> $auth->acl_get('a_clearlogs'),
				'S_KEYWORDS'	=> $keywords,
				)
			);
			foreach ($log_data as $row)
			{
				$data = array();
					
				$checks = array('viewtopic', 'viewlogs', 'viewforum');
				foreach ($checks as $check)
				{
					if (isset($row[$check]) && $row[$check])
					{
						$data[] = '<a href="' . $row[$check] . '">' . $user->lang['LOGVIEW_' . strtoupper($check)] . '</a>';
					}
				}

				$template->assign_block_vars('log', array(
					'USERNAME'			=> $row['username_full'],
					'REPORTEE_USERNAME'	=> ($row['reportee_username'] && $row['user_id'] != $row['reportee_id']) ? $row['reportee_username_full'] : '',

					'IP'				=> $row['ip'],
					'DATE'				=> $user->format_date($row['time']),
					'ACTION'			=> $row['action'],
					'DATA'				=> (sizeof($data)) ? implode(' | ', $data) : '',
					'ID'				=> $row['id'],
					)
				);
			}
		}
   }
  function apc_enroll($value, $key)
	{

		$radio_ary = array('yes' => 'YES', 'no' => 'NO');
		$value = ($value != 'yes' || $value != 'no') ? 'yes' : $value;

		return h_radio('config['.$key.']', $radio_ary, $value, $key);
  }
   
   // make dropdown box for payment options: chash or iDeal
   function apc_pay_options($value){
		global $user;
		$options = '<option value="cash"' . (($value == "cash") ? ' selected="selected"' : '') . '>' . $user->lang['CASH'] . '</option>';
		$options .= '<option value="iDeal"' . (($value == "iDeal") ? ' selected="selected"' : '') . '>' . $user->lang['IDEAL'] . '</option>';
		
		return $options;
   }  
   
   function apc_commission($value){
		global $user, $db;							
		$sql = "SELECT g.group_id, g.group_name
			FROM " . GROUPS_TABLE . " g
			WHERE ". $db->sql_in_set('g.group_id', all_user_groups($user->data['user_id'], false, false)) ."
			AND ". $db->sql_in_set('g.group_id', unserialize(EXCLUDE_GROUPS_COMMISSION), true, false)."
			AND ". $db->sql_in_set('g.group_type', unserialize(EXCLUDE_PRE_DEFINED_GROUPS), true, false);
		$result = $db->sql_query($sql);
		$options = "";
		while ($row = $db->sql_fetchrow($result))
		{
			$options .= '<option value="'.$row['group_id'].'"' . (($value == $row['group_id']) ? ' selected="selected"' : '') .'>' . $row['group_name'] . '</option>';
		}
		$db->sql_freeresult($result);		
		return $options;
   }
  
   function select_user($value, $key){
		
		global $user, $phpbb_root_path, $phpEx;
		$href = append_sid($phpbb_root_path. "memberlist.".$phpEx, 'mode=searchuser&amp;form=acp_activity_new&amp;field='.$key);
		$string =  '<dd><textarea id="'.$key.'" name="config['.$key.']" cols="40" rows="5">'.$value.'</textarea></dd>';
		$string .= '<dd>[ <a href="'.$href.'" onclick="find_username(this.href); return false;">'.$user->lang['FIND_USERNAME'].'</a> ]</dd>';
		return $string;	
		return "";
   }
   
   function select_group($value, $key){
		
		global $user, $phpbb_root_path, $phpEx;
		$href = append_sid($phpbb_root_path. "grouplist.".$phpEx, 'mode=searchgroup&amp;separator='.GROUP_SEPARATOR.'&amp;exclude_groups=BOTS,REGISTERED_COPPA,NEWLY_REGISTERED&amp;form=acp_activity_new&amp;field='.$key);
		$string =  '<dd><textarea id="'.$key.'" name="config['.$key.']" cols="40" rows="5">'.$value.'</textarea></dd>';
		$string .= '<dd>[ <a href="'.$href.'" onclick="find_username(this.href); return false;">'.$user->lang['FIND_GROUP'].'</a> ]</dd>';
		return $string;	
		return "";
   }
  
   function acp_description($value, $key){
		return '<textarea id="'.$key.'" cols="6" rows="20" name="config['.$key.']"  onselect="storeCaret(this);" onclick="storeCaret(this);" onkeyup="storeCaret(this);" >'.$value.'</textarea>';
   }
}
?>
