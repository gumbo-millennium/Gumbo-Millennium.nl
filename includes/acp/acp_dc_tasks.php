<?php
/**
*
* @package phpBB3
* @version $Id$
* @athor: Gerco Versloot
* @date: 29 - 4 - 2013
* @license http://opensource.org/licenses/gpl-license.php GNU Public License
* @Gumbo millennium
*/

/**
* @ignore
*/
if (!defined('IN_PHPBB'))
{
	exit;
}

// set defines
define("GROUP_SEPARATOR", ",");											// separator for selecting groups
define("EXCLUDE_PRE_DEFINED_GROUPS", serialize(array(3)));				// exclude pre definde (like ADMINISTRATORS) groups for selecting the making commission ,groups by id: 9: leden, 10: oud leden, 11: A-leden 
define("EXCLUDE_GROUPS_COMMISSION", serialize(array(9, 10, 11)));		// exclude groups for selecting the making commission ,groups by id: 9: leden, 10: oud leden, 11: A-leden 

include_once($phpbb_root_path . 'dc/dc_tasks_class.' . $phpEx);
include_once($phpbb_root_path . 'dc/dc_tasks_handler_class.php');
include_once($phpbb_root_path . '/includes/functions_posting.' . $phpEx);
include_once($phpbb_root_path . 'dc/dc_activity_class.' . $phpEx);
include_once($phpbb_root_path . 'includes/functions_convert.' . $phpEx);
include_once($phpbb_root_path . 'includes/functions_user.' . $phpEx);
include_once($phpbb_root_path . 'dc/dc_functions.' . $phpEx);
include_once($phpbb_root_path . 'includes/functions_display.' . $phpEx);

/**
* @package acp
*/
class acp_dc_tasks
{
	var $u_action;
	var $new_config;
	
