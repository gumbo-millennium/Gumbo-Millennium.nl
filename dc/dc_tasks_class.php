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

include_once($phpbb_root_path . 'dc/dc_activity_user_class.php');
include_once($phpbb_root_path . 'dc/dc_tasks_handler_class.php');
include_once($phpbb_root_path . 'dc/dc_functions.' . $phpEx);

class Task {

	protected  $tasks_handler = NULL;		// the task handler
	protected  $id = NULL;			// the task id
	protected  $title;				// title of the task
	protected  $description = NULL;	// description of the task
	protected  $deadline;			// date time of the deadline for this task
	protected  $created;			// creation date time of this task
	protected  $group;				// the assigned group for this task
	protected  $complete;			// boolean for to check if the task is complet
	protected  $childs_count;		// the count of the childs
	protected  $completed_datetime = NULL;// if the task is completed this contains the date and time.
	protected  $childs = NULL;
	protected  $users = NULL;
	
	// task_parent_id and task_parent_object are split for code optimilisation
		// task_prent_id will be saved in the database in the row of the task
		// task_parent_object will not been set if uses fill_from_database, it will be set en get_parent or set_parent
		/*
		Lifecyle of parent:
			create new Task:
				task_prent_id 		= NULL
				task_prent_object 	= NULL
			Task::fill_from_database()/Task::fill_from_database_multiple()
				task_prent_id 		= set
				task_prent_object 	= NULL
			Task::get_parent() or Task::set_parent()
				task_prent_id 		= set
				task_prent_opbject 	= set
		
		Info:
			task_prent_id is never always private and not accesble from other classes
			task_prent_opbject is public
		*/ 		
	private $task_parent_id = NULL;		// if the task is a child, this contains the  id task_parent 
	protected $task_parent_object = NULL;	// if the parent is asked this will contain the parent	
	
	// some extra varibles for parsing text 
	protected  $bbcode_bitfield;
	protected  $bbcode_uid;
	protected  $enable_magic_url;
	protected  $enable_bbcode;
	protected  $enable_smilies;
	
	function fill_from_database($task_id, $tasks_handler = null, $set_parent = NULL){
		global $db, $user;
	
		if(gettype($task_id) != "integer"){ // check if the id is a int
			trigger_error("Fill_from_database: param $task_id is not a integer"); // set error log
			return NULL;
		}
		
		$sql_array = array(
			'SELECT'    => 'tsk.*, cld.task_id_parent, count(cld.task_id_parent) AS childs_count',

			'FROM'      => array(
				TASKS_TABLE  => 'tsk',
			),

			'LEFT_JOIN' => array(
				array(
					'FROM'  => array(TASK_CHILD_TABLE => 'cld'),
					'ON'    => 'tsk.id = cld.task_id_child'
				)
			),
			'WHERE'     => 'tsk.id = '.  $db->sql_escape($task_id),
			'GROUP_BY'  => 'cld.task_id_parent'
		);

		$sql = $db->sql_build_query('SELECT', $sql_array);
		$result = $db->sql_query($sql);							// send query
		$row = $db->sql_fetchrow($result);					// get row from the database
		
		$this->id=$task_id;			
		$this->title=$row['title'];		
		$this->description=$row['description'];	
		$this->deadline=new DateTime($row['deadline']);		
		$this->created=new DateTime($row['created']);	
		$this->group=intval($row['group_id']);		
		$this->childs_count=intval($row['childs_count']);		
		$this->completed_datetime=(intval(($row['completed_datetime']))) ? new DateTime($row['completed_datetime']) : NULL;
		
		// some extra varibles for parsing text 
		$this->bbcode_bitfield=$row['bbcode_bitfield'];
		$this->bbcode_uid=$row['bbcode_uid'];
		$this->enable_magic_url=$row['enable_magic_url'];
		$this->enable_bbcode=$row['enable_bbcode'];
		$this->enable_smilies=$row['enable_smilies'];
		$this->task_parent_id = (intval($row['task_id_parent']) > 0)? intval($row['task_id_parent']) : NULL;
		
		if(!$this->set_tasks_handler($tasks_handler)){
			trigger_error('Fill_from_database: No valided tasks_handler. Child: 	' . $this->get_id());				// send error to the newchild of the system
		}
		
		if($this->tasks_handler){
			$this->tasks_handler->add_tasks(array($this));
		}
		
		if($set_parent){													// check if a parent is given
			if($set_parent->get_id() == $this->task_parent_id || $this->task_parent_id == NULL){
				if(!$this->set_parent($set_parent)){							// set parent and check if parent is valid
					trigger_error('Fill_from_database: set_parent not a valid parent. Task: '. $this->get_id());				// send error to the current user of the system
					return FALSE;
				}
			}else{
				trigger_error('Fill_from_database: set_parent not the current parent. Task: '. $this->get_id());				// send error to the current user of the system
				return FALSE;
			}
		}
		return TRUE;
	}


