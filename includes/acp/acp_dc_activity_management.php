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

// defines for action list on the subscriptions page
define ("CHANCE_PAYMENT", 1);
define ("SEND_EMAIL", 2);
define ("ADD_USERS", 3);
define ("SUBSCRIBE_USER", 4);
define ("UNSUBSCRIBE_USER", 5);

// include functions
include_once ($phpbb_root_path . 'dc/dc_activities_handler.' . $phpEx);
include_once ($phpbb_root_path . 'dc/dc_activity_class.' . $phpEx);
include_once($phpbb_root_path . '/includes/functions_posting.' . $phpEx);
include_once($phpbb_root_path . 'includes/functions_convert.' . $phpEx);
include_once($phpbb_root_path . 'includes/functions_user.' . $phpEx);
include_once($phpbb_root_path . 'dc/dc_functions.' . $phpEx);
include($phpbb_root_path . 'includes/functions_display.' . $phpEx);
include_once($phpbb_root_path . 'includes/functions_messenger.' . $phpEx);
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
		$preview = (isset($_POST['preview'])) ? true : false;
		$activities_handler = new activities_handler();
		
		// if mode is edit_activity this varible can change to false if the activity is 'current'
			// current means startdatetime <= now and endDateTime >= now 
		$activity_allowed_to_change = true;
		
		// in some cases we need the current activity id
		switch($mode){
			case "recycle_activity":
			case "edit_activity":
			case "enrolls":
				$activity_id = utf8_normalize_nfc(request_var('id', 0));	// get activity id
			break;	
		}
		
		
		
		/**
		*	Validation types are:
		*		string, int, bool,
		*		script_path (absolute path in url - beginning with / and no trailing slash),
		*		rpath (relative), rwpath (realtive, writable), path (relative path, but able to escape the root), wpath (writable)
		*/
		
		  switch($mode)
		  {
			case 'edit_activity':
				// edit event
				if(!$activity_id){											// if activity id is emty
					trigger_error($user->lang['DC_ACT_NO_ACT']);
				}
				
				$activity = Activity::get_activity($activity_id, $activities_handler);								
				
				if($activity == NULL){
					trigger_error($user->lang['DC_ACT_NO_ACT']);
				}
				// get authorisation 
				if (!$activity->is_manager($user->data['user_id']))
				{
					 trigger_error('NOT_AUTHORISED');
				}			
				// set all the config value's
				
				$this->new_config['start_date'] = date_format($activity->getStartDateTime(), 'd-m-Y');
				$this->new_config['start_time'] = date_format($activity->getStartDateTime(), 'H:i:s');
				$this->new_config['end_date'] = date_format($activity->getEndDateTime(), 'd-m-Y');
				$this->new_config['end_time'] = date_format($activity->getEndDateTime(), 'H:i:s');
				
				$this->new_config['enroll_date'] = date_format($activity->getEnrolDateTime(), 'd-m-Y');
				$this->new_config['enroll_time'] = date_format($activity->getEnrolDateTime(), 'H:i:s');
				
				$this->new_config['end_date_unsubscribe'] = date_format($activity->getUnsubscribeMaxDatetime(), 'd-m-Y');
				$this->new_config['end_time_unsubscribe'] = date_format($activity->getUnsubscribeMaxDatetime(), 'H:i:s');
				
				// check if activity is current and allowed to change
				$activity_allowed_to_change = $activity->check_allowed_to_change(false);
						
				
				if($mode == 'edit_activity'){
					$this->page_title = 'ACP_DC_ACT_EDIT';
				}
				// no break!
			case 'recycle_activity':
					if($mode == 'recycle_activity' && !$submit){
						if(!$activity_id){									// if activity id is emty
							trigger_error($user->lang['DC_ACT_NO_ACT']);
						}
						
						$activity = Activity::get_activity($activity_id, $activities_handler);
						
						if($activity == NULL){
							trigger_error($user->lang['DC_ACT_NO_ACT']);
						}
						
						// get authorisation 
						if (!$activity->is_manager($user->data['user_id']))
						{
							 trigger_error('NOT_AUTHORISED');
						}
						
						
						unset($activity_id);									// unset activity_id to make a new activity at save!
					}
					// Check if user not submited. That means the user is the first time on this page and some fields are needed to be set.
					if(!$submit){
				
						$this->new_config['activity_name'] = $activity->getName();
						$this->new_config['enroll'] = (($activity->getEnrol() == 1 )? 'yes' : 'no');
						$this->new_config['location'] = $activity->getLocation();
						$this->new_config['pay_option'] = $activity->getPayOption();
						$this->new_config['commission'] = $activity->getCommission();
						
						$this->new_config['enroll_max'] = $activity->getEnrolMax();
						$this->new_config['price'] = $activity->getPrice();
						$this->new_config['price_member'] = $activity->getPriceMember();
						$this->new_config['description'] = $activity->getDescription_edit();
						
						// get all managers of an activity 
						$managers = $activity->get_groups_manage_list(GROUPS_MANAGES_ENABLED, TRUE);				// get all groups that are managers			
						$group_array = array();													// define group array
						foreach($managers AS $group_id => $value){							// convert index (group_id) to a array
							$group_array[] = $managers[$group_id]["group_name"]; 					// get groep name from id
						}
						$this->new_config['add_group_manager'] = implode(GROUP_SEPARATOR ."\n",$group_array);	// convert the user id's array to a string with a new line in between
						// unset the managers variables 
						
						unset($managers);
						unset($group_array);
						
						//get all groups that have acces to this activity
						$groups = $activity->get_groups_access_list(GROUPS_ACCESS_ENABLED, TRUE);				// get all groups that have acces
						$group_array = array();													// define group array
						foreach($groups AS $group_id => $value){				// get array of group names
							$groups_name_array[] = $groups[$group_id]["group_name"]; 
						}
						$this->new_config['add_group'] = implode(GROUP_SEPARATOR ."\n",$groups_name_array);
						// unset the group variables 
						unset($groups);
						unset($group_array);
					}
					if($mode == 'recycle_activity'){
						$this->page_title = 'ACP_DC_ACT_RECYCLE';
						unset($activity_id);									// unset activity_id to make a new activity at save!
					}
					unset($activity);
					// no break!
			case 'new_activity':
				// set form key
				$form_key = 'acp_dc_act_new';
				$form_title = 'acp_activity_new';
				add_form_key($form_key);
				
				if (!function_exists('generate_smilies'))
				{
					include_once($phpbb_root_path . 'includes/functions_posting.' . $phpEx);
				}

				if (!function_exists('display_custom_bbcodes'))
				{
					include_once($phpbb_root_path . 'includes/functions_display.' . $phpEx);
				}
				
				$sql = "SELECT g.group_id, g.group_name
					FROM " . GROUPS_TABLE . " g
					WHERE ". $db->sql_in_set('g.group_id', $activities_handler->get_user_groups($user->data['user_id']), false, false) ."
					AND ". $db->sql_in_set('g.group_id', unserialize(EXCLUDE_GROUPS_COMMISSION), true, false)."
					AND ". $db->sql_in_set('g.group_type', unserialize(EXCLUDE_PRE_DEFINED_GROUPS), true, false);
				$result = $db->sql_query($sql);
				$user_commissions = array();
				while ($row = $db->sql_fetchrow($result))
				{
					$user_commissions[intval($row['group_id'])] = $row['group_name'];
				}
				$db->sql_freeresult($result);
				
				$display_vars = array(
					'title'	=> strtoupper($form_title),
					'vars'	=> array(				
						'legend1'	=> 'GENERAL_SETTINGS',	
							'activity_name' => array(
								'lang' => 'ACP_DC_ACT_NAME',
								'validate' => 'string',
								'type' => 'text:20:100', 
								'empty' => false,
								'explain' => true 
							),
							'start_date' => array(
								'lang' => 'ACP_DC_ACT_START_DATE',		
								'validate' => 'string',	
								'type' => 'text:10:10', 
								'empty' => false, 'explain' => true, 
								'append'  => '<br>(DD-MM-YYYY)', 
								'preg'=> '[^0-9-]', 
								'patern' => array( 'type' => 'date' ,'format' =>'D-M-YYYY')
							),
							'start_time'			=> array(
								'lang' => 'ACP_DC_ACT_START_TIME',
								'validate' => 'string',
								'type' => 'text:10:8',
								'empty' => false,
								'explain' => true,
								'append'  => '<br>HH:MM(:SS)',
								'preg'=> '[^0-9:]',
								'patern' => array( 'type' => 'time')
							),
							'end_date'=> array(
								'lang' => 'ACP_DC_ACT_END_DATE',
								'validate' => 'string',
								'type' => 'text:10:10',
								'empty' => false,
								'explain' => true,
								'append'  => '<br>(DD-MM-YYYY)',
								'patern' => array( 'type' => 'date','format' =>'D-M-YYYY')
							), 
							'end_time'	=> array(
								'lang' => 'ACP_DC_ACT_END_TIME',
								'validate' => 'string',
								'type' => 'text:10:8',
								'empty' => false,
								'explain' => true,
								'append'  => '<br>HH:MM(:SS)',
								'preg'=> '[^0-9:]',
								'patern' => array( 'type' => 'time')
							), 
							'enroll'				=> array('lang' => 'ACP_DC_ACT_ENROL',
								'validate' => 'string',
								'type' => 'custom',
								'empty' => false,
								'method' => 'apc_enroll',
								'explain' => true ,
								'preg'=> '[^(yes)||(no)]'
							),
							'location' => array('lang' => 'ACP_DC_ACT_LOCATION',
								'validate' => 'string',
								'type' => 'textarea:2:2',
								'empty' => false,
								'explain' => true
							),
							'pay_option' => array('lang' => 'ACP_DC_ACT_PAY_OPTION',
								'validate' => 'string',
								'type' => 'select',
								'empty' => false,'method' => 'apc_pay_options',
								'explain' => false,
								'preg'=> '[^(cash)|(iDeal)]'),
							'commission' => array('lang' => 'ACP_DC_ACT_COMMISSION',
								'validate' => 'int',
								'type' => 'select',
								'empty' => false,
								'method' => 'apc_dropdown',
								'params' => array('{CONFIG_VALUE}', '{KEY}', $user_commissions, "true"),
								'explain' => true,
								'preg'=> '[^0-9]'
							),
							
						'legend2' => 'OPTIONAL_SETTINGS',
							'enroll_date' => array(
								'lang' => 'ACP_DC_ACT_ENROLL_DATE',
								'validate' => 'string',
								'type' => 'text:10:10','empty' => true,
								'explain' => true,
								'append'  => '<br>(DD-MM-YYYY)',
								'preg'=> '[^0-9-]' ,
								'patern' => array( 'type' => 'date' ,'format' =>'D-M-YYYY')),
							'enroll_time'=> array(
								'lang' => 'ACP_DC_ACT_ENROLL_TIME',
								'validate' => 'string',
								'type' => 'text:10:8',
								'empty' => true,
								'explain' => true,
								'append'  => '<br>HH:MM(:SS)' ,
								'preg'=> '[^0-9:]' ,
								'patern' => array( 'type' => 'time')
							),
							'enroll_max' => array(
								'lang' => 'ACP_DC_ACT_ENROLL_MAX',
								'validate' => 'int',
								'type' => 'text:10:8',
								'empty' => true,
								'explain' => true,
								'preg'=> '[^0-9]'
							),
							'end_date_unsubscribe'	=> array(
								'lang' => 'ACP_DC_ACT_END_DATE_UNSUBSCRIBE',
								'validate' => 'string',
								'type' => 'text:10:10',
								'empty' => true,
								'explain' => true,
								'append'  => '<br>(DD-MM-YYYY)',
								'patern' => array( 'type' => 'date' ,'format' =>'D-M-YYYY')
							), 
							'end_time_unsubscribe'	=> array(
								'lang' => 'ACP_DC_ACT_END_TIME_UNSUBSCRIBE',
								'validate' => 'string',
								'type' => 'text:10:8',
								'empty' => true,
								'explain' => true,
								'append'  => '<br>HH:MM(:SS)',
								'preg'=> '[^0-9:]',
								'patern' => array( 'type' => 'time')
							), 
							'price'	=> array(
								'lang' => 'ACP_DC_ACT_PRICE',
								'validate' => 'string',
								'type' => 'text:10:8',
								'empty' => true,
								'explain' => true,
								'append' => ' euro',
								'preg'=> '[^0-9,.]',  
								'append' => ' euro',
								'patern' => array( 'type' => 'money')
							),
							'price_member'=> array(
								'lang' => 'ACP_DC_ACT_PRICE_MEMBER',
								'validate' => 'string',
								'type' => 'text:10:8',
								'empty' => true,
								'explain' => true,
								'append' => ' euro',
								'preg'=> '[^0-9,.]',
								'patern' => array( 'type' => 'money')
							),
							
						'legend3'				=> 'ACP_DC_ACT_ACCES',
							//add_group_manager: funtion select groups params: {config_value}, {key}, the group id's of excluded groups in the grouplist: 
							/*
								6 = BOTS
								3 = REGISTERED_COPPA
								7 = NEWLY_REGISTERED
							*/
							'add_group_manager'	=> array(
								'lang' => 'ACP_DC_ACT_ADD_GROUP_MANAGER',
								'validate' => 'string',
								'type' => 'custom',
								'empty' => false,
								'method' => 'select_group',
								'params' => array('{CONFIG_VALUE}', '{KEY}', array(6,3,7), $form_title),
								'explain' => true
							),
							'add_group' => array(
								'lang' => 'ACP_DC_ACT_ADD_GROUP',
								'validate' => 'string',
								'type' => 'custom',
								'empty' => false,
								'method' => 'select_group',
								'explain' => true,
								'params' => array('{CONFIG_VALUE}', '{KEY}', array(6,3,7), $form_title),
								'preg'=> '[<>]'
							),
							
						'legend4' => 'ACP_DC_ACT_DESCRIPTION',
							'description' => array(
								'lang' => 'ACP_DC_ACT_DESCRIPTION',
								'validate' => 'text',
								'type' => 'custom',
								'empty' => false,
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
				
				$fast_access_groups = array ( 
					array (
						"name"	=> $user->lang["SELECT_USERS"],
						"groups"	=> $user->lang["G_GUESTS"].",\n".$user->lang["G_REGISTERED"],
						"id"	=> 1,
					),
					array(
						"name"	=> $user->lang["G_REGISTERED"],
						"groups"	=> $user->lang["G_REGISTERED"],
						"id"	=> 2,
					),
					array(
						"name"	=> $user->lang["GUMBO_MEMBERS"],
						"groups"	=> "Begunstigers,\nEre Leden,\nGumbo Leden,\nOud leden",
						"id"	=> 3,
					),
				);
				
				$template->assign_var('INPUT_FAST_FIELD', 'add_group');							
				foreach($fast_access_groups AS $index => $acces_group){
						
					$template->assign_block_vars("acces_groups_fast", array(
						'NAME'		=> $acces_group["name"],
						'GROUPS'		=> $acces_group["groups"],
						'ID'		=> $acces_group["id"],
					));
				}
				
				
				// set title
				if($mode == 'new_activity'){
					$this->page_title = 'ACP_ACTIVITY_NEW';
				}
				
				// set template
				$this->tpl_name = 'dc/acp_dc_activity_new';
				break;

			 case 'overview':		
				$search_parameters = array(
					USER_READED 		=> FALSE,
					MANAGERS_GROUPS		=> TRUE,
				);
				
			 	$comming_activities = $activities_handler->get_user_activities(intval($user->data['user_id']), MANAGEMENT_ACCESS, FUTURE, $search_parameters);
				
				//// 	check if an activity gets activated or deactived	 ////
				
				// get input
				$activate_id = utf8_normalize_nfc(request_var('activate', 0, true));
				$deactivate_id = utf8_normalize_nfc(request_var('deactivate', 0, true));
				
				//check if an activity gets activated
				if($activate_id){
					
					//check if activity exitist
					if(isset($comming_activities[$activate_id])){
						if($comming_activities[$activate_id]->getActive() != 1){
							$comming_activities[$activate_id]->setActive(1);
							$comming_activities[$activate_id]->save();
						}
					}
				}
				
				//check if an activity gets deactivated
				if($deactivate_id){
					//check if activity exitist
					if(isset($comming_activities[$deactivate_id])){
						if($comming_activities[$deactivate_id]->getActive() != 0){
							
							$comming_activities[$deactivate_id]->setActive(0);
							$comming_activities[$deactivate_id]->save();
						}
					}
				}
				// get all comming activities
				
				$group_name_ary = array();
				foreach($comming_activities AS $index => $activity){
					
					if(!isset($group_name_ary[$activity->getCommission()])){
						$group_name_ary[$activity->getCommission()] = get_group_name($activity->getCommission());
					}
					
					$event_active = (($activity->getActive() == 1) ? "_active" : "_deactive");
					$event_active = ((($activity->getStartDatetime() <= new Datetime("now")) && ($activity->getEndDatetime() >= new Datetime("now") ) )? "_now" : $event_active ); // check if event is now, if active block: events_now

					// creates 3 block_vars: event_active, event_deactive and event_now
					$template->assign_block_vars('events'.$event_active, array(
						'EVENT_TITLE'		=> $activity->getName(),
						'EVENT_ENTERED'		=> $activity->getAmountEnrolledUser(),
						'EVENT_COMMISSION'	=> $group_name_ary[$activity->getCommission()],

						'EVENT_ACTIVE'		=> (($activity->getActive() == 1) ? true : false) ,
						'EVENT_ACTIVATE'	=> $this->u_action.'&activate='.$activity->getId(),
						'EVENT_DEACTIVATE'	=> $this->u_action.'&deactivate='.$activity->getId(),

						'EVENT_PREVIEW'		=> append_sid($phpbb_root_path. "dc/dc_activity.".$phpEx, 'act='.$activity->getId()),
						'START_DATE_TIME'	=> $user->format_date( $activity->getStartDatetime()->getTimestamp()),
						
						'U_ENROLL'			=> append_sid($phpbb_root_path.'adm/index.'.$phpEx, 'i=dc_activity_management&mode=enrolls&amp;id=' . $activity->getId()),
						'ENROLL_LINK'			=> append_sid($phpbb_root_path.'adm/index.'.$phpEx, 'i=dc_activity_management&mode=enrolls&amp;id=' . $activity->getId()),
						'U_EDIT'			=> append_sid($phpbb_root_path.'adm/index.'.$phpEx, 'i=dc_activity_management&mode=edit_activity&amp;id=' . $activity->getId()),
					));
				}
									
				// get all past activities
				
				$search_parameters = array(
					USER_READED 		=> FALSE,
					MANAGERS_GROUPS		=> TRUE,
					END_DATETIME		=> array (
							DATE_BEGIN	=> new DateTime('NOW'),
							OPERATOR	=> OP_LOWER,
						),
				);
				
			 	$events_past = $activities_handler->get_user_activities(intval($user->data['user_id']), MANAGEMENT_ACCESS, ALL, $search_parameters, START_DATETIME, DESC,  10);
				
				foreach($events_past AS $index => $activity){
					
					if(!isset($group_name_ary[$activity->getCommission()])){
						$group_name_ary[$activity->getCommission()] = get_group_name($activity->getCommission());
					}
					
					$template->assign_block_vars('events_past', array(
						'EVENT_TITLE'		=> $activity->getName(),
						'EVENT_ENTERED'		=> $activity->getAmountEnrolledUser(),
						'EVENT_COMMISSION'	=> $group_name_ary[$activity->getCommission()],

						'EVENT_PREVIEW'		=> append_sid($phpbb_root_path. "dc/dc_activity.".$phpEx, 'act='.$activity->getId()),
						'START_DATE_TIME'	=> $user->format_date( $activity->getStartDatetime()->getTimestamp()),
						
						'U_ENROLL'			=> append_sid($phpbb_root_path.'adm/index.'.$phpEx, 'i=dc_activity_management&mode=enrolls&amp;id=' . $activity->getId()),
						'ENROLL_LINK'			=> append_sid($phpbb_root_path.'adm/index.'.$phpEx, 'i=dc_activity_management&mode=enrolls&amp;id=' . $activity->getId()),
						
						'U_RECYCLE'			=> append_sid($phpbb_root_path.'adm/index.'.$phpEx, 'i=dc_activity_management&mode=recycle_activity&amp;id=' . $activity->getId())
					));

				}
				
				// set text for activities
				$template->assign_vars(array(
					'L_EVENT_TITLE'			=> ucfirst(strtolower($user->lang['ACP_DC_ACT_NAME'])),
					'L_EVENT_ENROLLED'		=> ucfirst(strtolower($user->lang['DC_ACT_LANG_ENROLLS'])),
					
					'L_EVENT_STATE'			=> ucfirst(strtolower($user->lang['STATE'])),
					'L_EVENT_ACTIVE'		=> ucfirst(strtolower($user->lang['ACTIVE'])),
					'L_EVENT_DEACTIVE'		=> ucfirst(strtolower($user->lang['DEACTIVE'])),
					'L_EVENT_ACTIVATE'		=> ucfirst(strtolower($user->lang['ACTIVATE'])),
					'L_EVENT_DEACTIVATE'	=> ucfirst(strtolower($user->lang['DEACTIVATE'])),
					
					'L_EVENT_CURRENT'		=> ucfirst(strtolower($user->lang['ACP_DC_ACT_CURRENT'])),
					'L_EVENT_ACTIVE_NAME'	=> ucfirst(strtolower($user->lang['ACP_DC_ACT_ACTIVE'])),
					'L_EVENT_DEACTIVE_NAME'	=> ucfirst(strtolower($user->lang['ACP_DC_ACT_DEACTIVE'])),
					
					'L_EVENT_STARTDATETIME'	=> ucfirst(strtolower($user->lang['ACP_DC_ACT_START_DATE'])),
					'L_EVENT_COMMISSION'	=> ucfirst(strtolower($user->lang['ACP_DC_ACT_COMMISSION'])),
					'L_EVENT_EDIT'			=> ucfirst(strtolower($user->lang['EDIT'])),
					'L_EVENT_RECYCLE'		=> ucfirst(strtolower($user->lang['ACP_DC_ACT_RECYCLE'])),
					
					'L_TITLE_PAST'			=> ucfirst(strtolower($user->lang['ACP_DC_ACT_PAST'])),
					'L_TITLE_PAST_EXPLAIN'	=> $user->lang['ACP_DC_ACT_PAST_OVERVIEW_EXPLAIN'],
					
					'S_MODE'				=> $mode,
					'L_ENROLLS'				=> ucfirst(strtolower($user->lang['DC_ACT_LANG_ENROLLS'])),
					'U_ACTION'				=> $this->u_action,
					'SUBMIT'				=> $user->lang['ACP_SUBMIT_CHANGES'],
					
					'PRMISSN_EDIT'			=> $auth->acl_get('a_edit_activity'),
					'PRMISSN_RECYLE'		=> $auth->acl_get('a_act_recyle'),
					'PRMISSN_STATE'			=> $auth->acl_get('a_act_chance_state'),
					'PRMISSN_SBSCRB_LST'	=> $auth->acl_get('a_act_view_subscribe_list'),
					
				));
			
				
				$this->page_title = 'ACP_DC_ACT_OVERVIEW';
				$this->tpl_name = 'dc/acp_dc_activity_overview';
				break;
			case 'past_activities':
			
				// select form for past activies
				
				$form_key = 'acp_past_events';
				add_form_key($form_key);
				
				$display_vars = array(
					'title'	=> 'ACP_DC_ACT_PAST',
					'vars'	=> array(				
						'legend1'				=> 'GENERAL_SETTINGS',		
						
						'activity_name'	=> array(
							'lang' 		=> 'ACP_DC_ACT_NAME',			
							'validate' 	=> 'string',	
							'type' 		=> 'text:20:50', 
							'empty' 	=> true, 
							'explain' 	=> true, 
							'preg'		=> '[^a-zA-Z0-9 ]'
						)
																		
					
					)
				);
				if(isset($_POST['advanced']) || isset($_GET['advanced'])){
					$advanced = array(
						'start_date_from' => array(
							'lang' => 'ACP_DC_ACT_START_DATE_FROM',
							'validate' => 'string',
							'type' => 'text:10:10',
							'empty' => true,
							'explain' => false,
							'append'  => '(DD-MM-YYYY)',
							'preg'=> '[^0-9-]',
							'patern' => array( 'type' => 'date' ,'format' =>'D-M-YYYY')
						),
						'start_date_to'	=> array(
							'lang' => 'ACP_DC_ACT_START_DATE_TO',
							'validate' => 'string',
							'type' => 'text:10:10',
							'empty' => true,
							'explain' => false,
							'append'  => '(DD-MM-YYYY)',
							'preg'=> '[^0-9-]',
							'patern' => array( 'type' => 'date' ,'format' =>'D-M-YYYY')
						),
						'end_date_from'=> array(
							'lang' => 'ACP_DC_ACT_END_DATE_FROM',
							'validate' => 'string',
							'type' => 'text:10:10',
							'empty' => true,
							'explain' => false,
							'append'  => '(DD-MM-YYYY)',
							'preg'=> '[^0-9-]',
							'patern' => array( 'type' => 'date' ,'format' =>'D-M-YYYY')
						),
						'end_date_to' => array(
							'lang' 		=> 'ACP_DC_ACT_END_DATE_TO',
							'validate' 	=> 'string',
							'type' 		=> 'text:10:10',
							'empty' 	=> true,
							'explain' 	=> false,
							'append' 	=> '(DD-MM-YYYY)',
							'preg' 		=> '[^0-9-]',
							'patern' 	=> array( 'type' => 'date' ,'format' =>'D-M-YYYY')
						),
						
					);
					$display_vars['vars'] += $advanced;
				}
				
				// set text for activities
				$template->assign_vars(array(
					'L_EVENT_TITLE'			=> ucfirst(strtolower($user->lang['ACP_DC_ACT_NAME'])),
					'L_EVENT_ENROLLED'		=> ucfirst(strtolower($user->lang['DC_ACT_LANG_ENROLLS'])),
					
					'L_EVENT_STARTDATETIME'	=> ucfirst(strtolower($user->lang['ACP_DC_ACT_START_DATE'])),
					'L_EVENT_RECYCLE'		=> ucfirst(strtolower($user->lang['ACP_DC_ACT_RECYCLE'])),
					
					'L_TITLE_PAST'			=> ucfirst(strtolower($user->lang['ACP_DC_ACT_PAST'])),
					'L_TITLE_PAST_EXPLAIN'	=> $user->lang['ACP_DC_ACT_PAST_EXPLAIN'],
					
					'L_EVENT_COMMISSION'	=> ucfirst(strtolower($user->lang['ACP_DC_ACT_COMMISSION'])),
					'L_ADVANCED_SEARCH'		=> $user->lang['ADVANCED_SEARCH'],
					
					'S_MODE'				=> $mode,
					'L_ENROLLS'				=> ucfirst(strtolower($user->lang['DC_ACT_LANG_ENROLLS'])),
					'K_ACTION'				=> ((isset($_POST['advanced']) || isset($_GET['advanced']))? $this->u_action . "&advanced=advanced" : $this->u_action),
					'L_SUBMIT'				=> $user->lang['SEARCH'])
						
				);
				$this->page_title = 'ACP_DC_ACT_PAST';
				$this->tpl_name = 'dc/acp_dc_activity_past';
				break;
			case 'enrolls':
				if(!$activity_id){											// if activity id is emty
					trigger_error($user->lang['DC_ACT_NO_ACT']);
				}
				
				$activity = Activity::get_activity($activity_id, $activities_handler);								
				
				if($activity == NULL){
					trigger_error($user->lang['DC_ACT_NO_ACT']);
				}
				
				// get authorisation //
				if (!$activity->is_manager($user->data['user_id']))
				{
					 trigger_error('NOT_AUTHORISED');
				}
				
				$form_key = 'acp_enroll_events';
				$form_title = 'ACP_DC_ACT_ENROLL';
				add_form_key($form_key);
				
			
				// Get all subsribed users
				if($activity->getAmountEnrolledUser() > 0){
					$template->assign_vars(array(
						'L_ACT_ENROLLS'		=> true,
					));
										
					// set text for activities
					$template->assign_vars(array(
						'L_USER_NAME'			=> $user->lang['USERNAME'],
						'L_COMMENT'				=> $user->lang['ACP_DC_ACT_COMMENT'],
						'L_STATUS'				=> $user->lang['ACP_DC_ACT_STATUS'],
						'L_PRICE_PAID'			=> $user->lang['PAID'],
						'L_PAYMENT_DONE'		=> $user->lang['DC_ACT_PAYMENT_DONE'],
						'L_REAL_NAME'			=> $user->lang['DC_ACT_REALNAME'],
						'FORM_TITLE'			=> $form_title,
					));					
				}else{
					$template->assign_vars(array(
						'L_ACT_ENROLLS'		=> false,
						'L_ACT_NO_ENROLLS'	=> $user->lang['DC_ACT_ENROLL_NOBODY'],
					));
				}
				
				// options box //
				
				
				// get the all options for the action list
				$action_options = array(
					SUBSCRIBE_USER => $user->lang['ACP_DC_ACTION_SUBSCRIBE'],
					UNSUBSCRIBE_USER => $user->lang['ACP_DC_ACTION_UNSUBSCRIBE']
					
				);
				if(	$auth->acl_get('a_act_pay')){
					$action_options[CHANCE_PAYMENT] = $user->lang['ACP_DC_ACTION_PAY'];
				}
				if(	$auth->acl_get('a_act_send_mail')){
					$action_options[SEND_EMAIL] = $user->lang['ACP_DC_ACTION_EMAIL'];
				}
				if(	$auth->acl_get('a_act_add_user')){
					$action_options[ADD_USERS] = $user->lang['ADD_USERS'];
				}
				
				// create from
				$display_vars = array(
					'title'	=> $form_title,
					'vars'	=> array(				
						'legend1'=> 'GENERAL_SETTINGS',
							'action_options' => array(
								'lang' => 'ACP_DC_ACTION_OPTIONS',
								'validate' => 'int',
								'type' => 'select',
								'empty' => true,
								'method' => 'apc_dropdown',
								'params' => array('{CONFIG_VALUE}', '{KEY}', $action_options, "true"),
								'explain' => true
							),	
							'select_user_multiple'	=> array(
								'lang' => 'ACP_DC_SELECT_MULTI_USER',
								'validate' => 'text',
								'type' => 'custom',
								'empty' => true,
								'method' => 'select_user',
								'explain' => true,
								'params' => array('{CONFIG_VALUE}', '{KEY}', $form_title),
								'explain' => true
							),
							'amount_paid'	=> array(
								'lang' => 'ACP_DC_ACT_PAID',
								'validate' => 'string',
								'type' => 'text:10:8',
								'empty' => true,
								'explain' => true,
								'append' => ' euro',
								'preg'=> '[^0-9,.]',
								'patern' => array( 'type' => 'money'),
								'explain' => false
							),
					)
				);
				
				// set default lang varibles
				$template->assign_vars(array(
					'L_MEMBER_PRICE'		=> $user->lang['ACP_DC_ACT_PRICE_MEMBER'],
					'L_PRICE'				=> $user->lang['ACP_DC_ACT_PRICE'],
					'L_ACT_NAME'			=> $activity->getName(),
					'PRICE'					=> "&euro;".$activity->getPrice(),
					'MEMBER_PRICE'			=> "&euro;".$activity->getPriceMember(),	
					'MEMBER_PRICE'			=> "&euro;".$activity->getPriceMember(),	
					'L_DISPLAY_LIMIT'		=> $user->lang['ACP_DC_ACT_DISPLAY_LIMIT'],
					'L_SELECT_USER'			=> $user->lang['SELECT_USER'],
					'L_SELECT_USERS'			=> $user->lang['SELECT_USERS'],
				));		
					
				$this->page_title = 'ACP_DC_ACT_ENROLL';
				$this->tpl_name = 'dc/acp_dc_activity_enrolls';
				break;
			case 'send_mail':
				
				$user->add_lang('acp/email');
				$form_key = 'acp_send_mail';
				$form_title = 'ACP_DC_AC_SEND_MAIL';
				add_form_key($form_key);
				
				$random_seed = $this->generateRandomString();
				$email_to_users = utf8_normalize_nfc(request_var('usrid', $random_seed));	// get all the users ids to send to
				$activity_id = intval(utf8_normalize_nfc(request_var('id', $random_seed)));	// get current event
				
				if($activity_id != $random_seed){										// check if event exists
					$activity = Activity::get_activity($activity_id, $activities_handler);
						
						if($activity == NULL){
							trigger_error($user->lang['DC_ACT_NO_ACT']);
						}
						
						if (!$activity->is_manager($user->data['user_id']))
						{
							 trigger_error('NOT_AUTHORISED');
						}
				}else{
					trigger_error($user->lang['DC_ACT_NO_ACT']);
				}
				user_get_id_name(explode(GROUP_SEPARATOR, $email_to_users),$usernames);
				if($email_to_users != $random_seed){
					
					$this->new_config['send_to_users'] =  implode("\n", $usernames);
					
				}
				
				$template->assign_vars(array(
					'L_MEMBER_PRICE'		=> $user->lang['ACP_DC_ACT_PRICE_MEMBER'],
					'L_PRICE'				=> $user->lang['ACP_DC_ACT_PRICE'],
				));	
				
				$display_vars = array(
					'title'	=> $form_title,
					
					'vars'	=> array(				
						'legend1'=> 'APC_DC_SEND_MAIL_SETTINGS',
							'send_to_users'	=> array(
								'lang' => 'SEND_TO_USERS',
								'validate' => 'text',
								'type' => 'custom',
								'empty' => true,
								'method' => 'select_user',
								'explain' => true,
								'params' => array('{CONFIG_VALUE}', '{KEY}', $form_title),
								'explain' => true
							),
							'subject'	=> array(
								'lang' => 'SUBJECT',
								'validate' => 'string',
								'type' => 'text:50:100',
								'empty' => false,
								'explain' => false,
								'append' => " - ". $activity->getName()
							),
							'from'	=> array(
								'lang' => 'DC_ACT_EMAIL_FROM',
								'validate' => 'emailaddress',
								'type' => 'text:50:100',
								'empty' => true,
								'explain' => true,
							),
							
							'message'	=> array(
								'lang' => 'MASS_MESSAGE',
								'validate' => 'text',
								'type' => 'custom',
								'empty' => false,
								'method' => 'acp_description',
								'explain' => false
							),
					)
				);

					// set text for activities
					$template->assign_vars(array(
						'FORM_TITLE'			=> $form_title,
						'EVENT_TITLE'			=> $activity->getName(),
						'L_EVENT_TITLE'			=> ucfirst(strtolower($user->lang['ACP_DC_ACT_NAME'])),
					));					
				
			
				$this->page_title = 'ACP_DC_AC_SEND_MAIL';
				$this->tpl_name = 'dc/acp_dc_activity_send_mail';
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
		
		/////////////////////////////
		///// 	  GET INPUT	     ////
		/////////////////////////////
	
		if (isset($display_vars['lang'])){
			$user->add_lang($display_vars['lang']);
		}
		$cfg_array = utf8_normalize_nfc(request_var('config', array('' => ''), true));
		$error = array();
		switch($mode){
			case 'edit_activity': 
			case 'recycle_activity': 
			case 'new_activity':
				if(!isset($cfg_array["commission"]))
						$cfg_array["commission"] = $this->new_config['commission'];
			break;
		}
		
		
		
		
		// We validate the complete config if whished
		if(isset($display_vars['vars'])){
			validate_config_vars($display_vars['vars'], $cfg_array, $error);
		}
		
		//fix the default setting for enroll
		if(!isset($cfg_array['enroll'])){
			$cfg_array['enroll'] = null;
		}

		
		// check if form key is valid
		if (($submit || $preview) && !check_form_key($form_key)){
			$error[] = $user->lang['FORM_INVALID'];
		}
		/////////////////////////////
		///// AS INPUT IS A FORM ////
		/////////////////////////////
		
		// check default the input for a form
		if(($submit || $preview) && isset($display_vars)){
			$error = array_merge($error, check_form($display_vars, $cfg_array));
		}
		
		//////////////////////////////////////
		////// MODE SPECIFIC INPUT CHECK /////
		//////////////////////////////////////
		
		//// mode  = new_activity  ////
		if(($submit || $preview) && !count($error)){
			switch($mode){
				case 'edit_activity':
				case 'recycle_activity':
				case 'new_activity':
					//check enroll
					$enrol = true;
					switch($cfg_array["enroll"]){
						case 'yes':
							$enrol = true;
							break;
						case 'no':
							$enrol = false; 
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
					$sql = "SELECT COUNT(g.group_id) AS amount
						FROM " . GROUPS_TABLE . " g
						WHERE ". $db->sql_in_set('g.group_id', $cfg_array["commission"], false, false) ."
						AND ". $db->sql_in_set('g.group_id', unserialize(EXCLUDE_GROUPS_COMMISSION), true, false)."
						AND ". $db->sql_in_set('g.group_type', unserialize(EXCLUDE_PRE_DEFINED_GROUPS), true, false);
					$result = $db->sql_query($sql);
					$row = $db->sql_fetchrow($result);
					if(!(int)$row['amount']){ 	// no commission found
						$error[] = ucfirst(strtolower($user->lang[$display_vars['vars']['commission']['lang']] . $user->lang["UNVALID"]));
					}
					
					//check if all users exists
					if(!empty($cfg_array["add_group_manager"])){
						$groups_managers = array_unique(explode(GROUP_SEPARATOR, $cfg_array["add_group_manager"])); // split array by the separator and remove duplicate groups
						
						// convert groups name input in to database name input
						foreach($groups_managers as $key => $group_name_input){								// loop through all input groups names
							$groups_managers[$key] = trim($groups_managers[$key]);									// remove spaces
							if( $temp = array_search($groups_managers[$key], $user->lang) ){					// check if the current group is in the language files
								$group_name_db = preg_replace("/G_/", "", $temp);					// convert language name to database name: get the name from the language files and remove the G_
							}else{
								$group_name_db = $group_name_input;									// set inpute name to database name
							}
							$groups_save[trim($group_name_db)] = $groups_managers[$key];						// make an array for later checkes
							$groups_managers[$key] = trim($group_name_db);									// remove spaces from the input				
						}
						$new_managers_groups = array();													// array for all validated groupnames
						$sql_array = array(
							'SELECT'    => 'g.group_id AS group_id, g.group_name as group_name',

							'FROM'      => array(
								GROUPS_TABLE => 'g',
							),

							'WHERE'     =>  $db->sql_in_set('g.group_name', $groups_managers),
						);

						$sql = $db->sql_build_query('SELECT', $sql_array);

						// Run the built query statement
						$result = $db->sql_query($sql);
						while($valid_groups = $db->sql_fetchrow($result)){
							$new_managers_groups[ intval($valid_groups['group_id']) ] = array( 
								'group_id' 		=> intval($valid_groups['group_id']), 
								'created' 		=> new DateTime("NOW"), 
								'access' 		=> GROUPS_MANAGES_ENABLED,
							);
							unset($groups_save[$valid_groups['group_name']]); 						// remove group from the save list
						}
						
						if(count($groups_save) > 0){												// check if there are unfound groups
							foreach($groups_save as $group_name_db => $group_name_input){			// loop trough all unfound groups
								$error[] = ucfirst(strtolower($group_name_input ." ". $user->lang['GROUP'] ." ". $user->lang['NOT_FOUND'] ." ". $user->lang['IN'] ." ". $user->lang[$display_vars['vars']['add_group_manager']['lang']])) ;		// set error
							}
						}
						unset ($groups_save);
						unset ($groups_managers);
						$db->sql_freeresult($result);												// clear sql
					}

					//check if all groups exists
					if(!empty($cfg_array["add_group"])){
							
						$groups = array_unique(explode(GROUP_SEPARATOR, $cfg_array["add_group"])); // split array by the separator and remove duplicate groups
						// convert groups name input in to database name input
						foreach($groups as $key => $group_name_input){								// loop through all input groups names
							$groups[$key] = trim($groups[$key]);									// remove spaces
							if( $temp = array_search($groups[$key], $user->lang) ){					// check if the current group is in the language files
								$group_name_db = preg_replace("/G_/", "", $temp);					// convert language name to database name: get the name from the language files and remove the G_
							}else{
								$group_name_db = $group_name_input;									// set inpute name to database name
							}
							$groups_save[trim($group_name_db)] = $groups[$key];						// make an array for later checkes
							$groups[$key] = trim($group_name_db);									// remove spaces from the input				
						}
						$new_access_groups = array();													// array for all validated groupnames
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
							$new_access_groups[ intval($valid_groups['group_id']) ] = array( 
								'group_id' 		=> intval($valid_groups['group_id']), 
								'created' 		=> new DateTime("NOW"), 
								'access' 		=> GROUPS_ACCESS_ENABLED,
							); 	
							unset($groups_save[$valid_groups['group_name']]); 						// remove group from the save list
						}
						
						if(!empty($groups_save)){												// check if there are unfound groups
							foreach($groups_save as $group_name_db => $group_name_input){			// loop trough all unfound groups
								$error[] = ucfirst(strtolower($group_name_input ." ". $user->lang['GROUP'] ." ". $user->lang['NOT_FOUND'] ." ". $user->lang['IN'] ." ". $user->lang[$display_vars['vars']['add_group']['lang']])) ;		// set error
							}
						}
						unset ($groups_save);
						unset ($groups);
						$db->sql_freeresult($result);												// clear sql
						
					}
					
					// combine date and time inputs and check if they are valid
					if(count($error) == 0){
						$timezone = new DateTimeZone(date_default_timezone_get());			// get current timezone
						$start_date_time = new DateTime($cfg_array['start_date'] ." ".  $cfg_array['start_time'], $timezone);		// set start date + time
						$end_date_time = new DateTime($cfg_array['end_date'] ." ".  $cfg_array['end_time'], $timezone);				// set end date + time
						
						//Check if activity is current 
						if($activity_allowed_to_change){
							// check if start date+time  > now
							if(new DateTime("now") > $start_date_time){
								$error[] = ucfirst(strtolower(
									$user->lang[$display_vars['vars']['start_date']['lang']] ." ". $user->lang['AND'] ." ". $user->lang[$display_vars['vars']['start_time']['lang']] 
									." ". $user->lang["CANT_PAST"]
								));
							}
						}
						
						// check if end date+time is later than start date+time
						if( $end_date_time < $start_date_time ){
							$error[] = ucfirst(strtolower(
									$user->lang[$display_vars['vars']['end_date']['lang']] ." ". $user->lang['AND'] ." ". $user->lang[$display_vars['vars']['end_time']['lang']]
									 ." ".$user->lang["EARLYER"]." ".
									$user->lang[$display_vars['vars']['start_date']['lang']] ." ". $user->lang['AND'] ." ". $user->lang[$display_vars['vars']['start_time']['lang']] 
								)); // set error
						}
						//check if enroll date/time > start date/time 
						if($activity_allowed_to_change){
							if(!empty($cfg_array['enroll_date'])){					// date empty
								$end_date_time_input = $cfg_array['enroll_date'];	// get input
								$end_date_time_input .= (!empty($cfg_array['enroll_time'])) ? " ". $cfg_array['enroll_time'] : " 23:59:59"; // if time is empty
								$enroll_date_time = new DateTime($end_date_time_input, $timezone);	// make a datetime object
								if($enroll_date_time > $start_date_time){			// check if enroll date+time > start date+time
									$error[] = ucfirst(strtolower(
										$user->lang[$display_vars['vars']['enroll_date']['lang']] ." ". $user->lang['AND'] ." ". $user->lang[$display_vars['vars']['enroll_time']['lang']]
										 ." ".$user->lang["CANT_LATER"]." ".
										$user->lang[$display_vars['vars']['start_date']['lang']] ." ". $user->lang['AND'] ." ". $user->lang[$display_vars['vars']['start_time']['lang']] 
									)); // set error
								}
								//Check if activity is current 
								
									// check if enroll date time is in the past
									if($enroll_date_time < new DateTime('now')){
										$error[] = ucfirst(strtolower(
											$user->lang[$display_vars['vars']['enroll_date']['lang']] ." ". $user->lang['AND'] ." ". $user->lang[$display_vars['vars']['enroll_time']['lang']]
											 ." ".$user->lang["CANT_PAST"] 
										)); // set error
									}
								
									
							}else{
								$enroll_date_time = $start_date_time;
							}
						}
						//Check if activity is current 
						if($activity_allowed_to_change){
							if(!empty($cfg_array['end_date_unsubscribe'])){
								$end_datetime_unsubscribe = $cfg_array['end_date_unsubscribe'];	// get input
								$end_datetime_unsubscribe .= (!empty($cfg_array['end_time_unsubscribe'])) ? " ". $cfg_array['end_time_unsubscribe'] : " 23:59:59"; // if time is empty
								$end_datetime_unsubscribe = new DateTime($end_datetime_unsubscribe, $timezone);	// make a datetime object
								if($end_datetime_unsubscribe > $start_date_time){
									$error[] = ucfirst(strtolower(
										$user->lang[$display_vars['vars']['end_date_unsubscribe']['lang']] ." ". $user->lang['AND'] ." ". $user->lang[$display_vars['vars']['end_time_unsubscribe']['lang']]
										 ." ".$user->lang["CANT_LATER"]." ".
										$user->lang[$display_vars['vars']['start_date']['lang']] ." ". $user->lang['AND'] ." ". $user->lang[$display_vars['vars']['start_time']['lang']] 
									)); // set error	
								}
								
								//check if end_datetime_unsubscribe < enroll_date_time
								if($end_datetime_unsubscribe < $enroll_date_time){
									$error[] = ucfirst(strtolower(
										$user->lang[$display_vars['vars']['end_date_unsubscribe']['lang']] ." ". $user->lang['AND'] ." ". $user->lang[$display_vars['vars']['end_time_unsubscribe']['lang']]
										 ." ".$user->lang["CANT_LATER"]." ".
										$user->lang[$display_vars['vars']['enroll_date']['lang']] ." ". $user->lang['AND'] ." ". $user->lang[$display_vars['vars']['enroll_time']['lang']] 
									)); // set error	
								}
								
								// check if enroll date time is in the past
								if($end_datetime_unsubscribe < new DateTime('now')){
									$error[] = ucfirst(strtolower(
										$user->lang[$display_vars['vars']['end_date_unsubscribe']['lang']] ." ". $user->lang['AND'] ." ". $user->lang[$display_vars['vars']['end_time_unsubscribe']['lang']]
										 ." ".$user->lang["CANT_PAST"] 
									)); // set error
								}
							} else{
								$end_datetime_unsubscribe=$start_date_time;
							}
						}
					}
					break;
				case 'enrolls':
					
					// Convert usernames to user id and check if user exist (and sometimes if the users is enrolled)
					if(!empty($cfg_array['select_user_multiple'])){
						$username = array_unique(explode("\n", $cfg_array["select_user_multiple"]));	// get the (new) user(s)
						$ttl_users = count($username);	// count to check the user name to id convertion
						$user_ids =  array();
						user_get_id_name($user_ids,$username);	// convert from username to user id
						if(count($user_ids) != $ttl_users){		// check if there is an invalid username
							$error[] = $user->lang['ACP_DC_ACT_INVALED_USERNAME'];
						}
						$update_users = array();
						$not_found_users = array();
						// more checks bases on the action
						
						
						foreach($user_ids AS $index => $id){
							switch(intval($cfg_array["action_options"])){
								case CHANCE_PAYMENT:
									$update_users[]= array(
										"user_id"	=> $id,
										"user_ip"	=> $user->ip,
										"price_paid"=> (double)$cfg_array['amount_paid']
									);
									break;
								case SEND_EMAIL:
									$update_users[] = $id;
									break;
								case ADD_USERS:
								case SUBSCRIBE_USER:
									$update_users[] = array(
										"user_id"	=> $id,
										"user_ip"		=> $user->ip,
										"status" 	=> USER_SIGN_IN
									);
									break;
								case UNSUBSCRIBE_USER:
									$update_users[] = array(
										"user_id"	=> $id,
										"user_ip"		=> $user->ip,
										"status"	=> USER_SIGN_OUT
									);
									break;
								default:
									$not_found_users[] = $id;
							}
						}
						
						$usernames = NULL;
						
						$usernames = array();
						user_get_id_name($not_found_users,$usernames);
						foreach($usernames AS $index => $name){		// if there are unrolled users show the error
							$error[] = $name.' '. $user->lang['DC_ACT_USER_NOT_ENROLLED'];	// add to error
						}
						unset($username);
						unset($user_ids);
						unset($not_found_users);
					}
					
					if(!isset($action_options[intval($cfg_array["action_options"])])){
						$error[] = $user->lang['DC_ACT_INVALID_ACTION'];
					}
					
					if(!isset($update_users)){
						$error[] = $user->lang['ACP_DC_SELECT_USERS'];
					}
					
					break;
				case 'send_mail':
					if(!empty($cfg_array['send_to_users'])){
						$enroll_list = $activity->get_enrol_list(ALL_USERS); 

						$usernames = array_unique(explode("\n", $cfg_array["send_to_users"]));
						$action_users = $usernames; //$action_users is later used to print the usernames
						$ttl_users = count($usernames);
						$user_ids =  array();
						user_get_id_name($user_ids,$usernames);
						if(count($user_ids) != $ttl_users){
							$error[] = $user->lang['ACP_DC_ACT_INVALED_USERNAME'];
						}
						$update_users= array();
						$not_found_users = array();
						foreach($user_ids AS $index => $id){
							if(!isset($enroll_list[$id])){
								$not_found_users[] = $id;	
							}else {
								$update_users[] = intval($id);
							}
						}
						unset($id);
						$usernames = NULL;
						$usernames = array();
						user_get_id_name($not_found_users,$usernames);
						foreach($usernames AS $index => $name){
							$error[] = $name.' '. $user->lang['DC_ACT_USER_NOT_ENROLLED'];
						}
						unset($usernames);
						unset($user_ids);
						unset($not_found_users);
						
					}
					
					break;
			}
		}
		/// end mode = new_activity ///
		
		//////////////////////////////////////
		////// CHECK FOR ERRORS AND SEND /////
		//////////////////////////////////////
		
		// Do not write values if there is an error
		if (sizeof($error)){
			$submit = false;
			$preview = false;
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
				case 'edit_activity': 
				case 'recycle_activity': 
				case 'new_activity':
				
					if( isset($activity_id) ){
							$activity = Activity::get_activity($activity_id, $activities_handler);
							
							if($activity == NULL){
								trigger_error($user->lang['DC_ACT_NO_ACT']);
							}
							
							// get authorisation 
							if (!$activity->is_manager($user->data['user_id']))
							{
								 trigger_error('NOT_AUTHORISED');
							}
					}else{
						$activity = new Activity();
					}
						
					if($activity->check_allowed_to_change(false)){
						$activity->setStartDatetime($start_date_time);
						$activity->setEnrolDateTime($enroll_date_time);
						$activity->setUnsubscribeMaxDatetime($end_datetime_unsubscribe);
					}					
					
					$activity->setName($cfg_array['activity_name']);
					$activity->setDescription($cfg_array['description']);
					$activity->setEndDatetime($end_date_time);
					$activity->setEnrol($enrol);
					$activity->setEnrolMax((int)$cfg_array['enroll_max']);
					$activity->setPrice((double)$cfg_array['price']);
					$activity->setPriceMember((double)$cfg_array['price_member']);
					$activity->setLocation($cfg_array['location']);
					$activity->setPayOption($cfg_array['pay_option']);
					$activity->setCommission($cfg_array['commission']);
					if($activity->save()){				// save new activity and check if saving is done
						// set groups access
						if(isset($new_access_groups)  && !empty($new_access_groups)){
								$activity->set_groups_access($new_access_groups, TRUE);
							
						}
						
						// set group access
						if(isset($new_managers_groups)  && count($new_managers_groups) > 0){
								$activity->set_groups_managers($new_managers_groups, TRUE);
							
						}
					}else{
						trigger_error("Error while saving");
					}
					add_log('admin', 'LOG_CONFIG_' . strtoupper($mode));
					trigger_error($user->lang['CONFIG_UPDATED'] . adm_back_link(append_sid($phpbb_root_path.'adm/index.'.$phpEx, "i=dc_activity_management&mode=overview" )));
					break;
				case 'enrolls':
					if(isset($update_users)){
						
						switch(intval($cfg_array["action_options"])){
							case UNSUBSCRIBE_USER:
							case SUBSCRIBE_USER:
							case CHANCE_PAYMENT:
							case ADD_USERS:
								$activity->set_users_status($update_users);
								break;
							case SEND_EMAIL:
								redirect(append_sid($phpbb_root_path.'adm/index.'.$phpEx, "i=dc_activity_management&mode=send_mail&id=". $activity->getId() ."&usrid=" . implode(GROUP_SEPARATOR, $update_users) ));
								break;
						}
					}
					break;
				case 'send_mail':
				
					$sql = 'SELECT username, user_email, user_jabber, user_notify_type, user_lang
							FROM ' . USERS_TABLE . '
							WHERE ' . $db->sql_in_set('user_id', $update_users) . '
							ORDER BY user_lang, user_notify_type'; // , SUBSTRING(user_email FROM INSTR(user_email, '@'))
					
					$result = $db->sql_query($sql);
					$row = $db->sql_fetchrow($result);

					$i = $j = 0;
					
					// Send with BCC
					// Maximum number of bcc recipients
					$max_chunk_size = (int) $config['email_max_chunk_size'];
					$email_list = array();
					$old_lang = $row['user_lang'];
					$old_notify_type = $row['user_notify_type'];

					do
					{
						if (($row['user_notify_type'] == NOTIFY_EMAIL && $row['user_email']) ||
							($row['user_notify_type'] == NOTIFY_IM && $row['user_jabber']) ||
							($row['user_notify_type'] == NOTIFY_BOTH && ($row['user_email'] || $row['user_jabber'])))
						{
							if ($i == $max_chunk_size || $row['user_lang'] != $old_lang || $row['user_notify_type'] != $old_notify_type)
							{
								$i = 0;

								if (sizeof($email_list))
								{
									$j++;
								}

								$old_lang = $row['user_lang'];
								$old_notify_type = $row['user_notify_type'];
							}

							$email_list[$j][$i]['lang']		= $row['user_lang'];
							$email_list[$j][$i]['method']	= $row['user_notify_type'];
							$email_list[$j][$i]['email']	= $row['user_email'];
							$email_list[$j][$i]['name']		= $row['username'];
							$email_list[$j][$i]['jabber']	= $row['user_jabber'];
							$i++;
						}
					}
					while ($row = $db->sql_fetchrow($result));
					$db->sql_freeresult($result);
					
					$errored = false;
					$url = generate_board_url() . '/dc/dc_activity.php'; 	// activity page

					for ($i = 0, $size = sizeof($email_list); $i < $size; $i++)
					{
						$messenger = new messenger(false);
						$used_lang = $email_list[$i][0]['lang'];

						for ($j = 0, $list_size = sizeof($email_list[$i]); $j < $list_size; $j++)
						{
							$email_row = $email_list[$i][$j];

							$messenger->{((sizeof($email_list[$i]) == 1) ? 'to' : 'bcc')}($email_row['email'], $email_row['name']);
							$messenger->im($email_row['jabber'], $email_row['name']);
						}
						$messenger->template('dc_activity_message', $used_lang);

						$messenger->anti_abuse_headers($config, $user);

						$messenger->subject(htmlspecialchars_decode($cfg_array['subject'] ." - ". $activity->getName()));

						$messenger->assign_vars(array(
							'ACTIVITY_NAME'    		=> $activity->getName(),
							'USERNAME'    			=> $email_row['name'],
							'MESSAGE'    			=> htmlspecialchars_decode($cfg_array['message']),
							'LINK'    				=> $url ."?act=".$activity->getId(),		// remove all query parameters (like: ?sid=XXXX) and add only the current activity
							'COMMISSION'    		=> get_group_name($activity->getCommission())
						));
						
						// chech if other sending/receving email address is used
						if(!empty($cfg_array['from'])){
							$messenger->replyto($cfg_array['from']);
							$messenger->from($cfg_array['from']);
						}

						if (!($messenger->send()))
						{
							$errored = true;
						}
					}
					unset($email_list);

					$messenger->save_queue();
					
					if (!$errored)
					{
						add_log('admin', 'LOG_MASS_EMAIL', implode(', ', utf8_normalize_nfc($action_users)));
						
						$message = $user->lang['EMAIL_SENT'];
						trigger_error($message . adm_back_link(append_sid($phpbb_root_path.'adm/index.'.$phpEx, "i=dc_activity_management&mode=overview" )));
					}
					else
					{	
						$message = sprintf($user->lang['EMAIL_SEND_ERROR'], '<a href="' . append_sid("{$phpbb_admin_path}index.$phpEx", 'i=logs&amp;mode=critical') . '">', '</a>');
						trigger_error($message . adm_back_link($this->u_action), E_USER_WARNING);
					}
					
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
			$this->page_title = $display_vars['title'];

			$template->assign_vars(array(
				'S_ERROR'			=> (sizeof($error)) ? true : false,
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
		///////////////////////////////////////
		///////  mode specific output ////////
		//////////////////////////////////////
		
		switch($mode){
			case 'past_activities':
			
			// Set up general vars
				$user->add_lang('mcp');
				$user->add_lang('acp/email');
				$user->add_lang('mods/dc_activity');
				$action		= request_var('action', '');
				$forum_id	= request_var('f', 0);
				$topic_id	= request_var('t', 0);
				$start		= request_var('start', 0);

				// Sort keys
				$limit	= request_var('st', 25);
				$sort_key	= request_var('sk', 's');
				$sort_dir	= request_var('sd', 'd');


				// Sorting
				$limit_records = array(
					0 	=> $user->lang['ALL_ACTIVITY'],
					5 	=> sprintf($user->lang['LIST_ACTIVITYS'], 5),
					10 	=> sprintf($user->lang['LIST_ACTIVITYS'], 10),
					25 	=> sprintf($user->lang['LIST_ACTIVITYS'], 25),
					50 	=> sprintf($user->lang['LIST_ACTIVITYS'], 50), 
					100	=> sprintf($user->lang['LIST_ACTIVITYS'], 100)
				);
				
				$sort_by_text = array(
					's'	=> $user->lang['ACP_DC_ACT_START_DATE'],
					'n'	=> $user->lang['ACP_DC_ACT_NAME'], 
					'a'	=> $user->lang['ACP_DC_ACT_AMOUNT_SIGNED'], 
					'c'	=> $user->lang['ACP_DC_ACT_COMMISSION']
				);
				
				$sort_by_sql = array(
					's' => START_DATETIME, 
					'n' => NAME, 
					'a' => AMOUNT_SUBSCRIBED, 
					'c' => COMMISSION, 
				);
				
				$s_limit_records = $s_sort_key = $s_sort_dir = $u_sort_param = '';
				gen_sort_selects($limit_records, $sort_by_text, $limit, $sort_key, $sort_dir, $s_limit_records, $s_sort_key, $s_sort_dir, $u_sort_param);
				$sql_sort =($sort_dir == 'd') ? DESC : ASC;
				
				
				// get all past activities
				$search = array(
					USER_READED 		=> FALSE,
					MANAGERS_GROUPS		=> TRUE,
				);
				
				if($submit){
					
					foreach($cfg_array AS $name => $value){
						switch($name){
							case 'activity_name':
								$search[NAME] = $value;
								break;
							case 'start_datetime_from':
								$search[START_DATETIME] = array(
									DATE_BEGIN 	=> new DateTime($cfg_array['start_date_from']) ,
									DATE_END 	=> new DateTime($cfg_array['start_date_to']),
									OPERATOR	=> OP_BETWEEN,
								);
								break;
							case 'end_datetime_from':
								$search[END_DATETIME] = array(
									DATE_BEGIN 	=> new DateTime($cfg_array['end_date_from']) ,
									DATE_END 	=> new DateTime($cfg_array['end_date_to']),
									OPERATOR	=> OP_BETWEEN,
								);
								break;
						}
					}
				}
				// set default search
				if(!isset($search[START_DATETIME])){
					$search[START_DATETIME] = array(
						DATE_BEGIN 	=> new DateTime('NOW') ,
						OPERATOR	=> OP_LOWER,
					);
				}
								
				$events_past = $activities_handler->get_user_activities(intval($user->data['user_id']), MANAGEMENT_ACCESS, ALL, $search, $sort_by_sql[$sort_key], $sql_sort, $limit, $start);
				
				$group_name_ary = array();
				foreach($events_past AS $index => $activity){
					if(!isset($group_name_ary[$activity->getCommission()])){
						$group_name_ary[$activity->getCommission()] = get_group_name($activity->getCommission());
					}
					$template->assign_block_vars('events_past', array(
						'EVENT_TITLE'		=> $activity->getName(),
						'EVENT_ENTERED'		=> $activity->getAmountEnrolledUser(),
						'EVENT_COMMISSION'	=> $group_name_ary[$activity->getCommission()],
						'EVENT_PREVIEW'		=> append_sid($phpbb_root_path. "dc/dc_activity.".$phpEx, 'act='.$activity->getId()),
						'START_DATE_TIME'	=> $user->format_date( $activity->getStartDatetime()->getTimestamp()),
						'U_ENROLL'			=> append_sid($phpbb_root_path.'adm/index.'.$phpEx, 'i=dc_activity_management&mode=enrolls&amp;id=' . $activity->getId()),
						'U_RECYCLE'			=> append_sid($phpbb_root_path.'adm/index.'.$phpEx, 'i=dc_activity_management&mode=recycle_activity&amp;id=' . $activity->getId())
					));
					
				}
				$total_activities = $activities_handler->get_last_activities_counter();
				$pagination_url = $this->u_action. "&amp;$u_sort_param&amp;start=$start";
				
				//fix: if show all users, don't pagination
				if($limit == 0){
					// limit 0 for database = show all, limit 0 for pagination is every entry one page
					$limit = $total_activities;
				}
				$template->assign_vars(array(
					'U_ACTION'		=> $pagination_url,

					'PAGINATION'        => generate_pagination($pagination_url, $total_activities, $limit, $start,true),
					'PAGE_NUMBER'       => on_page($total_activities, $limit, $start),
					'TOTAL_ACTIVITIES'       => ($total_activities == 1) ? $user->lang['LIST_ACTIVITY'] : sprintf($user->lang['LIST_ACTIVITYS'], $total_activities),

					'S_LIMIT_RECORDS'	=> $s_limit_records,
					'S_SORT_KEY'	=> $s_sort_key,
					'S_SORT_DIR'	=> $s_sort_dir,
					'L_DISPLAY_LIMIT'		=> $user->lang['ACP_DC_ACT_DISPLAY_LIMIT'],
					)
				);
				break;
			case 'enrolls':
			
				// Set up general vars
				$user->add_lang('mcp');
				$user->add_lang('acp/email');
				$user->add_lang('mods/dc_activity');
				$action		= request_var('action', '');
				$forum_id	= request_var('f', 0);
				$topic_id	= request_var('t', 0);
				$start		= request_var('start', 0);

				// Sort keys
				$limit	= request_var('st', 25);
				$sort_key	= request_var('sk', 'r');
				$sort_dir	= request_var('sd', 'a');
				$sort_show	= request_var('ss', 'a');

				// Sorting
				$limit_records = array(
					0 	=> $user->lang['ALL_USERS'],
					5 	=> sprintf($user->lang['LIST_USERS'], 5),
					10 	=> sprintf($user->lang['LIST_USERS'], 10),
					25 	=> sprintf($user->lang['LIST_USERS'], 25),
					50 	=> sprintf($user->lang['LIST_USERS'], 50), 
					100	=> sprintf($user->lang['LIST_USERS'], 100)
				);
				
				$sort_by_text = array(
					'r'	=> $user->lang['DC_ACT_REALNAME'],
					'u'	=> $user->lang['USERNAME'], 
					'c'	=> $user->lang['ACP_DC_ACT_COMMENT'], 
					's'	=> $user->lang['ACP_DC_ACT_STATUS'], 
					'p'	=> $user->lang['PAID']
				);
				
				$sort_by_sql = array(
					'r' => 'real_name', 
					'u' => 'username', 
					'c' => 'comments', 
					's' => 'status', 
					'p' => 'price_paid'
				);
				
				switch($sort_show){
					case 'a':
						$s_sort_show = ALL_USERS;
						$sort_pay  = NULL;
						break;
					case 'p':
						$s_sort_show = ENROLLED_USERS;
						$sort_pay  = PAID_USER;
						break;
					case 'np':
						$s_sort_show = ENROLLED_USERS;
						$sort_pay  = NOT_PAID_USER;
						break;
					case 'e':
						$s_sort_show = ENROLLED_USERS;
						$sort_pay  = NULL;
				}

				$s_limit_records = $s_sort_key = $s_sort_dir = $u_sort_param = '';
				gen_sort_selects($limit_records, $sort_by_text, $limit, $sort_key, $sort_dir, $s_limit_records, $s_sort_key, $s_sort_dir, $u_sort_param);
				$sql_sort =($sort_dir == 'd') ? 'DESC' : 'ASC';
				// send the list if all subscribed users to the template
				if( $enroll_list = $activity->get_enrol_list($s_sort_show, $sql_sort, $sort_by_sql[$sort_key], $sort_pay , $limit, $start) ){	// are there subscribed users
					foreach($enroll_list AS $user_id => $info ){			//loop though all the subscribed users
										

						$template->assign_block_vars('users', array(		// set template array
							'USER_NAME'			=> $info['username'],
							'REAL_NAME'			=> $info['real_name'],
							'USER_LINK'			=> append_sid($phpbb_root_path.'memberlist.'.$phpEx, "mode=viewprofile&u=". $user_id),
							'COMMENT'			=> $info['comments'],
							'STATUS'			=> $user->lang[strtoupper($info['status'])],
							'PRICE_PAID'		=> "&euro;".$info['price_paid'],
							'PAYMENT_DONE'		=>  ($info['price_paid'] >= $activity->calculate_price($user_id) ? $user->lang['YES'] :"<font color='red'>". $user->lang['NO']. "</font>" ) ,
						));	
					}
					
				}
				$total_users = $activity->getLastEnrollListCount();
				$pagination_url = $this->u_action. "&amp;id=".$activity_id. "&amp;$u_sort_param&amp;";
				
				//fix: if show all users, don't pagination
				if($limit == 0){
					// limit 0 for database = show all, limit 0 for pagination is every entry one page
					$limit = $total_users;
				}
				$template->assign_vars(array(
					'U_ACTION'		=> $pagination_url,

					'PAGINATION'        => generate_pagination($pagination_url, $total_users, $limit, $start,true),
					'PAGE_NUMBER'       => on_page($total_users, $limit, $start),
					'TOTAL_USERS'       => ($total_users == 1) ? $user->lang['LIST_USER'] : sprintf($user->lang['LIST_USERS'], $total_users),

					'S_LIMIT_RECORDS'	=> $s_limit_records,
					'S_SORT_KEY'	=> $s_sort_key,
					'S_SORT_DIR'	=> $s_sort_dir,
					'S_SORT_SHOW'	=> $this->apc_dc_subscibe_create_show($sort_show, 'ss')
					)
				);
			break;
			case 'send_mail':
				if($preview){
					$url = generate_board_url() . '/dc/dc_activity.php';		// get current page
					$messenger = new messenger();
					$messenger->subject(htmlspecialchars_decode($cfg_array['subject'] ." - ". $activity->getName()));
					$messenger->template('dc_activity_message',$user->data['user_lang']);
					$messenger->to($user->data['user_email'], $user->data['username']);
					$messenger->im($user->data['user_jabber'], $user->data['username']);
					$messenger->assign_vars(array(
						'ACTIVITY_NAME'    		=> $activity->getName(),
						'USERNAME'    			=> $action_users[0],
						'MESSAGE'    			=> htmlspecialchars_decode($cfg_array['message']),
						'LINK'    				=> $url ."?act=".$activity->getId(),		// remove all query parameters (like: ?sid=XXXX) and add only the current activity
						'COMMISSION'    		=> get_group_name($activity->getCommission())
					));
					$messenger->anti_abuse_headers($config, $user);
						
					
					if(!empty($cfg_array['from'])){
						$messenger->replyto($cfg_array['from']);
						$messenger->from($cfg_array['from']);
						$template->assign_vars(array(
							'S_FROM'				=> $cfg_array['from'],
						));	
						
					}else{
						$template->assign_vars(array(
							'S_FROM'				=> "<b>noreply@gumbo-millennium.nl</b>",
						));	
					}
					
					$messenger->send($user->data['user_notify_type'], true);
					
					// set text for activities
					$template->assign_vars(array(
						'PREVIEW'				=> true,
						'L_MESSAGE'				=> $user->lang["MESSAGE"],
						'S_MESSAGE'				=> nl2br($messenger->msg),
						'L_SUBJECT'				=> $user->lang["SUBJECT"],
						'S_SUBJECT'				=> $messenger->subject,
						'L_RECIEVERS'			=> $user->lang["SEND_TO_USERS"], 
						'S_RECIEVERS'			=> implode(", ", $action_users),
						'L_FROM'				=> $user->lang["DC_ACT_EMAIL_FROM"],
					));	
				}
			break;
		}
	}
	
	function generateRandomString($length = 10) {
		$characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
		$randomString = '';
		for ($i = 0; $i < $length; $i++) {
			$randomString .= $characters[rand(0, strlen($characters) - 1)];
		}
		return $randomString;
	}   
	
	function apc_dropdown($value, $key, $dropdown, $first_emty = false){
		$output = "";
		if($first_emty == "true"){
			$output .= "<option></option>" ;
		}
		foreach($dropdown AS $index => $array_value){
			$selected = ($value === $index) ? "selected=selected" : "";
			$output .= "<option value=".$index." ".$selected."> ".$array_value." </option>";
		}
		return $output;
	}
	
  function apc_enroll($value, $key)
	{	
		$radio_ary = array('yes' => 'YES', 'no' => 'NO');
		$value = ($value != 'yes' || $value != 'no') ? $value : 'yes';
		$output = '<input id="config['.$key.']" class="radio" type="radio" value="yes" '. ($value == 'yes' ? 'checked="checked"' : '' ) .' name="config['.$key.']">';
		$output = '<input id="config['.$key.']" class="radio" type="radio" value="no" '. ($value == 'no' ? 'checked="checked"' : '' ) .' name="config['.$key.']">';
		
		return h_radio('config['.$key.']', $radio_ary, $value, 'config['.$key.']');
  }
   
   // make dropdown box for payment options: chash or iDeal
   function apc_pay_options($value){
		global $user;
		$options = '<option value="cash"' . (($value == "cash") ? ' selected="selected"' : '') . '>' . $user->lang['CASH'] . '</option>';
		$options .= '<option value="iDeal"' . (($value == "iDeal") ? ' selected="selected"' : '') . '>' . $user->lang['IDEAL'] . '</option>';
		
		return $options;
   }  
   
   function apc_commission($value ){
   
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
  
   function select_user($value, $key, $form){
		
		global $user, $phpbb_root_path, $phpEx;
		$href = append_sid($phpbb_root_path. "memberlist.".$phpEx, 'mode=searchuser&form='.$form.'&field='.$key);
		$string =  '<dd><textarea id="'.$key.'" name="config['.$key.']" cols="40" rows="5">'.$value.'</textarea></dd>';
		$string .= '<dd>[ <a href="'.$href.'" onclick="find_username(this.href); return false;">'.$user->lang['FIND_USERNAME'].'</a> ]</dd>';
		return $string;	
		return "";
		
		
   }
   
	function select_single_user($value, $key, $form){
		
		global $user, $phpbb_root_path, $phpEx;
		$href = append_sid($phpbb_root_path. "memberlist.".$phpEx, 'mode=searchuser&amp;&select_single=true&amp;form='.$form.'&amp;field='.$key);
		$string =  '<dd><textarea id="'.$key.'" name="config['.$key.']" cols="40" rows="5">'.$value.'</textarea></dd>';
		$string .= '<dd>[ <a href="'.$href.'" onclick="find_username(this.href); return false;">'.$user->lang['FIND_USERNAME'].'</a> ]</dd>';
		return $string;	
   }
   
   /* select_user_selection:
		Creates a dropdown list of of all user that are in the $user_array 
		input: 
			$value: current value of the dropdown list
			$key: the name of the used input field
			$user_array['user_id'] = array(
				'username' 	=> username, 
				'comments' 	=> comments, 
				'datetime' 	=> datetime of enrolled time, 
				'status'	=>  current status (0 of 1) 1 is enrolled
				'price_paid' =>	Price the user already paid
			)
	*/
   function select_user_selection($value, $key,$user_array){
		global $user, $phpbb_root_path, $phpEx;
		$output = '<select name="config['.$key.']"> <option></option>';
		foreach($user_array AS $user_id => $info){
			$output .= '<option value="'.$user_id.'">'.$info['real_name']. ' --> ' .$info['username'].'</option>';
		}
		$output .= '</select>';
		return $output;
   }
   
   function select_group($value, $key, $excude, $form){
		
		global $user, $phpbb_root_path, $phpEx;

		$href = append_sid($phpbb_root_path. "grouplist.".$phpEx, 'mode=searchgroup&amp;separator='.GROUP_SEPARATOR.'&amp;exclude_groups='.implode(',',$excude).'&amp;form='.$form.'&amp;field='.$key);
		$string =  '<dd><textarea id="'.$key.'" name="config['.$key.']" cols="40" rows="5">'.$value.'</textarea></dd>';
		$string .= '<dd>[ <a href="'.$href.'" onclick="find_username(this.href); return false;">'.$user->lang['FIND_GROUP'].'</a> ]</dd>';
		return $string;	
   }
  
   function acp_description($value, $key){
		return '<textarea id="'.$key.'" cols="6" rows="20" name="config['.$key.']"  onselect="storeCaret(this);" onclick="storeCaret(this);" onkeyup="storeCaret(this);" >'.$value.'</textarea>';
   }
   
	function apc_dc_subscibe_create_show($value, $name){
		global $user;
		$options = "<select name=$name id=$name>";
		$options .= '<option value="a"' . (($value == "a") ? ' selected="selected"' : '') . '>' . $user->lang['ALL'] . '</option>';
		$options .= '<option value="p"' . (($value == "p") ? ' selected="selected"' : '') . '>' . $user->lang['PAID'] . '</option>';
		$options .= '<option value="np"' . (($value == "np") ? ' selected="selected"' : '') . '>' . $user->lang['NOT_PAID'] . '</option>';
		$options .= '<option value="e"' . (($value == "e") ? ' selected="selected"' : '') . '>' . $user->lang['ENROLLED_USERS'] . '</option>';
		$options .= '</select>';
		
		return $options;
   } 
 
}
?>
