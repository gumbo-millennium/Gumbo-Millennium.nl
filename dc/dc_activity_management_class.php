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
include_once('dc_activity_user_class.php');
include_once($phpbb_root_path . 'dc/dc_functions.' . $phpEx);

class activity_management extends activity_user {

	function get_comming($user_id, $short, $order){
		global $db;
		
		$acitivity_ids = array();
		$global_manager = false;								
		// check is user is in see all activity group
		$managers_groups = unserialize(SEE_ALL_ACTIVITIES_GROUP);
		$user_groups = all_user_groups($user_id);
		foreach($managers_groups AS $key => $groep_id_acces){					// loop true all the groep ID's 
			if(in_array($groep_id_acces, $user_groups)){			// get all the joind groeps id of the user and compare with the default groep id
				$global_manager = true;											// the groups id matches
				break;
			}
		}
		// if user is not in the 'see all activity group' , get all the activitys that the user is a normal manager
		if(!$global_manager){
			$sql_array = array(
					'SELECT'    => 'activity_id',

					'FROM'      => array(
						'dc_activity_group_manage' => 'a',
					),

					'WHERE'     =>  $db->sql_in_set('group_id', $user_groups ) .' AND disabled =  0'
				);
				
				

				$sql = $db->sql_build_query('SELECT', $sql_array);

				// Run the built query statement
				$result = $db->sql_query($sql);
				
				while ($row = $db->sql_fetchrow($result))
				{
					$acitivity_ids[] = $row['activity_id'];
				}
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

		$activity_list = array();
		if(count($acitivity_ids) || $global_manager){		// check if there are activity's found for a normal manager. OR the user is a global manager
			// build sql
			$sql = 'SELECT * 
				FROM dc_activity
				WHERE (
					start_datetime >= NOW( ) 
					OR (
						start_datetime <= NOW( ) 
						AND 
						stop_datetime >= NOW( )
					)
				)'
				.(!$global_manager ? ' AND ' . $db->sql_in_set('id', $acitivity_ids ): '' ) .'	
					ORDER BY '. $short .' '.$order;
			$result = $db->sql_query($sql);				// send sql
			
			// build return list
			while ($row = $db->sql_fetchrow($result)){
				$activity = new activity();
				$activity->fill((int)$row['id']);
				$activity_list[$activity->getId()] = $activity; 
			}
			$db->sql_freeresult($result);
		}
		return $activity_list;
	}

}

?>