	function fill_from_database_multiple(
		$id,
		$title,
		$description,
		$deadline,
		$group,
		$created,
		$completed_datetime,
		$childs_count,
		
		$bbcode_bitfield,
		$bbcode_uid,
		$enable_magic_url,
		$enable_bbcode,
		$enable_smilies,
		
		$task_id_parent,
		$tasks_handler = null,
		$task_object_parent = null
	){
		if(!$this->set_tasks_handler($tasks_handler)){
			trigger_error('Fill_from_database_multiple: No valided tasks_handler. Task:' . $this->getid());				// send error to the newchild of the system
		}
		
		$this->id=$id;			
		$this->title=$title;		
		$this->description=$description;
		$this->deadline=new DateTime($deadline);		
		$this->created=new DateTime($created);	
		$this->group=intval($group);
		$this->childs_count=intval($childs_count);				
		$this->completed_datetime=(intval($completed_datetime)) ? new DateTime($completed_datetime) : NULL;
		
		// some extra varibles for parsing text 
		$this->bbcode_bitfield=$bbcode_bitfield;
		$this->bbcode_uid=$bbcode_uid;
		$this->enable_magic_url=$enable_magic_url;
		$this->enable_bbcode=$enable_bbcode;
		$this->enable_smilies=$enable_smilies;
		$this->task_parent_id = (intval($task_id_parent) > 0)? intval($task_id_parent) : NULL;
		
		if($task_object_parent){													// check if a parent is given
			if($task_object_parent->get_id() == $this->task_parent_id || $this->task_parent_id == NULL){
				if(!$this->set_parent($task_object_parent)){							// set parent and check if parent is valid
					trigger_error('Fill_from_database_multiple: task_object_parent not a valid parent. Task:' . $this->getid());				// send error to the current user of the system
					return FALSE;
				}
			}else{
				trigger_error('Fill_from_database_multiple: task_object_parent not the current parent. Task:' . $this->getid());				// send error to the current user of the system
				return FALSE;
			}
		}		
		return TRUE;
	}
	
	function fill_from_data(
		$title,
		$deadline,
		$group,
		$count_childs,
		$description = NULL,
		$tasks_handler = NULL,
		$childs = NULL,
		$users = NULL,
		$completed_datetime = NULL,
		$task_parent = NULL
	){
		if(!$this->set_title($title)) return FALSE;
		if(!$this->set_deadline($deadline)) return FALSE;
		if(!$this->set_group($group)) return FALSE;
		if(!$this->set_count_childs($count_childs)) return FALSE;
		
		if($description){
			if(!$this->set_description($description)) return FALSE;
		}
		if($completed_datetime){
			if(!$this->set_completed_datetime($completed_datetime)) return FALSE;
		}
		
		if(!$this->save()){
			return FALSE;
		}
		
		
		if(!$this->set_tasks_handler($tasks_handler)){
			trigger_error('Fill_from_data: No valided tasks_handler. Task: ' . $this->get_title());				// send error to the newchild of the system
		}
		
		if($this->tasks_handler){
			if(!$this->tasks_handler->add_tasks(array($this))) return FALSE;
		}
		if($childs){
			if(!$this->set_childs($childs)) return FALSE;
		}
		if($users){
			if(!$this->set_users($users)) return FALSE;
		}
		
		if($task_parent){
			if(!$task_parent->set_childs(array($this), FALSE)) return FALSE;
		}
		return TRUE;
	}
	
	function is_complete(){
		if($this->completed_datetime){
			return TRUE;
		}else{
			return FALSE;
		}
	}
		