	function main($id, $mode)
	{
		global  $db, $user, $template, $phpbb_root_path, $phpEx;
		
		$user->add_lang('mods/dc_activity');
		$user->add_lang('mods/dc_tasks');
		$user->add_lang(array('posting','acp/board'));
		
		$submit = (isset($_POST['submit'])) ? true : false;
		
		$tasks_handler = new Tasks_handler(); // set tasks_handler

		switch ($mode)
		{
			case 'overview':
				
				//print_r(all_user_groups(intval($user->data['user_id'])));
				$current_tasks = $tasks_handler->get_user_tasks(intval($user->data['user_id']), 3); // get all current + uncomplete tasks from this user 
				
					// get input
				$complete_id = utf8_normalize_nfc(request_var('complete', 0, true));
				$uncomplete_id = utf8_normalize_nfc(request_var('uncomplete', 0, true));
				
				//check if an task gets complete
				if($complete_id){
					//check if task exitist
					if(isset($current_tasks[$complete_id])){
						if(!$current_tasks[$complete_id]->is_complete()){
							$current_tasks[$complete_id]->set_completed_datetime(new DateTime('now'));
							$current_tasks[$complete_id]->save();
						}
					}
				}
				

				//check if an task gets uncomplete
				if($uncomplete_id){
					//check if task exitist
					if(isset($current_tasks[$uncomplete_id])){
						if($current_tasks[$uncomplete_id]->is_complete()){
							$current_tasks[$uncomplete_id]->set_completed_datetime(NULL);
							$current_tasks[$uncomplete_id]->save();
						}
					}
				}
				
				if(COUNT($current_tasks)){	// if there are tasks found
					$template->assign_var('TASKS_FOUND', TRUE);	
					
					// Convert to groups
					$group_tasks = array();					
					foreach($current_tasks AS $task){
						$group_tasks[$task->get_group()][$task->get_id()] = $task;
					}
					
					foreach ($group_tasks as $group_id => $task_array)
					{
						// categories in this example are "food" and "animal"
						$template->assign_block_vars('task_by_group', array(
							'GROUP_NAME'    => get_group_name($group_id),
							'GROUP_ID'    => $group_id
						));

						// each item within the category is assigned to the second block.
						foreach ($task_array as $task_id => $task)
						{					
							$users_names = '';
							$first = true;
							foreach($task->get_users() AS $user_id => $user_task){
								if(!$first){
									$users_names .= ', ';
								}
								if($user_id == $user->data['user_id']){
									$users_names .= '<font color="red">'. $user_task['real_name']. '</font>';
								}else{
									$users_names .= $user_task['real_name'];
								}
								$first = false;
								
							}
							
							
							
							$template->assign_block_vars('task_by_group.task', array(
								'TAKS_ID'    		=> $task->get_id(),
								'TASK_TITLE'        => $task->get_title(),
								'TASK_GROUP'        => $task->get_group(),
								'TASK_DEADLINE'     => $user->format_date( $task->get_deadline()->getTimestamp() ),
								'TASK_USERS'     	=> $users_names,
								'TASK_STATUS'     	=> $task->is_complete(),
								'TASK_SUB_TASK_COUNT'=> $task->count_childs(),
								
								'URL_TASK_COMPLETE'		=> $this->u_action.'&complete='.$task->get_id(),
								'URL_TASK_UNCOMPLETE'	=> $this->u_action.'&uncomplete='.$task->get_id(),
							));
							
						}
					}
				}else{
					$template->assign_var('TASKS_FOUND', FALSE);	
				}

				$template->assign_vars(array(
					'L_TASK_TITLE'			=> ucfirst(strtolower($user->lang['ACP_DC_TSK_TITLE'])),
					'L_TASK_ASSIGNED'		=> ucfirst(strtolower($user->lang['ACP_DC_TSK_ASSIGNED'])),
					'L_TASK_GROUP'			=> ucfirst(strtolower($user->lang['ACP_DC_TSK_GROUP'])),
					'L_TASK_DEADLINE'		=> ucfirst(strtolower($user->lang['ACP_DC_TSK_DEADLINE'])),
					'L_TASK_STATUS'			=> ucfirst(strtolower($user->lang['ACP_DC_TKS_STATUS'])),
					
					'L_TASK_COMPLETE'		=> ucfirst(strtolower($user->lang['ACP_DC_TSK_COMPLETE'])),
					'L_TASK_UNCOMPLETE'		=> ucfirst(strtolower($user->lang['ACP_DC_TSK_UNCOMPLETE'])),
					'L_TASK_USB_TASKS'		=> ucfirst(strtolower($user->lang['ACP_DC_TSK_SUB_TASKS'])),
					'L_TASK_NO_TASKS'		=> ucfirst(strtolower($user->lang['ACP_DC_TSK_NO_TASKS'])),
				));

				$this->page_title = 'ACP_DC_TSK_OVERVIEW';
				$this->tpl_name = 'dc/acp_dc_tasks_overview';
			break;

			case 'new_task':
				// set form key
				$form_key = 'acp_dc_tsk_new';
				$form_title = 'acp_dc_task';
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
					'title'	=> strtoupper($form_title),
					'vars'	=> array(				
					'legend1'	=> 'GENERAL_SETTINGS',	
							'title' => array(
								'lang' => 'ACP_DC_TSK_TITLE',
								'validate' => 'string',
								'type' => 'text:20:100', 
								'empty' => false,
								'explain' => true 
							),
							'deadline'			=> array(
								'lang' => 'ACP_DC_TSK_DEADLINE',
								'validate' => 'string',
								'type' => 'text:19:19',					// 2 (day) + 2 (month) + 4 (year) + 1 (space) + 2 (hours) + 2(minutes) + 2 (seconds) = 19 
								'empty' => false,
								'explain' => true,
								'append'  => '<br> YYYY-MM-DD HH:MM(:SS)',
								//'preg'=> '[^0-9: -]',
								'patern' => array( 'type' => 'time')
							),
							'commission' => array('lang' => 'ACP_DC_TSK_COMMISSION',
								'validate' => 'int',
								'type' => 'select',
								'empty' => false,
								'method' => 'apc_commission',
								'explain' => true,
								'preg'=> '[^0-9]'
							),
							'assign_users'	=> array(
									'lang' => 'ACP_DC_TSK_ASSIGN',
									'validate' => 'string',
									'type' => 'custom',
									'empty' => false,
									'method' => 'select_user',
									'explain' => true,
									'params' => array('{CONFIG_VALUE}', '{KEY}', $form_title),
									'explain' => true,
									'preg'=> ','
								),
						
						'legend2'				=> 'ACP_DC_TSK_OPTIONAL',
							'parent'	=> array(
									'lang' => 'ACP_DC_TSK_PARENT',
									'validate' => 'int',
									'type' => 'select',
									'empty' => true,
									'method' => 'select_task',
									'explain' => true,
									'params' => array('{CONFIG_VALUE}', '{KEY}', $tasks_handler),
									'explain' => true
								),
						'legend3'				=> 'ACP_DC_ACT_DESCRIPTION',
							'description'	=> array(
								'lang' => 'ACP_DC_ACT_DESCRIPTION',
								'validate' => 'text',	
								'type' => 'custom', 
								'empty' => true, 
								'method' => 'acp_description', 
								'explain' => true
							),
												
					)
				);
					
					// Description is custom made because of the bbcode and smilies
				$template->assign_var('DESCRIPTION', 'description');							
				
				// Generate smilies on inline displaying
				generate_smilies('inline', $form_key);

				// Assigning custom bbcode
				display_custom_bbcodes();
				
				// set title
				if($mode == 'new_task'){
					$this->page_title = 'ACP_DC_TSK_NEW';
				}
				
				$this->tpl_name = 'dc/acp_dc_tasks_new';
			break;
		}
	
