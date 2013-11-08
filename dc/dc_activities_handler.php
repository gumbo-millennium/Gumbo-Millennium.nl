<?php

/*
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

if (!defined('IN_PHPBB'))
{
	exit;
}
include_once($phpbb_root_path . 'dc/dc_activity_class.' . $phpEx);
if(!defined('DC_ACTIVITIES_HANDLER_CLASS')){	// check if defines are set
	define("DC_ACTIVITIES_HANDLER_CLASS", true); 	// set defines
	// set search type options
	
	
	define("ALL",				1); 	
	define("FUTURE_ACTIVE",		2); 	
	define("FUTURE",			3); 	
	define("ALL_ACTIVE",		4); 	
	
	// set order types & search parameters 
	define("NAME",				1); 		
	define("PRICE", 			2); 		
	define("CATEGORY", 			3); 		
	define("COMMISSION", 		4); 		
	define("UNSUBSCRIBED_MAX", 	5); 		
	define("PRICE_MEMBER", 		6); 		
	define("START_DATETIME", 	7); 
	define("END_DATETIME", 		8);
	define("ENROL_DATETIME", 	9);
	define("DATETIME_CREATED", 	10);
	define("DATETIME_UPDATED", 	11);
	define("AMOUNT_SUBSCRIBED", 18);
	
	
	//extra search parameters 
	define("USER_ID", 			12);
	define("DESCRIPTION", 		13);
	define("LOCATION", 			14);
	define("USER_READED", 		15);
	define("MANAGERS_GROUPS", 	16);
	define("ACTIVE", 			17);
	
	//search extenxions
	define("DATE_BEGIN", 		1);
	define("DATE_END", 			2);
	define("FIRST_VALUE", 		3);
	define("SECOND_VALUE", 		4);
	define("OPERATOR", 			5);
	
	// database search operators
	define("OP_BETWEEN", 		1);
	define("OP_HIGHER", 		2);
	define("OP_LOWER", 			3);
	define("OP_EQUAL", 			4);
	
	// set order options
	define("ASC",				1);
	define("DESC",				2);
	
	// user access types
	define("USER_ACCESS",		1);
	define("MANAGEMENT_ACCESS",	2);
	
	
	define("DB_DATE_FORMAT",		'Y-m-d H:i:s');
}

class activities_handler{
	
	private $activities = array();
	private $user_groups;
	private $last_activities_counter;
	
	function get_user_activities($user_id, $user_access_type, $search_type,$search_parameters = NULL, $short = START_DATETIME, $order = ASC, $limit = 100, $offset = 0 ){
		global $user, $db;
		// Check if user id is valid 
		if(gettype($user_id) != "integer"){
				trigger_error('Get_user_activities: Invalided user id');
				return NULL;
		}
		
		$user_groups = $this->get_user_groups(intval($user->data["user_id"]));
		
		switch($short){
			case NAME:
				$sql_short = "LOWER(act.name)";
				break;
			case PRICE:
				$sql_short = "act.price";
				break;
			case PRICE_MEMBER:
				$sql_short = "act.price_member";
				break;
			case CATEGORY:
				$sql_short = "act.category";
				break;
			case COMMISSION:
				$sql_short = "act.commission";
				break;
			case START_DATETIME:
				$sql_short = "act.start_datetime";
				break;
			case END_DATETIME:
				$sql_short = "act.stop_datetime";
				break;
			case ENROL_DATETIME:
				$sql_short = "act.enrol_datetime";
				break;
			case DATETIME_CREATED:
				$sql_short = "act.datetime_created";
				break;
			case DATETIME_UPDATED:
				$sql_short = "act.datetime_updated";
				break;
			case UNSUBSCRIBED_MAX:
				$sql_short = "act.unsubscribe_max";
				break;
			case AMOUNT_SUBSCRIBED:
				$sql_short = "amount_enrolled";
				break;
				
			default:
				trigger_error('Get_user_activities: Invalided short:' . $short);
				return NULL;
		}
		
		switch($order){
			case ASC:
				$sql_order = "ASC";
				break;
			case DESC:
				$sql_order = "DESC";
				break;
			default:
				trigger_error('Get_user_activities: Invalided order:' . $order);
				return NULL;
		}
		
		$sql_join_where = array(
			"jEnr.status" 	=> "yes",
		);

		$join_enroll = array(
			"SELECT" 	=> "user_id, activity_id",
			'FROM'      => array(
				ACTIVITY_ENROL_TABLE  => 'jEnr',
			),
			"WHERE"		=> 	$db->sql_build_array('SELECT', $sql_join_where),
		);
		
		
		
		// setup sql query with default settings
		$sql_array = array(
			'SELECT'	=> 'act.*,
							count(DISTINCT enr.user_id) amount_enrolled,
							GROUP_CONCAT(DISTINCT  grs.group_id) access_groups', 
			
			'LEFT_JOIN' => array(
				array(
					'FROM' 	=> array("(".$db->sql_build_query('SELECT', $join_enroll).")" => 'enr'),   
					'ON'	=> 'act.id = enr.activity_id'
				),
				array(
					'FROM' 	=> array( ACTIVITY_GROUP_ACCESS_TABLE => 'grs'),   
					'ON'	=> 'act.id = grs.activity_id'
				),
				
			),
			"ORDER_BY"	=> $sql_short ." ". $sql_order,
			'GROUP_BY'	=> 'act.id',
		);
		
		// select database table by search_type
		if($table = $this->sql_set_table($search_type)){
			$sql_array['FROM'] = $table;
			
		}else{
			trigger_error('Get_user_activities: No valid search type');
			return NULL;
		}
		
		$sql_where_ary = array(
			"grs.disabled" 	=> GROUPS_ACCESS_ENABLED,
			
		);

		// setup where statements 
		if(is_array($search_parameters)){
			$sql_where_prams = $this->sql_create_where($this->sql_check_act_parameters($search_parameters), TRUE);
			$sql_array['WHERE'] = $db->sql_build_array('SELECT', $sql_where_ary) . $sql_where_prams;
		}
		
		// check if query needs to extend for user readed
		if(isset($search_parameters[USER_READED]) && $search_parameters[USER_READED] == TRUE){
			$sql_array['SELECT'] .= ', GROUP_CONCAT(rd.user_id) readed_users';
			$sql_array['LEFT_JOIN'][] = array(
				'FROM' 	=> array( ACTIVITY_READED_TABLE => 'rd'),
				'ON'	=> 'act.id = rd.activity_id'
			);
		}
		
		if(isset($search_parameters[MANAGERS_GROUPS]) && $search_parameters[MANAGERS_GROUPS] == TRUE){
			$sql_array['SELECT'] .= ', GROUP_CONCAT(DISTINCT  gms.group_id) managers_groups';
			$sql_array['LEFT_JOIN'][] = array(
				'FROM' 	=> array( ACTIVITY_GROUP_MANAGERS_TABLE => 'gms'),   
				'ON'	=> 'act.id = gms.activity_id'
			);
			$sql_where_ary["gms.disabled"] = GROUPS_MANAGES_ENABLED;
		}
		

		if(isset($search_parameters[AMOUNT_SUBSCRIBED])){
			$sql_having = " HAVING " . $this->sql_where_compare($search_parameters[AMOUNT_SUBSCRIBED], "amount_enrolled"); 
		}
		
		$sql = $db->sql_build_query('SELECT', $sql_array) ;
		if(isset($sql_having)){
			$sql = str_replace("ORDER BY", $sql_having." ORDER BY", $sql);	// small hack to implement sql HAVING statment
		}
		$sql_result = $db->sql_query($sql, 3600);
		
		$return_list = array();
		$this->last_activities_counter = 0;
		while ($row = $db->sql_fetchrow($sql_result))				// loop all the rows
		{
			$activity = $this->get_activity((int)$row['id']);		// get activity form the ($this->)activities array
			if($activity == FALSE){									// check if activity is not in the ($this->)activities array
				// activity is not in ($this->)activities array, so create a new activity and fill it.
				$activity = new Activity();	
				
				if(isset($search_parameters[USER_READED]) && $search_parameters[USER_READED] == TRUE){
					$users_readed = explode_key($row["readed_users"], "," ,TRUE);
					if(!isset($users_readed[$user_id])){
						$users_readed[$user_id] = FALSE;
					}
				}else{
					$users_readed = NULL;
				}
				
				if(isset($search_parameters[MANAGERS_GROUPS]) && $search_parameters[MANAGERS_GROUPS] == TRUE){
					$managers_groups = explode_key($row["managers_groups"], "," ,TRUE);
					if(!isset($managers_groups[$user_id])){
						$managers_groups[$user_id] = FALSE;
					}
				}else{
					$managers_groups = NULL;
				}
				$activity->fill_database_multiple(
					(int)$row['id'],
					(String)$row['name'],
					(String)$row['description'],
					(String)$row['start_datetime'],
					(String)$row['stop_datetime'],
					(int)$row['enroll'],
					(int)$row['amount_enrolled'],
					(String)$row['unsubscribe_max'],
					(String) $row['enroll_datetime'],
					(int)$row['enroll_max'],
					(double)$row['price'],
					(double)$row['price_member'],
					(String)$row['location'],
					(int)$row['active'],
					(int)$row['category'],
					(String)$row['pay_options'],
					(int)$row['commission'],
					(String)$row['user_id'],
					(String)$row['user_ip'],
					(String)$row['datetime_created'],
					(String)$row['datetime_updated'],
					$users_readed,
					explode_key($row["access_groups"],",", array("access" => GROUPS_ACCESS_ENABLED)),
					$managers_groups,
					
					// some extra variables for parsing text 
					(String)$row['bbcode_bitfield'],
					(String)$row['bbcode_uid'],
					(int)$row['enable_magic_url'],
					(int)$row['enable_bbcode'],
					(int)$row['enable_smilies'],
					
					$this
				);
			}
			switch($user_access_type){
				case USER_ACCESS: 
					if($activity->user_access($user_id)){
						if(check_limit_offset($limit, $offset, $this->last_activities_counter)){
							$return_list[$activity->getId()] = $activity;	// add activity to the return activities list
						}
						$this->last_activities_counter++;
					}
					break;
				case MANAGEMENT_ACCESS:
					if($activity->is_manager($user_id)){
						if(check_limit_offset($limit, $offset, $this->last_activities_counter)){
							$return_list[$activity->getId()] = $activity;	// add activity to the return activities list
						}
						$this->last_activities_counter++;
					}
					break;
				default:
					trigger_error('Get_user_activities: Invalided user access type: ' . $user_access_type);
					return NULL;
			}
		}
		$db->sql_freeresult($sql_result);							// remove query
		$this->add_activities($return_list);		// add new all activities to the ($this->)activities array
		return $return_list;						// return the actives
		
	}
	
		
	private function sql_set_table($search_type){
		switch($search_type){
			case ALL:
				return array(
					ACTIVITY_TABLE  => 'act',
				);
			case FUTURE_ACTIVE:
				return array(
					ACTIVITY_UPCOMMING_ACTIVE_TABLE  => 'act',
				);
				break;
			case ALL_ACTIVE:
				return array(
					ACTIVITY_ALL_ACTIVE_TABLE  => 'act',
				);
				break;
			case FUTURE:
				return array(
					ACTIVITY_FURTURE_TABLE  => 'act',
				);
				break;
			default:
				trigger_error('Sql_set_table: Invalided search type: ' . $search_type);
				return NULL;
		}
	}
	
	private function sql_check_act_parameters($search_parameters){
		global $db;
		if(!is_array($search_parameters))	{
			trigger_error('sql_check_parameters: $search_parameters is not an array');
			return null;
		}
		$sql_where = array();
		foreach($search_parameters AS $field => $value){
			switch($field){
				case USER_ID:
					$sql_where[] = (string)("user_id = ".$db->sql_escape( (int)$value) ); 
					break;
				case NAME:
					$sql_where[] = (string)$this->sql_extended_like_ic($value, "act.name"); 
					break;
				case START_DATETIME:
					$sql_where[] = (string) $this->sql_where_date($value, "act.start_datetime");						
					break;
				case END_DATETIME:
					$sql_where[] = (string) $this->sql_where_date($value, "act.stop_datetime");		
					break;
				case ENROL_DATETIME:
					$sql_where[] = (string) $this->sql_where_date($value, "act.enroll_datetime");
					break;
				case DATETIME_CREATED:
					$sql_where[] = (string) $this->sql_where_date($value, "act.datetime_created");
					break;
				case DATETIME_UPDATED:
					$sql_where[] = (string) $this->sql_where_date($value, "act.datetime_updated");
					break;
				case DESCRIPTION:
					$sql_where[] = (string)$this-> sql_extended_like_ic($value, "act.description"); 
					break;
				case ACTIVE:
					$sql_where[] = (string) "act.active = (".$db->sql_escape( (int)$value );
					break;
				case LOCATION:
					$sql_where[] = (string)$this-> sql_extended_like_ic($value, "act.location"); 
					break;					
			}
		}
		return $sql_where;
	}
	
	private function sql_extended_like_ic($search_string, $db_table_field){
		global $db;
		 return $db_table_field ." COLLATE UTF8_GENERAL_CI ".  $db-> sql_like_expression( $db->any_char. utf8_clean_string( $search_string ). $db->any_char );
	}
	
	private function sql_where_compare($compare_value_ary, $db_table_field){
		global $db;
		if(isset($compare_value_ary[FIRST_VALUE])){
			switch($compare_value_ary[OPERATOR]){
				case OP_BETWEEN:
					if(isset($compare_value_ary[SECOND_VALUE])){
						return 	$db_table_field ." BETWEEN '".$db->sql_escape( $compare_value_ary[FIRST_VALUE] )."' AND '".$db->sql_escape( $compare_value_ary[SECOND_VALUE] ) . "'";
					}else{
						trigger_error("sql_where_compare: invalid/missing SECOND_VALUE db table field: ".$db_table_field);
						return NULL;
					}
				break;
				case OP_HIGHER:
					return $db_table_field ." >= '".$db->sql_escape( $compare_value_ary[FIRST_VALUE]) . "'" ;
				break;
				case OP_LOWER:
					return $db_table_field ." <= '".$db->sql_escape( $compare_value_ary[FIRST_VALUE]) . "'";
				break;
				case OP_EQUAL:
					return $db_table_field ." = '".$db->sql_escape( $compare_value_ary[FIRST_VALUE]) . "'";
				break;
				default:
				trigger_error('sql_where_compare: invalid operator: ' .$compare_value_ary[OPERATOR]. " db table field: ".$db_table_field);
				return NULL;
				
			}
		}else{
			trigger_error("sql_where_compare: invalid/missing FIRST_VALUE db table field: ".$db_table_field);
			return NULL;
		}
	}
	
	private function sql_where_date($date_array, $db_table_field){
		global $db;
		if($date_array[DATE_BEGIN] instanceof DateTime){
			switch($date_array[OPERATOR]){
				case OP_BETWEEN:
					if(isset($date_array[DATE_END]) && $date_array[DATE_END] instanceof DateTime ){
						return 	$db_table_field ." BETWEEN '".$db->sql_escape( $date_array[DATE_BEGIN]->format(DB_DATE_FORMAT) )."' AND '".$db->sql_escape( $date_array[DATE_END]->format(DB_DATE_FORMAT) ) . "'";
					}else{
						trigger_error("sql_where_date: invalid/missing DATE_END db table field: ".$db_table_field);
						return NULL;
					}
				break;
				case OP_HIGHER:
					return $db_table_field ." >= '".$db->sql_escape( $date_array[DATE_BEGIN]->format(DB_DATE_FORMAT)) . "'" ;
				break;
				case OP_LOWER:
					return $db_table_field ." <= '".$db->sql_escape( $date_array[DATE_BEGIN]->format(DB_DATE_FORMAT)) . "'";
				break;
				case OP_EQUAL:
					return $db_table_field ." = '".$db->sql_escape( $date_array[DATE_BEGIN]->format(DB_DATE_FORMAT)) . "'";
				break;
				default:
				trigger_error('sql_where_date: invalid operator: ' .$date_array[OPERATOR]. " db table field: ".$db_table_field);
				return NULL;
				
			}
		}else{
			trigger_error("sql_where_date: invalid/missing BEGIN_END db table field: ".$db_table_field);
			return NULL;
		}
	}
	
	private function sql_create_where($sql_where, $append_and){
		if(!is_array($sql_where)){
			trigger_error('sql_create_where: $sql_where is not an array');
			return NULL;
		}
		if(!is_bool($append_and)){
			trigger_error('sql_create_where: $append_and is not a boolean');
			return NULL;
		}
		
		if(count($sql_where) > 0){
			$sql_where_string = "";
			if($append_and){
				$sql_where_string =  " AND ";
			}
			$sql_where_string .=  $sql_where[0];
			for($i  = 1; $i < (count($sql_where)); $i++){
				$sql_where_string .= " AND " . $sql_where[$i];
			}
			
		}else{
			$sql_where_string = "";
		}
		return $sql_where_string;	
	}
	
	// get one activity
	function get_activity($activity_id){
		if(isset($this->activities[$activity_id])){
			return $this->activities[$activity_id];
		}
		return FALSE;
	}
	
	function add_activities($new_activities){
		if(!is_array($new_activities)){									// check if new_array is an array
			trigger_error('Add_activities: $new_activities is not an array');				// send error to front end
			return FALSE;
		}
		
		// check if in array all are activity
		foreach($new_activities as $key => $add_activity){
			if(!($add_activity instanceof Activity)){
				trigger_error('Add_activities: Invalided new activity');				// send error to the to the front end
				return FALSE;
			}
			if(!$add_activity->getId()){
				trigger_error('Add_activities: New activity doesnt exist in the database (First use Activity::save() before Add activity). Name of new acitvity:'.$add_activity->getName() );				// send error to the activity frond end
				return FALSE;
			}
		}
		
		foreach($new_activities as $key => $add_activity){
			if( !isset( $this->activities[$add_activity->getId()] ) ){
				$this->activities[$add_activity->getId()] = $add_activity;
			}
		}
		return TRUE;
	}
	
	function generate_table_options($table_layout){
	$table_layout = array(
		'title'	=> 'title for the table',
		'vars'	=> array(				
			'legend1'				=> 'GENERAL_SETTINGS',		
			
			'name'					=> array('lang' => 'ACP_DC_ACT_NAME',			'validate' => 'string',	'type' => 'text:20:50', 'empty' => true, 'explain' => true, 'preg'=> '[^a-zA-Z0-9 ]')
															
		
		)
	);
	}
	
	function get_user_groups($user_id){
		if(!isset($this->user_groups[$user_id])){
			$this->user_groups[$user_id] = all_user_groups($user_id); 
		}
		return $this->user_groups[$user_id];
	}
	
	function get_last_activities_counter(){
		return $this->last_activities_counter;
	}
	
	

}

?>