	function get_users($order = NULL, $short = NULL, $limit = 0, $offset = NULL){
	global $db;												// get connection to the database		
		$users = array();
		
		// set shorting
		$short_array = array('username', 'user_id', 'real_name');
		$order_array = array('ASC', 'DESC');

		switch($short){
			case 'username':
				$short = "LOWER(users.username)";
			case 'real_name':
				$short = "LOWER(custom.pf_gumbo_realname)";
				break;
			case 'user_id':
				$short = "LOWER(task.user_id)";
				break;
			default:
				$short = "LOWER(custom.pf_gumbo_realname)";
		}

		// check if the order is valid
		if(!in_array($order, $order_array)){
			$order = 'ASC';
		}
		
		$sql = "SELECT task.user_id user_id, users.username username, custom.pf_gumbo_realname realname
			FROM ". TASK_USER_TABLE ." as task 
			LEFT JOIN ". USERS_TABLE ." AS users ON task.user_id=users.user_id  
			LEFT JOIN  ". PROFILE_FIELDS_DATA_TABLE ." AS custom ON custom.user_id = task.user_id
			WHERE task.task_id = ".  $db->sql_escape($this->id) ." 
			ORDER BY ".  $db->sql_escape($short) .' '. $db->sql_escape($order);		
		if($limit == 0){
			$result = $db->sql_query($sql); // send query
		}else{
			$result = $db->sql_query_limit($sql, (int)$limit, (int)$offset);							// send query
		}
		
		while ($row = $db->sql_fetchrow($result))				// walk through all the rows
		{
			$real_name = ($row['realname'] == 'nieuwbouw' || $row['realname'] == '') ? $row['username'] :$row['realname'];
			$users[$row['user_id']] = array(
			'username' 			=> $row['username'],
			'real_name'			=> $real_name);  		
		}
		$db->sql_freeresult($result);						// remove query
		
		
		return $users;										// send array
	}
	