		/////////////////////////////
		///// 	  GET INPUT	     ////
		/////////////////////////////

		if (isset($display_vars['lang'])){
			$user->add_lang($display_vars['lang']);
		}
		$cfg_array = utf8_normalize_nfc(request_var('config', array('' => ''), true));
		$error = array();
		if(!isset($cfg_array["commission"]))
				$cfg_array["commission"] = $this->new_config['commission'];

		// We validate the complete config if whished
		if(isset($display_vars['vars'])){
			validate_config_vars($display_vars['vars'], $cfg_array, $error);
		}
		
		// check if form key is valid
		if ($submit && !check_form_key($form_key)){
			$error[] = $user->lang['FORM_INVALID'];
		}
		/////////////////////////////
		///// AS INPUT IS A FORM ////
		/////////////////////////////
		
		// check default the input for a form
		if($submit && isset($display_vars)){
			$error = array_merge($error, check_form($display_vars, $cfg_array));
		}
		
		//////////////////////////////////////
		////// MODE SPECIFIC INPUT CHECK /////
		//////////////////////////////////////
		
		//// mode  = new_activity  ////
		if($submit && !count($error)){
			switch($mode){
				case 'new_task':
				
					
					// check deadline //
					
					$timezone = new DateTimeZone(date_default_timezone_get());			// get current timezone
					$deadline = new Datetime($cfg_array["deadline"], $timezone);		//convert deadine to a datetime		
					if(new DateTime("now") > $deadline){								// check if deadline is in the past
						$error[] = $user->lang['ACP_DC_TSK_DEADLINE_PAST'];				// set error
					}
					
					// check if commission/group is correct //
					if(!in_array($cfg_array["commission"], all_user_groups($user->data['user_id']))){
						$error[] = sprintf($user->lang['ACP_DC_TSK_UNVALID_COM'], get_group_name($cfg_array["commission"]));
					}
					
					// check assign users //
					// convert assign_users to an array of users id's
					$username_ary = explode("\n", $cfg_array["assign_users"]);
					// We need both username and user_id info
					$result = user_get_id_name($user_id_ary, $username_ary);
					
					if (!count($user_id_ary) || $result !== false)
					{
						$error[] = $user->lang['NO_USER'];
					}
					$cnt_dif = count($username_ary) - count($user_id_ary);
					if($cnt_dif == 1){
						$error[] = sprintf($user->lang['ACP_DC_TSK_USR_NOT_EXIST'], $cnt_dif);
					}elseif($cnt_dif >= 1){
						$error[] = sprintf($user->lang['ACP_DC_TSK_USRS_NOT_EXIST'], $cnt_dif);
					}
				  
					  // check if user is in the group
					$sql = 'SELECT user_id
						FROM ' . USER_GROUP_TABLE . '
						WHERE ' . $db->sql_in_set('user_id', $user_id_ary) . "
							AND group_id = " . $db->sql_escape($cfg_array["commission"]);
					$result = $db->sql_query($sql);
					$add_id_ary = array();
					while ($row = $db->sql_fetchrow($result))
					{
						$add_id_ary[] = (int) $row['user_id'];
					}
					$db->sql_freeresult($result);
					// Do all the users exist in this group?
					$add_id_ary = array_diff($user_id_ary, $add_id_ary);
					
					// If we have no users
					if (count($add_id_ary))	{
						user_get_id_name($add_id_ary, $nt_found_names);
						if(count($nt_found_names) == 1){
							$error[] = sprintf($user->lang['ACP_DC_TSK_USR_NOT_GRP'], implode( ", ",$nt_found_names), get_group_name($cfg_array["commission"]));
						}else{
							$error[] = sprintf($user->lang['ACP_DC_TSK_USRS_NOT_GRP'], implode( ", ",$nt_found_names),get_group_name($cfg_array["commission"]) );
						}
					}
					
					// check for correct parent // 
					if($cfg_array["parent"]){		// check if parent is set
						$tasks = $tasks_handler->get_user_tasks(intval($user->data['user_id']), 3, 'group'); // get all current + uncomplete tasks from this user order by groups
						if(isset($tasks[$cfg_array["parent"]])){ 		// check if the task is set
							$parent = $tasks[$cfg_array["parent"]];		// get parent from the task handler
							if($parent->get_group() != $cfg_array["commission"]){	// check if the groups of the parent and the new task NOT match
								$error[] = $user->lang['ACP_DC_TSK_PARENT_NT_GROUP'];
							}
						}else{											// task not found
							$error[] = $user->lang['ACP_DC_TSK_PARENT_INVALID'];
						}
					}else{
						$parent = null;
					}
					
					break;
			}
		} 
		/// end mode = new_activity ///
		
