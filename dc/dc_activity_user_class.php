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

the user class

Functions summary:
	get_full_list_active()
		// get a list of objects of all the active activitys
	
	get_comming_active_activities()
		// get all activitys that are active and in the future  
		
	get_all_activitys()
		// get a list of objects of all the activitys 
		
	get_comming()
		// get a list of object of all the activitys that are comming
	
	get_activity($activity)
		// get a activity:

		get_read($user_id, $activity)
		// get all activity(s) the user has readed $array[key] 
			// $activity = one activity_id; return: true: user has readed, false: user not readed
			// $activity = "all"; returns a list of all readed activitys: $array[key] = activity 
		
	set_read($user_id, $activity_id)
		// set a activity to readed
	
	get_paid($user_id, $activity_id, $status)
		// $user = "all": return a list of all users payments and what they have to pay
		// $user = user id: return a list of the user payment paid and the amount is has to pay
		// $activity_id = "all" return all the activitys
		// $activity_id = activity id: retrun only the given activity
		// $status = "all"/"yes"/"no"/"maybe"; the statuses of the users
		// RETURN: $array[activity_id] = array (["user_id"] => user_id, ["price"] => price, ["price_payed"] => price_paid ) OR NULL if nothing is found
	
	search($user_id, $name, $start_datetime, $end_datetime, $active, $description)
		// search for activitys 
		// return array of object acitivies from the found activities 
		// if a parameter is not needed fill in NULL
			// example: search(1, "going to the beach", null, null, 1 , null)
				// finds all activities with a name like 'going to the beach' and is active
				// like: $array ([0] => object(id = 4), [1] =>object(id = 20) )
*/

if (!defined('IN_PHPBB'))
{
	exit;
}

	
class activity_user{

	// get list of all the activity
	function get_full_list_active($user_id){
		global $db;												// get database connection
		$sql = 'SELECT * FROM dc_activity_full_list_active';	// select all the activity's that are active (db view)
		$sql_result = $db->sql_query($sql);
		$index = 0;
		while ($row = $db->sql_fetchrow($sql_result))				// walk through all the rows
		{
			$activity = new activity();
			$activity->fill((int)$row['id']);
			if($activity->user_acces($user_id)){
				$full_list[$index] = $activity;
				$index++;
			}
		}
		$db->sql_freeresult($sql_result);							// remove query
		return $full_list;										// send the array
	}
	
	function get_comming_active_activities($user_id){
		global $db;												// get database connection
		$sql = 'SELECT * FROM dc_activity_comming_active';	// select all the activity's that are active (db view)
		$sql_result = $db->sql_query($sql);
		$index = 0;
		while ($row = $db->sql_fetchrow($sql_result))				// walk through all the rows
		{
			$activity = new activity();
			$activity->fill((int)$row['id']);
			if($activity->user_acces($user_id)){
				$full_list[$index] = $activity;
				$index++;
			}
		}
		if($index == 0){
			return null;
		}
		$db->sql_freeresult($sql_result);							// remove query
		return $full_list;										// send the array
	}
	
	
	function get_all_activitys(){
		global $db;												// get database connection
		$sql = 'SELECT * FROM dc_activity';	// select all the activity's that are active (db view)
		$sql_result = $db->sql_query($sql);
		$index = 0;
		while ($row = $db->sql_fetchrow($sql_result))				// walk through all the rows
		{
			$activity = new activity();
			$activity->fill((int)$row['id']);
			if($activity->user_acces($user_id)){
				$full_list[$index] = $activity;
				$index++;
			}
		}
		$db->sql_freeresult($result);							// remove query
		return $full_list;
	}
	
	// get a list of all the comming activity's 
	function get_comming(){
		global $db;												// get database connection
		$sql = 'SELECT * FROM `dc_activity_comming_active`';	// select alle the activity's that where startdate => than now and are active (db view)
		$sql_result = $db->sql_query($sql);
		$index = 0;
		while ($row = $db->sql_fetchrow($sql_result))				// walk through all the rows
		{
			$activity = new activity();
			$activity->fill((int)$row['id']);
			$comming_list[$index] = $activity;
			$index++;
		}
		$db->sql_freeresult($result);							// remove query
		return $comming_list;									// send array
	}
	