	// set_users
		// description:
		// 	set one or more users for this this task
		//inputs: 	
		//		new_users: array of user id's who gets a new status
		//		full_list: optional setting, if TRUE: the all the current users will be replaced by the new_users
					// default is TRUE, so all users will by replaced. 
					// to add users to the user list set to FALSE
		// returns:
		//		succes:	1
		//		wrong status: FALSE
		//		no rows added: FALSE
	function set_users($new_users, $full_list = 1){
		global $db, $user;

		if(!is_array($new_users)){									// check if user id list is an array
			trigger_error('set_users: users_id_list is not an array');				// send error to the current user of the system
		}
		
		if(!count($new_users)){									// check if user id list is an array
			trigger_error('set_users: users_id_list is empty');				// send error to the user of the system
		}
		
		$current_users = $this->get_users();
		$remove_users = array();						// get a list of all the users
		
		
		//check for users that need to be add to the database ($new_users) and users that need to be removed from the database ($remove_users)
		if(count($current_users  > 0)){
			foreach($current_users AS $current_user_id => $current_user_array){	
				$user_in_database = array_search($current_user_id, $new_users);				
				if(in_array($current_user_id, $new_users)){		// check if current_user_id is in new_users
					unset($new_users[array_search($current_user_id, $new_users)]);		// user already in te database, so remove from insertion
					//unset($remove_users[$current_user_id]);		
				}else{
					$remove_users[]  = $current_user_id;// user not in new users, so remove from database
				}
			}
		}
			
		if(count($new_users  > 0)){		// more than 0 users in to add in the database
			$sql_ary = array();
			// create array for database input
			foreach($new_users AS $key => $add_user_id){
				$this->childs_count++;			// add users to count
				$sql_ary[] = array(
					'task_id' => (int)$this->id,
					'user_id' => (int)$add_user_id
				);
			}
		}
		$db->sql_multi_insert( TASK_USER_TABLE , $sql_ary);				// insert data into task_user_table
		if(!$db->sql_affectedrows()){									// check for changed reocords
			// no changed records
			trigger_error("set_users: ".$user->lang['DC_ACT_ERROR_NO_ROWS_ADDED']);
		}
	
		if(count($remove_users) > 0 && $full_list){				// check for more than 0 users to remove and if the users need to remove
			$this->childs_count -= count($remove_users);			// remove users from count
			$sql = 'DELETE FROM ' . TASK_USER_TABLE . ' 
					WHERE ' . $db->sql_in_set('user_id', $remove_users) .' AND task_id = '. $this->id;
			$db->sql_query($sql);
			
			if(!$db->sql_affectedrows()){									// check for changed reocords
				// no changed records
				trigger_error("set_users: ".$user->lang['DC_ACT_ERROR_NO_ROWS_ADDED']);
			}
		}
		
		return TRUE;	
		
		
	}
	function get_childs($limit = 0, $offset = NULL){
	global $db;												// get connection to the database		
		
		if(!$this->id){
			trigger_error('Get_childs: New child doesnt exist in the database (First use Task::save() before get childs). Name of new child:'.$this->get_title() );				// send error to the child of the system
			return FALSE;	
		}
		if($this->childs){
			return $this->childs;
		}
		$this->childs = array();
		
		
		$sql_array = array(
			'SELECT'    => '*, count(*) AS childs_count',

			'FROM'      => array(
				TASK_CHILD_TABLE  => 'cld',
			),

			'LEFT_JOIN' => array(
				array(
					'FROM'  => array(TASKS_TABLE => 'tsk'),
					'ON'    => 'cld.task_id_child = tsk.id'
				)
			),
			
			'WHERE' => 'cld.task_id_parent = ' .  $db->sql_escape($this->id)
		);
		$sql = $db->sql_build_query('SELECT', $sql_array);
		$result = $db->sql_query($sql);			
		
		$tasks = array();
		while ($row = $db->sql_fetchrow($result))				// walk through all the rows
		{
			$new_child_id = intval($row['id']);					// Get Child id
			
			// Check if child is in the handler
			if($this->tasks_handler){							// checkif handler is set
				if( $this->tasks_handler->get_task($new_child_id) ){		// is the  child in the handler
					$this->childs[$new_child_id] = $this->tasks_handler->get_task($new_child_id); // childs is in the handler, set child 
				}
			}
			
			if(!(isset($this->childs[$new_child_id]))){		// check if this child is set
				// child is not set, so create a new task as task
				$child = new Task();
				$child->fill_from_database_multiple(
					$new_child_id ,
					$row['title'],
					$row['description'],
					$row['deadline'],
					$row['group_id'],
					$row['created'],
					$row['completed_datetime'],
					$row['childs_count'],
					
					$row['bbcode_bitfield'],
					$row['bbcode_uid'],
					$row['enable_magic_url'],
					$row['enable_bbcode'],
					$row['enable_smilies'],
					
					$row['task_id_parent'],
					$this->tasks_handler
				);
				$this->childs[$child->get_id()] = $child;
			}
		}
		$db->sql_freeresult($result);						// remove query
		return $this->childs;								// send array
	}
	