		//////////////////////////////////////
		////// CHECK FOR ERRORS AND SEND /////
		//////////////////////////////////////
		
		// Do not write values if there is an error
		if (count($error)){
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
				case 'new_task':
					$new_task = new Task();
					
					if(!$new_task->fill_from_data(
						$cfg_array["title"],
						$deadline,
						$cfg_array["commission"],
						0,
						$cfg_array["description"],
						$tasks_handler,
						NULL,
						$user_id_ary,
						NULL,
						$parent
					)){
						trigger_error("Error while saving");
					}
					
					//add_log('admin', 'LOG_CONFIG_' . strtoupper($mode));
					
					trigger_error($user->lang['CONFIG_UPDATED'] . adm_back_link(append_sid($phpbb_root_path.'adm/index.'.$phpEx, "i=dc_tasks&mode=overview" )));
					break;
			}
		}
		
		////////////////////////////
		///// GENERATE OUTPUT //////
		////////////////////////////
		
		// set page title
		$template->assign_vars(array(
				'L_TITLE'			=> $user->lang[$this->page_title],
				'L_TITLE_EXPLAIN'	=> $user->lang[$this->page_title . '_EXPLAIN']
				
		));
		// Output relevant page
		if(isset($display_vars)){									// output for forms

			$template->assign_vars(array(
				'S_ERROR'			=> (count($error)) ? true : false,
				'ERROR_MSG'			=> implode('<br />', $error),

				'S_MODE'			=> $mode,
				'U_ACTION'			=> (isset($activity_id)? $this->u_action. "&id=".$activity_id : $this->u_action),
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
	}
	
   function apc_commission($value){
   
		global $user, $db;							
		$sql = "SELECT g.group_id, g.group_name
			FROM " . GROUPS_TABLE . " g
			WHERE ". $db->sql_in_set('g.group_id', all_user_groups($user->data['user_id']), false, false) ."
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
  
   function select_task($value, $key, $tasks_handler = null){
		
		global $user, $db;							
		if(!$tasks_handler){
			$tasks_handler = new Tasks_handler();
		}
		$tasks = $tasks_handler->get_user_tasks(intval($user->data['user_id']), 3, 'group'); // get all current + uncomplete tasks from this user order by groups
		$group_id = null;
		$options = "<option value='0'></option>";
		foreach($tasks AS $task_id => $task){		
			if($task->get_group() != $group_id){		// check for group 

				$group_id = $task->get_group();		// change group ip
				$options .='<option disabled>---- '. get_group_name($group_id) .' ----</option>';		// show group name
			}
			$options .= '<option value="'.$task_id.'"' . (($value == $task_id) ? ' selected="selected"' : '') .'>' . $task->get_title() . '</option>';
		}
	
		return $options;
   }  
   
   function select_user($value, $key, $form){
		
		global $user, $phpbb_root_path, $phpEx;
		$href = append_sid($phpbb_root_path. "memberlist.".$phpEx, 'mode=searchuser&amp;form='.$form.'&amp;field='.$key);
		$string =  '<dd><textarea id="'.$key.'" name="config['.$key.']" cols="40" rows="5">'.$value.'</textarea></dd>';
		$string .= '<dd>[ <a href="'.$href.'" onclick="find_username(this.href); return false;">'.$user->lang['FIND_USERNAME'].'</a> ]</dd>';
		return $string;	
   }
   
	function select_single_user($value, $key, $form){
		
		global $user, $phpbb_root_path, $phpEx;
		$href = append_sid($phpbb_root_path. "memberlist.".$phpEx, 'mode=searchuser&amp;&select_single=true&amp;form='.$form.'&amp;field='.$key);
		$string =  '<dd><textarea id="'.$key.'" name="config['.$key.']" cols="40" rows="5">'.$value.'</textarea></dd>';
		$string .= '<dd>[ <a href="'.$href.'" onclick="find_username(this.href); return false;">'.$user->lang['FIND_USERNAME'].'</a> ]</dd>';
		return $string;	
   }
  
   function acp_description($value, $key){
		return '<textarea id="'.$key.'" cols="6" rows="20" name="config['.$key.']"  onselect="storeCaret(this);" onclick="storeCaret(this);" onkeyup="storeCaret(this);" >'.$value.'</textarea>';
   }
}

?>