	// get one activity
	function get_activity($activity){
		global $db, $user;										// get database connection
		$activity_OBJ = new activity();							// new emty activity 
		if(($activity_OBJ->fill($activity)) == null)
		{
			trigger_error($user->lang['DC_ACT_ERROR_LOAD']);
			return null;
		}
		return $activity_OBJ;									// send the new activity object
	}


	
	function get_paid($user_id, $activity_id, $status){
		global $db, $user;												// get database connection
		
		// build status query
		switch(trim($status)){										// check status
			case "yes":										// all the users with acces
				$status_sql = " WHERE status = 'yes'";					// set SQL WHERE statment
				break;			
			case "no":									// all the users who had acces
				$status_sql = " WHERE status = 'no'";					// set SQL WHERE statment 
				break;
			case "maybe":									// all the users who had acces
				$status_sql = " WHERE status = 'maybe'";					// set SQL WHERE statment 
				break;
			case "all":											// all the users
				$status_sql = "WHERE status != null"; 									// set SQL WHERE statment:  status != null: fix for next statments
				break;
			default:											// wrong status
				global $user;
				trigger_error($user->lang['DC_ACT_WRONG_STATUS']);
				return null;									
		}
		
		// build user query
		switch ($user_id){
			case "all":
				$user_sql = "";
				break;
			default:
				if(gettype($user_id) != "integer")
					return null;
				$user_sql = "AND user_id = ". $user_id;
		}
		
		// build acitivity query
		switch ($activity_id){
			case "all":
				$act_sql = "";
				break;
			default:
				if(gettype($activity_id) != "integer")
					return null;
				$act_sql = "AND activity_id = ". $activity_id;
		}
		
		// build total query
		$sql = 'SELECT price, price_payed, user_id, activity_id, COUNT(*) count FROM dc_activity_enroll '. $status_sql . $user_sql . $act_sql;
		$result = $db->sql_query($sql);							// send query
		
		if($row['count'] != 1)
			return null;
		while ($row = $db->sql_fetchrow($result))				// walk through all the rows
		{
			$pay_list[$row["activity_id"]]= array(
				"user_id"		=> $row["user_id"],
				"price"			=> $row["price"],
				"price_payed"	=> $row["price_payed"]
			);
		}
		return $pay_list;
		$db->sql_freeresult($result);							// remove query
		
	}
	
	function search($parameters, $limit = 100, $offset = null, $order = null, $short = null){
		global $db;

		// construct WHERE statement
		$sql_where = array();
		/*
		$parameters['start_datetime']['begin']['end'];	
		$parameters['end_datetime']['begin']['end'];
		*/	
		if(count($parameters)){
			
			foreach($parameters AS $field => $value){
				switch($field){
					case 'user_id':
						$sql_where[] .= (string)("user_id = '".(int)$value . "'" ); 
						break;
					case 'name':
						$sql_where[] .= (string)("UPPER(name) LIKE UPPER('%".$value."%')"); 
						break;
					case 'start_datetime':
						if($value['begin'] instanceof DateTime && $value['end'] instanceof DateTime){
							$sql_where[] = (string)("start_datetime BETWEEN '".$value['end']->format('Y-m-d H:i:s'))."' AND '".$value['begin']->format('Y-m-d H:i:s')."'";
						}						
						break;
					case 'end_datetime':
						if($value['begin'] instanceof DateTime && $value['end'] instanceof DateTime){
							$sql_where[] = (string)("stop_datetime BETWEEN '".$value['end']->format('Y-m-d H:i:s'))."' AND '".$value['begin']->format('Y-m-d H:i:s')."'";
						}	
						break;
					case 'enroll_datetime':
						if($value['begin'] instanceof DateTime && $value['end'] instanceof DateTime){
							$sql_where[] = (string)("enroll_datetime BETWEEN '".$value['end']->format('Y-m-d H:i:s'))."' AND '".$value['begin']->format('Y-m-d H:i:s')."'";
						}	
						break;
					case 'datetime_created':
						if($value['begin'] instanceof DateTime && $value['end'] instanceof DateTime){
							$sql_where[] = (string)("datetime_created BETWEEN '".$value['end']->format('Y-m-d H:i:s'))."' AND '".$value['begin']->format('Y-m-d H:i:s')."'";
						}	
						break;
					case 'datetime_updated':
						if($value['begin'] instanceof DateTime && $value['end'] instanceof DateTime){
							$sql_where[] = (string)("datetime_updated BETWEEN '".$value['end']->format('Y-m-d H:i:s'))."' AND '".$value['begin']->format('Y-m-d H:i:s')."'";
						}	
						break;
					case 'active':
						$sql_where[] =  (string)"active = '". (bool)$value ."'"; 
						break;
					case 'description':
						$sql_where[] = "UPPER(description) LIKE UPPER('%".(string)$value ."%')"; 
						break;
					case 'location':
						$sql_where[] = "UPPER(location) LIKE UPPER('%".(string)$value ."%')"; 
						break;	
					case 'managers':
						if(is_array($value))
						$sql_where[] = "id IN (
										SELECT activity_id 
										FROM  dc_activity_group_manage
										WHERE ".  $db->sql_in_set('group_id', $value) .")"; 
						break;		
				}
			}
			// build input string
		$sql_where_string =" WHERE " . $sql_where[0];
			for($i  = 1; $i < (count($sql_where)); $i++){
				$sql_where_string .= " AND " . $sql_where[$i];
			}
		}else{
			$sql_where_string = "";
		}
		
		
		
		// set shorting and order options
		$short_array = array('name', 'start_datetime', 'stop_datetime', 'active');
		$order_array = array('ASC', 'DESC');
		
		// check if the short is valid
		if(!in_array($short, $short_array)){
			$short = 'start_datetime';
		}
		
		// check if the order is valid
		if(!in_array($order, $order_array)){
			$order = 'DESC';
		}
		
		$result = array();
		$sql= "SELECT id FROM `dc_activity` ". $sql_where_string ."
		ORDER BY ". $short .' '.$order;

		$sql_result = $db->sql_query_limit($sql, $limit, $offset);

		while ($row = $db->sql_fetchrow($sql_result))				// walk through all the rows
		{
			$activity = new activity();
			$activity->fill((int)$row['id']);
			$result[$activity->getId()] = $activity;
		}
		return $result;
		
	}

}

?>