	// set_childs
		// description:
		// 	set one or more childs for this this task
		//inputs: 	
		//		new_users: array of user id's who gets a new status
		//		full_list: optional setting, if TRUE: the all the current users will be replaced by the new_users
					// default is TRUE, so all users will by replaced. 
					// to add users to the user list set to FALSE
		// returns:
		//		succes:	1
		//		wrong status: FALSE
		//		no rows added: FALSE
	function set_childs($new_childs, $full_list = TRUE){
		global $db, $user;
		
		if(!$this->id){
			trigger_error('Set_childs: Task doesnt exist in the database (First use Task::save() before add childs). Name of new child:'.$this->get_title() );				// send error to the child of the system
			return FALSE;	
		}
		if(!is_array($new_childs)){									// check if user id list is an array
			trigger_error('Set_childs: users_id_list is not an array');				// send error to the current child of the system
			return FALSE;
		}
				
		// check if in array all are tasks
		foreach($new_childs as $key => $new_child){
			if(!($new_child instanceof Task)){
				trigger_error('Set_childs: No valided new child');				// send error to the newchild of the system
				return FALSE;
			}
			if($new_child == $this){
				trigger_error('Set_childs: Can not add task as new child to itself: ' . $this->id);				// send error to the child of the system
				return FALSE;
			}
			
			if(!$new_child->get_id()){
				trigger_error('Set_childs: New child doesnt exist in the database (First use Task::save() before add childs). Name of new child:'.$new_child->get_title() );				// send error to the child of the system
				return FALSE;
			}
			
			if($this->get_parent()){
				if($new_child->get_id() == $this->get_parent()->get_id()){
					trigger_error('Set_childs: Dont make loops in the system!');	
					return FALSE;
				}
			}
		}
		
		$remove_childs = $this->get_childs();
		
		foreach($new_childs as $key => $new_child){
			if($new_child->match_parent($this)){
				$new_child->set_parent($this);				// make sure to set this object as parent of the child
				unset($new_childs[$key]);					// remove new child form the add to database
				unset($remove_childs[$new_child->get_id()]);	// remove new child form the remove from database list
			}elseif( $old_parent = $new_child->get_parent())
			{
				$old_parent_childs = $old_parent->get_childs();		// get all childs from the old parent
				unset($old_parent_childs[$new_child->get_id()]); 	// remove from the current childs list
				$old_parent->set_childs($old_parent_childs);		// set childs without the new child 
			}
		}
			
		if(count($new_childs  > 0)){		// more than 0 childs in to add in the database
			$sql_ary = array();
			// create array for database input
			foreach($new_childs AS $key => $child){
				$this->childs[$child->get_id()] = $child;
				$child->set_parent($this);
				$sql_ary[] = array(
					'task_id_parent' => (int)$this->id,
					'task_id_child' => (int)$child->get_id()
				);
			}
		}
		$db->sql_multi_insert( TASK_CHILD_TABLE , $sql_ary);				// insert data into task_user_table
		if(!$db->sql_affectedrows()){									// check for changed reocords
			// no changed records
			trigger_error("Set_childs:". $user->lang['DC_ACT_ERROR_NO_ROWS_ADDED']);
			return FALSE;
		}
	
		if(count($remove_childs) > 0 && $full_list){				// check for more than 0 users to remove and if the users need to remove
			foreach($remove_childs AS $remove_child){
				unset($this->childs[$remove_child->get_id()]);				// remove from current childs
				$remove_child->set_parent(NULL);					// remove parent from removed childs
			}
			// remove from database
			$sql = 'DELETE FROM ' . TASK_CHILD_TABLE . ' 
					WHERE ' . $db->sql_in_set('task_id_child', array_keys($remove_childs)) .' AND task_id_parent = '. $this->id;
			$db->sql_query($sql);
			
			if(!$db->sql_affectedrows()){									// check for changed reocords
				// no changed records
				trigger_error("Set_childs: ".$user->lang['DC_ACT_ERROR_NO_ROWS_ADDED']);
				return FALSE;
			}
		}	
		return TRUE;	
	}
	
	// check if parameter is the parent
	function match_parent($parent){
		if($parent->get_id() == $this->task_parent_id){
			return TRUE;
		}
		return FALSE;
	}
	
	function save(){
		global $user, $db;
		// check if this activity is valid to send to the database
		if(!$this->is_task_valided()){
			//in invalid
			trigger_error("Save: Tried to send invalid varibles to the database");			
			return NULL;
		}
		$sql= '';
		$sql_array = array(
			'title'				=> (String)$this->title,
			'description'		=> (String)$this->description,
			'group_id'			=> (int)$this->group,
			'deadline'			=> (String)$this->deadline->format('Y-m-d H:i:s'),			// format datetime class to the datetime format of the database			
			'created'			=> (($this->created) ? (String)$this->created->format('Y-m-d H:i:s') : NULL),				// format datetime class to the datetime format of the database
			'completed_datetime'	=> (($this->completed_datetime  != NULL) ? (String)$this->completed_datetime->format('Y-m-d H:i:s') : NULL),				// format datetime class to the datetime format of the database
			'bbcode_bitfield'	=> (String)$this->bbcode_bitfield,
			'bbcode_uid'		=> (String)$this->bbcode_uid,
			'enable_magic_url'	=> (bool)$this->enable_magic_url,
			'enable_bbcode'		=> (bool)$this->enable_bbcode,
			'enable_smilies'	=> (bool)$this->enable_smilies,
		);
		if($this->id == NULL){		// check if this is a new task. If this is a new activity the id is set by the database (AUTO_INCREMENT)
			$sql = "INSERT INTO ". TASKS_TABLE . $db->sql_build_array('INSERT', $sql_array);	// create insert query for a new activity
		}else{
			$sql = "UPDATE ". TASKS_TABLE ." SET ". $db->sql_build_array('UPDATE', $sql_array) . " WHERE id = ". (int)$this->id; // create qeury to update the activity in the database
		}
		$result = $db->sql_query($sql);		// send the query to the database (update or insert)
		if($this->id == NULL){				// check if this is a new activity
			// this is a new activity
			$this->id = $db->sql_nextid();	// get new activity id
		}
		return TRUE;
	}
	
