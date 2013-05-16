<?php

/*
*
* @package phpBB3
* @version $Id$
* @athor: Gerco Versloot
* @date:  29 - 4 - 2013
* @license http://opensource.org/licenses/gpl-license.php GNU Public License
* @Gumbo millennium
*/

include_once('dc_activity_user_class.php');
include_once($phpbb_root_path . 'dc/dc_functions.' . $phpEx);

/*
	The handler class is used to group a set of tasks. The main function is to reduce the calls to the database.
	It stores all tasks that are from the database.
	
	Before making a call to database first check if this object (Task_hander) has the task stored.
*/
class Tasks_handler {

	private $tasks = array();
	
	/*
	type: (always without tasks, use get_task)
		1: all
		2: current
		3: current + all uncomplete
		4: past
		5: uncomplete
	*/
	function get_user_tasks($user_id, $type = 1 ,$short = 'deadline', $order = 'ASC', $limit = 0, $offset = 0){
		global $db;												// get database connection
		
		if(gettype($user_id) != "integer")
				return NULL;
	
		// set short options
		switch($short){	
			case 'title':
				$short = "LOWER(title)";			// order by name (lower name for case insensativty)
				break;
			case 'deadline':				// order by start deadline
				$short = "deadline";
				break;
			case 'group':					// order by groep id
				$short = "group_id, title";
				break;
			case 'created':					// order by created
				$short = "created";
				break;
			case 'completed_datetime':					// order by completed_datetime
				$short = "completed_datetime";
				break;
			case 'parent':					// order by parent
				$short = "task_id_parent, deadline";
				break;
			default:							// set defaut sort: start date time
				$short = "deadline";
		}
		
		// set order options
		$order_array = array('ASC', 'DESC');
		// check if the order is valid
		if(!in_array($order, $order_array)){
			$order = 'ASC';
		}
		
		$sql_array = array(
			'SELECT'    => 'tsk.*, cld.task_id_parent, count(cld.task_id_parent) AS count_childs',

			'FROM'      => array(
				TASKS_TABLE  => 'tsk',
			),

			'LEFT_JOIN' => array(
				array(
					'FROM'  => array(TASK_CHILD_TABLE => 'cld'),
					'ON'    => 'tsk.id = cld.task_id_parent'
				)
			),
			'GROUP_BY' => 'tsk.id',
			'ORDER_BY'  => $short .' '.$order,
		);
		// Add were case
		switch($type){
			case 2:						// current
				$sql_array['WHERE'] = $db->sql_in_set('group_id', all_user_groups($user_id)) .
					'	AND deadline >= NOW()';
				break;
			case 3:						// current + uncomplete
				$sql_array['WHERE'] = $db->sql_in_set('group_id', all_user_groups($user_id)) .
					'  	AND ( deadline >= NOW() 
						OR completed_datetime IS NULL )';
				break;
			case 4:						// past
				$sql_array['WHERE'] = $db->sql_in_set('group_id', all_user_groups($user_id)) .
					' AND deadline <= NOW()';
				break;
			case 5:						// uncomplete
				$sql_array['WHERE'] = $db->sql_in_set('group_id', all_user_groups($user_id)) .
					'AND  completed_datetime IS NULL';
				break;
			case 1:
			default:
				$sql_array['WHERE'] = $db->sql_in_set('group_id', all_user_groups($user_id));

		}
		$sql = $db->sql_build_query('SELECT', $sql_array);
		$result = $db->sql_query($sql);							// send query
		
		$tasks = array();
		while ($row = $db->sql_fetchrow($result))				// walk through all the rows
		{
			$new_task_id = intval($row['id']);
			if( $this->get_task($new_task_id) ){
				$tasks[$new_task_id] = $this->get_task($new_task_id);
			}else{
				$new_task = new Task();
				$new_task->fill_from_database_multiple(
					$new_task_id,
					$row['title'],
					$row['description'],
					$row['deadline'],
					$row['group_id'],
					$row['created'],
					$row['completed_datetime'],
					$row['count_childs'],
					
					$row['bbcode_bitfield'],
					$row['bbcode_uid'],
					$row['enable_magic_url'],
					$row['enable_bbcode'],
					$row['enable_smilies'],
					
					$row['task_id_parent'],
					$this
				);
				$this->tasks[$new_task_id] = $new_task;
				$tasks[$new_task_id] = $new_task;
			}
		}
		$db->sql_freeresult($result);						// remove query
		return $tasks;	
	}

	function add_tasks($add_tasks){
		if(!is_array($add_tasks)){									// check if user id list is an array
			trigger_error('Add_tasks: users_id_list is not an array');				// send error to the current task of the system
			return FALSE;
		}
		
		// check if in array all are tasks
		foreach($add_tasks as $key => $add_task){
			if(!($add_task instanceof Task)){
				trigger_error('Add_tasks: No valided new task');				// send error to the newtask of the system
				return FALSE;
			}
			if(!$add_task->get_id()){
				trigger_error('Add_tasks: New task doesnt exist in the database (First use Task::save() before Add tasks). Name of new task:'.$add_task->get_title() );				// send error to the task of the system
				return FALSE;
			}
			
			
		}
		
		foreach($add_tasks as $key => $add_task){
			if(!isset($this->task[$add_task->get_id()])){
				$this->tasks[$add_task->get_id()] = $add_task;
			}
		}
		return TRUE;
	}
	
	function get_task($task_id){
		if(isset($this->tasks[$task_id])){
			return $this->tasks[$task_id];
		}
		return FALSE;
	}


}

?>