	//is_task_valided()
	/*
	* This function checks if all the varibels of this task are set.
	* If all the varibels are set it return TRUE
	* Else it return FALSE
	* see error log for unset varibles
	*/
	function is_task_valided(){
		$invalided_varibles_found = NULL;
			
		//search for unset varibles. If found unseted varibles save in $invalided_varibles_found
		$invalided_varibles_found .= (isset($this->title)) ? NULL :"title,";				 
		$invalided_varibles_found .= (isset($this->deadline)) ? NULL : "deadline,";				
		$invalided_varibles_found .= (isset($this->group)) ? NULL : "group,";				
				
		// check if there are unseted varibles
		if($invalided_varibles_found != NULL){
			// errors found
			trigger_error("is_activity_valided: Values not valid: " . $invalided_varibles_found);
			return FALSE;
		}
		return TRUE;
		
	}
	
	function get_id(){	

		return $this->id;
	}
	
	function set_title($new_title){
		$uid = $bitfield = $options = ''; // will be modified by generate_text_for_storage
		$enable_bbcode = $enable_magic_url = $enable_smilies = FALSE;
		generate_text_for_storage($new_title, $uid, $bitfield, $options, $enable_bbcode, $enable_magic_url, $enable_smilies);
		
		$this->title =  htmlspecialchars($new_title);
		return TRUE;
	}
	
	function get_title(){
		return $this->title;
	}
	
	function get_description(){
		$description = $this->description;
		
		$options = 	(($this->enable_bbcode) ? OPTION_FLAG_BBCODE : 0) +
					(($this->enable_smilies) ? OPTION_FLAG_SMILIES : 0) + 
					(($this->enable_smilies) ? OPTION_FLAG_LINKS : 0);
	

		$description = generate_text_for_display($description, $this->bbcode_uid, $this->bbcode_bitfield, $options);
		return $description;
    }
	
	function get_description_edit(){
		$description = $this->description;
		$options = 	(($this->enable_bbcode) ? OPTION_FLAG_BBCODE : 0) +
					(($this->enable_smilies) ? OPTION_FLAG_SMILIES : 0) + 
					(($this->enable_smilies) ? OPTION_FLAG_LINKS : 0);
	
		$description = generate_text_for_edit($description, $this->bbcode_uid, $this->bbcode_bitfield, $options);

		return $description["text"];
    }
	
	function get_description_preview($amount_chars, $bbcode = TRUE){
		if(gettype($amount_chars) != "integer")
			return NULL;
		if(gettype($bbcode) != "boolean")
			return NULL;
		
		$description = $this->description;
		if($bbcode){
			strip_bbcode($description, $this->bbcode_uid);
		}
		$description = substr($description, 0, $amount_chars);

		return $description;
    }
    
	function set_description($description){
	
		$description = utf8_normalize_nfc($description);
		
		$uid = $bitfield = $options = ''; // will be modified by generate_text_for_storage
		$enable_bbcode = $enable_magic_url = $enable_smilies = TRUE;
		generate_text_for_storage($description, $uid, $bitfield, $options, $enable_bbcode, $enable_magic_url, $enable_smilies);
		$this->bbcode_uid = $uid;
		$this->bbcode_bitfield = $bitfield;
		$this->enable_magic_url = $enable_magic_url;
		$this->enable_bbcode = $enable_bbcode ;
		$this->enable_smilies = $enable_smilies;

		$this->description=$description;	
		return TRUE;
    }

	
	function set_deadline($new_deadline){
	
		if(!($new_deadline instanceof DateTime)) 
			return NULL;
		if($new_deadline < new DateTime("now"))
			return NULL;
		$this->deadline = $new_deadline;
		return TRUE;
    }
	
	function get_deadline(){
		return $this->deadline;
	}
	
	function set_created($new_created){
	
		if(!($new_created instanceof DateTime)) 
			return NULL;
		if($new_created < new DateTime("now"))
			return NULL;
		$this->created = $new_created;
		return TRUE;
    }
	
	function get_created(){
		return $this->created;
	}
	function get_group(){
		return $this->group;
    }

    function set_group($new_group){
		global $db;
		
		if(gettype($new_group) != "integer")
				return NULL;
		$sql ="SELECT COUNT(*) count FROM `". GROUPS_TABLE ."` WHERE group_id ='" . $db->sql_escape((int)$new_group) . "'";  // check if the group id exist
		$result = $db->sql_query($sql);							// send query
		$row = $db->sql_fetchrow($result);
		if( $row["count"] != 1 )								// if not found or there are more id's
			return NULL;
		$db->sql_freeresult($result);							// remove query
        $this->group = $new_group;
		return TRUE;
    }
	
	private function set_count_childs($childs_count){
		if(gettype($childs_count) != "integer")
				return NULL;
		$this->childs_count = $childs_count;
		return TRUE;
	}
	
	function count_childs(){
		return $this->childs_count;
	}

	function set_completed_datetime($new_completed_datetime){
		if($new_completed_datetime){
			if(!($new_completed_datetime instanceof DateTime) ) 
				return NULL;
			if($new_completed_datetime < new DateTime("now"))
				return NULL;
			$this->completed_datetime = $new_completed_datetime;
		}else{
			$this->completed_datetime = NULL;
		}
		return TRUE;
    }
	
	function get_completed_datetime(){
		return $this->completed_datetime;
	}
	
	function get_parent(){
		if($this->task_parent_object){
			return $this->task_parent_object;
		}
		if(!$this->task_parent_id){
			return NULL;
		}
	
		// check if parent is in the handler
		if($this->tasks_handler){							// checkif handler is set
			if( $this->tasks_handler->get_task($this->task_parent_id) ){		// is the parent in the handler
				$this->task_parent_object = $this->tasks_handler->get_task($new_child_id); // parent is in the handler, set parent 
			}
		}
		// check if parent is found in the handler
		if(!$this->task_parent_object){		// if parent is found in thet handler thel parent will be set
			// parent is not set so get it from the database
			$this->task_parent_object = new Task();
			$this->task_parent_object = Task::get_task($this->task_parent_id, $this->tasks_handler);
		}
		
		// hec if parent is found the the database
		if(!($this->task_parent_object)){
			return FALSE;		// parent not found in the database: return false
		}
		return $this->task_parent_object;		// parent is found so return parent object
	}
	
	private function set_parent($new_parent){
		if(!(($new_parent instanceof Task) || $new_parent == NULL)){	// check if new_parernt is a task object
			return NULL;
		}
		if($new_parent){					// check for new parent object
			if($new_parent->get_id() == 0){	// check if new_parent is in the database (than the parent got an id)
				return NULL;
			}
			$this->task_parent_id = $new_parent->get_id();	
			$this->task_parent_object = $new_parent;
		}else{
			$this->task_parent_id = NULL;
			$this->task_parent_object = NULL;			
		}
		return TRUE;
	}
	
	function set_tasks_handler($tasks_handler){
		if(!($tasks_handler instanceof Tasks_handler || $tasks_handler == NULL)){
			return FALSE;
		}
		$this->tasks_handler = $tasks_handler;
		return TRUE;
	}
	
	static function get_task($task_id, $task_handler = NULL, $parent = NULL){
		if(gettype($task_id) != "integer"){ // check if the id is a int
			trigger_error("Get_task: param $task_id is not a integer"); // set error log
			return NULL;
		}
		
		if(!(($parent instanceof Task) || $parent == NULL)){	// check if new_parernt is a task object
			trigger_error("Get_task: param new_parent is not a Task");
			return NULL;
		}
		
		if(!(($task_handler instanceof Tasks_handler) || $task_handler == NULL)){	// check if task_handler is a task object
			trigger_error("Get_task: param task_handler is not a Tasks_handler");
			return NULL;
		}
		
		if($task_handler != NULL){									// checkif handler is set
			if( $new_task = $task_handler->get_task($task_id) ){		// is the  child in the handler
				return $new_task; // childs is in the handler, set child 
			}
		}
	
		$new_task = new Task();
		$new_task->fill_from_database($task_id, $task_handler, $parent);
		
		return $new_task; 
	}
}

?>