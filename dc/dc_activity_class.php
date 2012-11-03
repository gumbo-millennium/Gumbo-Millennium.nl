<?php
/**
 * Description of activity_class
 *
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
*

 * 
 Function summary:
 
	IMPORTANT:
	IF A FUNCTION FAILS IT RETURNS NULL!
		THE ERROR CAN BE FOUND IN THE ERROR LIST, THE USER GETS AN ERROR!
		IF A FUNCTION SUCCEED, THE CHANCE CAN BE FOUND IN THE CHANCE LIST
	
	fill()
		// fill this activity from the database
		
	get_all_status($status)     			
		// returns a array with all the user with $status = 	"yes"/"no"/"maybe"/"all";
		
	get_user_status($user)
		// get the current status of a user_erro
		
	set_user_status($user_id, $user_ip, $comment, $new_status)
		// chance the status of a user: $new_status = "yes"/"no"/"maybe"
		
	calculate_price($user_id)
		// returns the price the user has to pay (member of not member)
		
	is_member($user_id)
		// check of a user is a gumbo member 
		// returns a boolean
		
		
	set_group_manager($user_id_list, $new_status, $full_list = 0)	
	// description:
		// 	set users as managers for this activity (for users that are not in the Activity Commission)
	//inputs: 	
		//		user_id_list: array of user id's who gets a new status
		//		new_status: string of the new status of the user id's: enable (set as manager), disable (remove as manager)
		//		full_list: optional setting, if true all other user id's in the db that are not on the user id list will be chanced to disable
					// default is false, so it won't chance other statuses of user id's in the db
	// returns:
		//		succes:	1
		//		wrong status: false (check error log)
		//		no rows added: false (check error log)

		
	get_chance_list()
		// get the list of all the chances of this activity
		
	set_chance_log($user_id, $user_ip, $modification)
		// add to the chance log
		
	get_group_acces_list($status)
		// get a list of all the groups that can see this activity $status = "enable"/"disable"/"all"
		
	// set_group_acces($group_id_list, $new_status, $full_list = 0) 
		// description:
		// 		Set groups to see this activity
		//inputs: 	
		//		group_id_list: array of group id's who gets a new status
		//		new_status: string of the new status of the groups id's: enable (set as see activity), disable (set as disable form seing the activity)
		//		full_list: optional setting, if true all other groep id's in the db that are not on the group id list will be chanced to disable
					// default is false, so it won't chance other statuses of group id's in the db
		// returns:
		//		succes:	true
		//		wrong status: false (check error log)
		//		activity is in the past: false (check error log)
	
	is_manager($user_id)
		// checks is the user is a manager 

	
	user_acces($user_id)
		// checks if the user have acces to this activity
		// returns a boolean
		
	set_error_log($error)
		// add the error to the error log
		
	get_error_list()
		// get all the error of this activity
		
	save()
		// save the activity: send it to de db
		// if done return true else return false
		
	pay($user_id, $amount)
		// chance payment for a user
	
	getters and setters:
	
	getId()
	getName()
	setName($name)
	setDescription($description)
	getDescription()
	getDescription_edit()
	getStartDatetime()
	setStartDatetime($startDatetime)
	getEndDatetime()
	setStopDatetime($endDatetime)
	getEnroll()
	setEnroll($enroll)
	getEnrollDateTime()
	setEnrollDateTime($enrollDateTime)
	getEnrollMax()
	setEnrollMax($enrollMax)
	getPrice()
	setPrice($price)
	getPriceMember()
	setPriceMember($priceMember)
	getLocation()
	setLocation($location)
	getActive()
	setActive($active)
	getCategory()
	setCategory($category)
	getPayOption()
	setPayOption($payOption)
	getCommission()
	setCommission($commission)
	getUserId()
	getDatetimeCreated()
	getDatetimeUpdated()
		
 */
 define("MEMBER_GROUP_ID", 9); // set the id of the Gumbo member groep
 define("AC_GROUP_ID", 14); // set the id of the Gumbo activity groep
 define("DC_GROUP_ID", 15); // set the id of the Gumbo digitale commisie groep
 define("BESTUUR_GROUP_ID", 13); // set the id of the Gumbo bestuur groep
 define("ADM_GROUP_ID", 5); // set the id of the Gumbo bestuur groep
 
 include_once($phpbb_root_path . 'dc/dc_functions.' . $phpEx);
 
class activity {
    // declare varibles 
    private $id = null;				// activity id
    private $name;					// name of the activity
    private $description;			// description of the activity 
    private $start_datetime;		// start date and time of the activity
    private $end_datetime;			// end date and time of the activity
    private $enroll;				// must enroll for the activity (0 = no 1 = yes)
    private $unsubscribe_max_datetime;// the date and time the users are allowed to unsubscribe
    private $enroll_datetime;		// end date and time to enroll
    private $enroll_max;			// max user to enroll
    private $price;					// the price for a not gumbo member
    private $price_member;			// the price fr a gumbo member
    private $location;				// the location of the activity
	private $active;				// is the activity visable for not managers
    private $category;				// catacory of the activity like: 1 = LHW (Land Huis Weekend)
    private $pay_option;			// pay options: ideal or contant
    private $commission;			// the commission that created the activity
    private $user_id;				// the user that made the activity
    private $user_ip;				// ip of the user that made the activity
    private $datetime_created;		// the date and time this acticity was created
    private $datetime_updated;		// the date and time this activity was updated
	private $chance_log = array(); // if the activity is saved this will added to the chance log
	
	// some extra varibles for parsing text 
	private $bbcode_bitfield;
	private $bbcode_uid;
	private $enable_magic_url;
	private $enable_bbcode;
	private $enable_smilies;
	
	// fill the activiy from the database
    function fill($id) 
	{
		global $db, $user;
		if(gettype($id) != "integer")
			return null;
		$sql = 'SELECT *, count(*) amount FROM `dc_activity` WHERE id = ' . (int)$id;
		$result = $db->sql_query($sql);							// send query
		$row = $db->sql_fetchrow($result);						// get row from the db
		if($row['amount'] != 1){
			trigger_error($user->lang['DC_ACT_NO_ACT']);
			return null;
		}
        $this->id = $id;
        $this->name = $row['name'];
        $this->description = (String)$row['description'];
        $this->start_datetime = new DateTime( $row['start_datetime']);
        $this->end_datetime = new DateTime($row['stop_datetime']);
        $this->enroll = $row['enroll'];
        $this->enroll_datetime = new DateTime( $row['enroll_datetime'] );
        $this->unsubscribe_max_datetime = new DateTime( $row['unsubscribe_max'] );
        $this->enroll_max =(int) $row['enroll_max'];
        $this->price =(float) $row['price'];
        $this->price_member = (float) $row['price_member'];
        $this->location = $row['location'];
		$this->active = (bool) $row['active'];
        $this->category = $row['category'];
        $this->pay_option = $row['pay_options'];
        $this->commission = $row['commission'];
        $this->user_id = (int) $row['user_id'];
        $this->user_ip = $row['user_ip'];
        $this->datetime_created = new DateTime($row['datetime_created']);
        $this->datetime_updated = new DateTime( $row['datetime_updated']);
		
		$this->bbcode_bitfield = $row['bbcode_bitfield'];
		$this->bbcode_uid = $row['bbcode_uid'];
		$this->enable_magic_url = $row['enable_magic_url'];
		$this->enable_bbcode = $row['enable_bbcode'];
		$this->enable_smilies = $row['enable_smilies'];
		
		
		$db->sql_freeresult($result); 							// remove query
		return true;
    } 
	
	// functions
	
	// get list of all enrolled users or return null if nothing found
	/* $list['user_id'] = array(
			'username' 	=> username, 
			'comments' 	=> comments, 
			'datetime' 	=> datetime of enrolled time, 
			'status'	=>  current status (0 of 1) 1 is enrolled
			'price_paid' =>	Price the user already paid
		)
	*/
	function get_all_status($status){
		global $db;												// get connection to the database		
		$user_list = null;
		switch(trim($status)){										// check status
			case "yes":										// all the users with acces
				$status = " AND enroll.status = 'yes'";					// set SQL WHERE statment
				break;			
			case "no":									// all the users who had acces
				$status = " AND enroll.status = 'no'";					// set SQL WHERE statment 
				break;
			case "maybe":									// all the users who had acces
				$status = " AND enroll.status = 'maybe'";					// set SQL WHERE statment 
				break;
			case "all":											// all the users
				$status = "";									// set SQL WHERE statment
				break;
			default:											// wrong status
				$this->set_error_log("Function: get_all_status; Wrong status: " . $status);
				global $user;
				trigger_error($user->lang['DC_ACT_INVALID_STATUS']);
				return null;									
		}

		$sql = "SELECT enroll.user_id user_id, users.username username, enroll.comments comments, enroll.datetime datetime, enroll.price_payed price_payed, enroll.status status 
		FROM dc_activity_enroll as enroll 
			LEFT JOIN `dc_users` AS users 
			ON enroll.user_id=users.user_id  
		WHERE enroll.activity_id = ". $this->id . $status . " ORDER BY users.username" ; // contstucts a query that select all the users that are enrolled for this activity
		$result = $db->sql_query($sql);							// send query
		while ($row = $db->sql_fetchrow($result))				// walk through all the rows
		{
			$user_list[$row['user_id']] = array(
			'username' 			=> $row['username'],
			'comments' 			=> htmlspecialchars_decode($row['comments']),
			'datetime' 			=> new DateTime($row['datetime']),
			'status' 			=> $row['status'],
			'price_paid' 		=> $row['price_payed'])	;  	
		}
		$db->sql_freeresult($result);							// remove query
		return $user_list;										// send array
		
	}
	
	// userChangeStatus user 
		//returns  
		//	true: user status changed
		//	false: user already this status, 
		//	false: user didn´t change because of a sql error  
	function set_user_status($user_id, $user_ip, $comment, $new_status){
		global $db, $user;											// get connection to db
		
		switch($new_status){
			case 'yes':
				if(($this->enroll_datetime < new DateTime("now")) || ($this->start_datetime < new DateTime("now") )){
					$this->set_error_log("Function: set_user_status; Event is past the enroll date time or is in the past");
					trigger_error($user->lang['DC_ACT_IN_PAST']);
					return null;
				}
				break;
			case 'no':
				if(($this->unsubscribe_max_datetime < new DateTime("now")) || ($this->start_datetime < new DateTime("now") )){
					$this->set_error_log("Function: set_user_status; Event is past the unsubscribe max datetime or is in the past");
					trigger_error($user->lang['DC_ACT_IN_PAST']);
					return null;
				}
				break;
			default:
				$this->set_error_log("Function: set_user_status; Invalid user status:". $new_status);
				trigger_error($user->lang['DC_ACT_INVALID_STATUS']);
				return null; 
		}
		
		$user_status = $this->get_user_status($user_id);			// get the current status of the user

		if( $user_status == $new_status){							// check if the currnet status equals the new status
			$this->set_error_log("Function: set_user_status; User already this status");
			global $user;
			trigger_error($user->lang['DC_ACT_ALREADY_STATUS']);
			return null;											// return user already this status
		}
		$comment = utf8_normalize_nfc($comment);
		$uid = $bitfield = $options = ''; // will be modified by generate_text_for_storage
		$enable_bbcode = $enable_magic_url = $enable_smilies = false;
		generate_text_for_storage($comment, $uid, $bitfield, $options, $enable_bbcode, $enable_magic_url, $enable_smilies);
		$sql_ary = array(
			'activity_id'	=> (int)$this->id,
			'user_id'		=> (int)$user_id,
			'user_ip'		=> (String)$user_ip,
			'comments'		=> (String)htmlspecialchars($comment),
			'price'			=> (float)$this->calculate_price($user_id),
			'price_payed'	=> (float)'0.00',
			'status'		=> (String)$new_status
		);	

		switch( $user_status ){								// is the user already in the db
			case null:											// user not in de db
				$sql= "INSERT INTO `gumbo_millennium`.`dc_activity_enroll` 	".$db->sql_build_array('INSERT', $sql_ary); // constructs a query to set the status of the user with this activity and calculats the price
				break;
			default:
			$sql= 'UPDATE `gumbo_millennium`.`dc_activity_enroll` 
				SET '.$db->sql_build_array('UPDATE', $sql_ary) . ', datetime = CURRENT_TIMESTAMP
				WHERE activity_id = '. intval($this->id) .' AND user_id = '. intval($user_id); // constructs a query that changes the status of user and this activity
		}
		$result = $db->sql_query($sql);								// send query
		if($db->sql_affectedrows()){						// check if something changed
			$db->sql_freeresult($result);					// remove query
			return true;										// send user enrolled
		}else{												// nothing is changed
			$db->sql_freeresult($result);					// remove query
			return null;										// send user not enrolled because of a sql error
		}
	}
	
	// checks what price the user have to pay
	function calculate_price($user_id){
		if($this->is_member($user_id)){							// check if the user is a member 
			$price = $this->price_member;						// set member price
		}else{
			$price=$this->price;								// set non member price
		}
		return $price;											// return the price
	}
	
	// checks if the user is a gumbo member
	function is_member($user_id){
		if(in_array(MEMBER_GROUP_ID, all_user_groups($user_id)))
			return true;
		return null;
	}
	
	// checks if the user is enrolled, returns: 0: user is not enrolled, else: the status
	function get_user_status($user){
		global $db;												// get connection to the database
		$sql = 'SELECT status, COUNT(*) AS amount FROM `dc_activity_enroll` WHERE user_id = ' .$user. ' AND activity_id = ' . $this->id . ' '; // constuct a query to get the status of a user with this activity 
		$result = $db->sql_query($sql);							// send query
		$row = $db->sql_fetchrow($result);						// get the result
		$db->sql_freeresult($result);							// remove query
		if($row['amount'])										// check if there is a record
			return $row['status'];								// return the status of the user
		return null;												// no records 
	}
	
	function set_user_comment($user_id, $new_comment){
		global $db;
		if($this->get_user_status($user_id) != null){
			$sql_ary = array(
				"comments" => htmlspecialchars($new_comment)
			);
			$sql= 'UPDATE `gumbo_millennium`.`dc_activity_enroll` 
				SET '.$db->sql_build_array('UPDATE', $sql_ary) . '
				WHERE activity_id = '. intval($this->id) .' AND user_id = '. intval($user_id);
			$db->sql_query($sql);	
		}else{
			$this->set_error_log("Function: set_user_comment; User not enrolled");
			global $user;
			trigger_error($user->lang['DC_ACT_NOT_ENROLLED']);
			return null;											// return user already this status
		}
	}

	
	// get list of user acces to change the activity: 
		//$status: 	
		//			enable: all the users who have acces
		//			disable: all the users who had acces
		//			all: all the user
	// returns: 
		// if wrong status: NULL
		// if all: an array: accesList[user_id][created][disabled] (disabled is no acces to the activity)
		//	else: an array: accesList[user_id][created]
	function get_group_manage_list($status){
		global $db;												// get connection to the database
		switch(trim($status)){										// check status
			case "enable":										// all the users with acces
				$status = " AND disabled = 0";					// set SQL WHERE statment
				break;			
			case "disable":									// all the users who had acces
				$status = " AND disabled = 1";					// set SQL WHERE statment 
				break;
			case "all":											// all the users
				$status = "";									// set SQL WHERE statment
				break;
			default:											// wrong status
				$this->set_error_log("Function: get_group_manage_list; Wrong status: " . $status);
				global $user;
				trigger_error($user->lang['DC_ACT_INVALID_STATUS']);
				return null;									
		}
		$sql = 'SELECT group_id, created, disabled FROM `dc_activity_group_manage` WHERE activity_id = \'' . $this->id . '\''. $status; // get a list from user_manage to this activity
		$result = $db->sql_query($sql);							// send query
		$acces_list = array();
		while ($row = $db->sql_fetchrow($result))				// walk through all the rows
		{
			if(!$status){ 										// check the status
				$acces_list[$row['group_id']] = array( 'created' => new DateTime($row['created']), 'disabled' =>(int)$row['disabled']);  	// makes an array: accesList[user_id][created][disabled]
			}else { 
				$acces_list[$row['group_id']] = new DateTime($row['created']);   	// makes an array: accesList[user_id][created] 
			}
		}
		$db->sql_freeresult($result);							// remove query
		return $acces_list;
	}
	
	// set_group_manager 
		// description:
		// 	set users as managers for this activity (for users that are not in the Activity Commission)
		//inputs: 	
		//		group_id_list: array of user id's who gets a new status
		//		new_status: string of the new status of the user id's: enable (set as manager), disable (remove as manager)
		//		full_list: optional setting, if true all other user id's in the db that are not on the user id list will be chanced to disable
					// default is false, so it won't chance other statuses of user id's in the db
		// returns:
		//		succes:	1
		//		wrong status: false (check error log)
		//		no rows added: false (check error log)
	function set_group_manager($group_id_list, $new_status, $full_list = 0){
		global $db, $user;
		// check if activity is allowed to chanced
		if($this->start_datetime < new DateTime("now") ){
			$this->set_error_log("Function: set_group_manager; Activity is in the past");
			trigger_error($user->lang['DC_ACT_IN_PAST']);
			return null;
		}
		// check if $new status is valid and convert new_status to 'disabled'(as in the db)
		switch(trim($new_status)){									// remove spaces
			case "enable":											// if new_status is enbable
				$new_status = 0;									// set new status to enabled (disabled = 0)
				break;			
			case "disable":											// if new_status is disable
				$new_status = 1;									// set new status to disable (disabled = 1)
				break;
			default:												// wrong new_status
				$this->set_error_log("Function: set_group_manager; Wrong status: " . $new_status);
				trigger_error($user->lang['DC_ACT_INVALID_STATUS']);
				return null;									
		}
		
		
		if(!is_array($group_id_list)){									// check if group id list is an array
			$this->set_error_log('Function: set_group_manager; group_id_list not an array');	// set administator log
			trigger_error('group_id_list is not an array');				// send error to the group
		}
		
		if(!count($group_id_list)){									// check if group id list is an array
			$this->set_error_log('Function: set_group_manager; group_id_list is empty');	// set administator log
			trigger_error('group_id_list is empty');				// send error to the group
		}
		
		// check if the group is in the db //
		$current_managers = $this->get_group_manage_list("all");		// get a list of all the groups with acces
		$current_managers_status_chance = array();						// the list of all managers who status chances 
		// check for exisiting managers with no status chance
		foreach($group_id_list AS $key => $current_group_id){				// loop through all group id (current_group_id) from the group_id_list
			if(isset($current_managers[$current_group_id])){				// check if group id is in the current manager list
				if( $current_managers[$current_group_id]['disabled'] != $new_status){ 	// check if current_group_id status is thesame as new status
					// the group id exist and has new status
					$current_managers_status_chance[] = $current_group_id;
				}
				unset($current_managers[$current_group_id]);				// remove group id from the current_managers list
				unset($group_id_list[array_search($current_group_id, $group_id_list)]);	// remove group id from the group id list (the input) 
			}
		}
		// update current managers with a status chance
		if(count($current_managers_status_chance)){
			foreach($current_managers_status_chance AS $key => $group_id){		// loop through all managers with a new status
				$sql_ary = array(
					'disabled'      => $new_status								// set new status
				);

				$sql = 'UPDATE dc_activity_group_manage
					SET ' . $db->sql_build_array('UPDATE', $sql_ary) . '
					WHERE group_id = ' . (int) $group_id.' AND activity_id = ' .(int) $this->id;
				$db->sql_query($sql);
				if(!$db->sql_affectedrows()){									// check for chanced reocords
					// no chanced records
					$this->set_error_log("Function: set_group_manager; UPDATE status: No new record");
					trigger_error($user->lang['DC_ACT_ERROR_NO_ROWS_ADDED']);
				}
				
			}
			unset($current_managers_status_chance);
			
		}
		
		// insert new managers
		if(count($group_id_list)){
			$sql_ary = array();
			foreach($group_id_list AS $key => $group_id){
				$sql_ary[] = array(
					'activity_id'	=> (int)$this->id,
					'group_id'		=> (int)$group_id,
					'disabled'		=> (int)$new_status,
				);
			}
			$db->sql_multi_insert('dc_activity_group_manage', $sql_ary);
			if(!$db->sql_affectedrows()){									// check for chanced reocords

					// no chanced records
					$this->set_error_log("Function: set_group_manager; UPDATE status: No new record");
					trigger_error($user->lang['DC_ACT_ERROR_NO_ROWS_ADDED']);
			}
		}
		
		//disable managers (only if full list is enabled)
		if(count($current_managers) && $full_list){
			foreach($current_managers AS $group_id => $value){		// loop through all managers with a new status
				$sql_ary = array(
					'disabled'      => (int) 1								// set new status
				);

				$sql = 'UPDATE dc_activity_group_manage
					SET ' . $db->sql_build_array('UPDATE', $sql_ary) . '
					WHERE group_id = ' . (int) $group_id .' AND activity_id = ' .(int) $this->id;
				$db->sql_query($sql);
				
			}
			unset($current_managers_status_chance);
		}
		
		return true;															// return succesful
	}
	
	// get changelog
	function get_chance_list(){
		global $db;
		$chance_list = null;
		$counter = 0;
		$sql = "SELECT user_id, datetime, modification FROM dc_activity_chancelog WHERE activity_id = '". $this->id ."' ORDER BY datetime ASC";
		$result = $db->sql_query($sql);
		while ($row = $db->sql_fetchrow($result))				// walk through all the rows
		{
			$chance_list[$counter]= array ( "user_id" => $row['user_id'] ,"datetime" => $row['datetime'],"modification" => $row['modification']);
			$counter++;
		}
		return $chance_list;
	}
	
	// add changelog
	function set_chance_log($user_id, $user_ip, $modification){
		global $db;
		$modification = utf8_normalize_nfc(htmlspecialchars($modification));
		$sql_ary = array(
			'activity_id'	=> (int)$this->id,
			'user_id'		=> (int)$user_id,
			'user_ip'		=> (String)$user_ip,
			'modification' 	=> (String)$modification
		);
		
		$sql = "INSERT INTO `dc_activity_chancelog` ". $db->sql_build_array('INSERT', $sql_ary);
		$db->sql_query($sql);
		switch($result = $db->sql_affectedrows()){
			case 0:
				$this->set_error_log("Function: set_chance_log; INSERT status: No new record");
				global $user;
				trigger_error($user->lang['DC_ACT_ERROR_NO_ROWS_ADDED']);
				return null;
				//set error
			case 1:
				return true;
			default:
				$this->set_error_log("Function: set_chance_log; INSERT status: To many new record");
				global $user;
				trigger_error($user->lang['DC_ACT_ERROR_TO_MANY_ROWS_ADDED']);
				return null;
				//set error
		}
	}
	
	
	// get list of groupacces
		//return array: arrayList[group_id] =  date created
	function get_group_acces_list($status){
		global $db;												// get connection to the database
		switch(trim($status)){										// check status
			case "enable":										// all the users with acces
				$status = " AND disabled = 0";					// set SQL WHERE statment
				break;			
			case "disable":									// all the users who had acces
				$status = " AND disabled = 1";					// set SQL WHERE statment 
				break;
			case "all":											// all the users
				$status = "";									// set SQL WHERE statment
				break;
			default:											// wrong status
				$this->set_error_log("Function: get_group_acces_list; Wrong status: " . $status);
				global $user;
				trigger_error($user->lang['DC_ACT_INVALID_STATUS']);
				return null;									
		}
		$sql = 'SELECT group_id, created, disabled FROM `dc_activity_groupacces` WHERE activity_id = \'' . $this->id . '\''. $status; // get a list from user_manage to this activity
		$result = $db->sql_query($sql);							// send query
		$acces_list = array();
		while ($row = $db->sql_fetchrow($result))				// walk through all the rows
		{
			if(!$status){ 										// check the status
				$acces_list[$row['group_id']] = array( 'created' =>new DateTime( $row['created']), 'disabled' => intval($row['disabled']));  	// makes an array: accesList[user_id][created][disabled]
			}else { 
				$acces_list[$row['group_id']] =new DateTime( $row['created'] );   	// makes an array: accesList[user_id][created] 
			}
		}
		$db->sql_freeresult($result);							// remove query
		return (isset($acces_list)? $acces_list : 0);
	}
	
	// set_group_acces 
		// description:
		// 		Set groups to see this activity
		//inputs: 	
		//		group_id_list: array of group id's who gets a new status
		//		new_status: string of the new status of the groups id's: enable (set as see activity), disable (set as disable form seing the activity)
		//		full_list: optional setting, if true all other groep id's in the db that are not on the group id list will be chanced to disable
					// default is false, so it won't chance other statuses of group id's in the db
		// returns:
		//		succes:	true
		//		wrong status: false (check error log)
		//		activity is in the past: false (check error log)
	function set_group_acces($group_id_list, $new_status, $full_list = 0){
		global $db;
		
		// check if the activity is allowed to be added
		if($this->start_datetime < new DateTime("now") ){
				$this->set_error_log("Function: set_group_acces; Activity is in the past");
				global $user;
				trigger_error($user->lang['DC_ACT_IN_PAST']);
				return null;
		}
		
		// check if the new status is valid and convert new_status to 'disabled'(as in the db)
		switch(trim($new_status)){									// remove spaces
			case "enable":											// if new_status is enbable
				$new_status = 0;									// set new status to enabled (disabled = 0)
				break;			
			case "disable":											// if new_status is disable
				$new_status = 1;									// set new status to disable (disabled = 1)
				break;
			default:												// wrong new_status
				$this->set_error_log("Function: set_group_acces; Wrong status: " . $new_status);
				global $user;
				trigger_error($user->lang['DC_ACT_INVALID_STATUS']);
				return null;									
		}
		
		if(!is_array($group_id_list)){									// check if user id list is an array
			$this->set_error_log('Function: set_group_acces; group_id_list not an array');	// set administator log
			trigger_error('group_id_list is not an array');				// send error to the user
		}
		
		if(!count($group_id_list)){									// check if user id list is emty
			$this->set_error_log('Function: set_group_acces; group_id_list is empty');	// set administator log
			trigger_error('group_id_list is empty');				// send error to the user
		}
		
		// check if the group is in the db //
		$groups_accces_list = $this->get_group_acces_list("all"); // get a list of all groups with acces
		$group_acces_chance_list = array();							// the list of all groups that need s acces chance 
		foreach($group_id_list AS $key => $current_group_id){		// loop through all group id
			if(isset($groups_accces_list[$current_group_id])){ // check if current group id is in the group_acces list
				if( $groups_accces_list[$current_group_id]['disabled'] != $new_status){	// check if group status is thesame as the current status
					$group_acces_chance_list[] = $current_group_id;
				}
				// no status chance needed
				unset($groups_accces_list[$current_group_id]);			// remove from the group acces list 
				unset($group_id_list[array_search($current_group_id, $group_id_list)]);	// remove from the input list
			}
		}
		// now we have 3 list:
			// group_acces_chance_list: groups that are in the db and need a status chance
			// groups_accces_list: the groups that where not in the input 
			// groups_id_list: all groups that are not in the db
		
		// update current groups with a status chance
		if(count($group_acces_chance_list)){
			foreach($group_acces_chance_list AS $key => $group_id){		// loop through all groups with a new status
				$sql_ary = array(
					'disabled'      => $new_status								// set new status
				);

				$sql = 'UPDATE dc_activity_groupacces
					SET ' . $db->sql_build_array('UPDATE', $sql_ary) . '
					WHERE group_id = ' . (int) $group_id.' AND activity_id = ' .(int) $this->id;
				$db->sql_query($sql);
				
			}
			unset($group_acces_chance_list);
			
		}
		
		//insert new groups
		if(count($group_id_list)){
			$sql_ary = array();
			foreach($group_id_list AS $key => $group_id){
				$sql_ary[] = array(
					'activity_id'	=> (int)$this->id,
					'group_id'		=> (int)$group_id,
					'disabled'		=> (int)$new_status
				);
			}
			$db->sql_multi_insert('dc_activity_groupacces', $sql_ary);
			if(!$db->sql_affectedrows()){									// check for chanced reocords
				// no chanced records
				$this->set_error_log("Function: set_group_acces; UPDATE status: No new record");
				trigger_error($user->lang['DC_ACT_ERROR_NO_ROWS_ADDED']);
			}
		}
		
		//disable groups (only if full list is enabled)
		if(count($groups_accces_list) && $full_list){
			foreach($groups_accces_list AS $group_id => $value){		// loop through all managers with a new status
				$sql_ary = array(
					'disabled'      => (int) 1								// set new status
				);

				$sql = 'UPDATE dc_activity_groupacces
					SET ' . $db->sql_build_array('UPDATE', $sql_ary) . '
					WHERE group_id = ' . (int) $group_id .' AND activity_id = ' .(int) $this->id;
				$db->sql_query($sql);
				
			}
			unset($groups_accces_list);
		}
		
		return true;															// return succesful	
	}
	
	
	// checks is the user is a manager 
		// returns a boolean
	function is_manager($user_id){
		
		// check for default acces groups as AC, Bestuur and DC
		$user_groups = all_user_groups($user_id);								// get all groups of a users
		$managers_list = $this->get_group_manage_list("enable");				// get all managers groups
		$default_acces = array(ADM_GROUP_ID, BESTUUR_GROUP_ID, DC_GROUP_ID);	// get all default groeps: AC Bestuur DC
		foreach($user_groups AS $key => $groep_id){						// loop true all the groep ID's 
			if(in_array($groep_id, $default_acces))							// 
				return true;													// the groups id matches 
			if(isset($managers_list[$groep_id]))			
				return true;													// the groups id matches 
		}
		return null;															// no matches
	}	
	
	// check if the users has acces to this activity
	function user_acces($user_id){
		if($this->active){												// check for recular acces 
			$group_acces_list = $this->get_group_acces_list("enable");
			if($group_acces_list == true){
				foreach($group_acces_list AS $key => $value){
					if(in_array($key, all_user_groups($user_id)))
						return true;
				}
			}
		}
		return false;
	}
	
	// add error
	function set_error_log($error){
		global $db, $user;
		$user->data['user_id'];
			
		$error = utf8_normalize_nfc(htmlspecialchars($error));
		$uid = $bitfield = $options = ''; // will be modified by generate_text_for_storage
		$enable_bbcode = $enable_magic_url = $enable_smilies = false;
		generate_text_for_storage($error, $uid, $bitfield, $options, $enable_bbcode, $enable_magic_url, $enable_smilies);
		$sql_ary = array(
			'activity_id'	=> (int)$this->id,
			'user_id'		=> (int)$user->data['user_id'],
			'user_ip'		=> (String)$_SERVER['REMOTE_ADDR'],
			'error' 		=> (String)$error
		);
		
		$sql = "INSERT INTO `dc_activity_errorlog` ". $db->sql_build_array('INSERT', $sql_ary);
		$db->sql_query($sql);
		switch($result = $db->sql_affectedrows()){
			case 0:
				return null;
				trigger_error($user->lang['DC_ACT_ERROR_NO_ROWS_ADDED']);
			case 1:
				return true;
			default:
				trigger_error($user->lang['DC_ACT_ERROR_TO_MANY_ROWS_ADDED']);
				return null;
		}		
	}
	
	// get error list
	function get_error_list(){
		global $db;
		$error_list = null;
		$counter = 0;
		$sql = "SELECT user_id, user_ip, datetime, error FROM dc_activity_errorlog WHERE activity_id = '". $this->id ."' ORDER BY datetime ASC";
		$result = $db->sql_query($sql);
		while ($row = $db->sql_fetchrow($result))				// walk through all the rows
		{
			$error_list[$counter]= array ( "user_id" => $row['user_id'] , "user_ip" => $row['user_ip'] , "datetime" => $row['datetime'],"error" => $row['error']);
			$counter++;
		}
		return $error_list;
	}
	
	
	
	
	// save this activity
		// returns true if saved or else false
	function save(){
		// check if this activity is in de db
		global $user, $db;
		if($this->start_datetime < new DateTime("now") ){
			$this->set_error_log("Function: save; Activity is in the past");
			trigger_error($user->lang['DC_ACT_IN_PAST']);
			return null;
		}
		$sql= '';
		$sql_array = array(
			 'name'				=> (String)$this->name,
			 'description'		=> (String)$this->description,
			 'start_datetime'	=> (String)$this->start_datetime->format('Y-m-d H:i:s'),
			 'stop_datetime'	=> (String)$this->end_datetime->format('Y-m-d H:i:s'),
			 'enroll'			=> (bool)$this->enroll,
			 'enroll_datetime'	=> (String)$this->enroll_datetime->format('Y-m-d H:i:s'),
			 'unsubscribe_max'	=> (String)$this->unsubscribe_max_datetime->format('Y-m-d H:i:s'),
			 'enroll_max'		=> (int)$this->enroll_max,
			 'price'			=> (float)$this->price,
			 'price_member'		=> (float)$this->price_member,
			 'location'			=> (String)$this->location,
			 'active'			=> (bool)$this->active,
			 'category'			=> (int)$this->category,
			 'pay_options'		=> (String)$this->pay_option,
			 'bbcode_bitfield'	=> (String)$this->bbcode_bitfield,
			'bbcode_uid'		=> (String)$this->bbcode_uid,
			'enable_magic_url'	=> (bool)$this->enable_magic_url,
			'enable_bbcode'		=> (bool)$this->enable_bbcode,
			'enable_smilies'	=> (bool)$this->enable_smilies,
		);
		if($this->id == null){		// check if this is a new activity 
			$now = new DateTime("now"); 
			$sql_array['commission'] 				= $this->commission;
			$sql_array['user_id']					= (int)$user->data['user_id'];
			$sql_array['user_ip']					= (String)$user->ip;
			$sql_array['datetime_created']			= (String)$now->format('Y-m-d H:i:s');

			$sql = "INSERT INTO dc_activity ". $db->sql_build_array('INSERT', $sql_array);
		}else{
			$sql = "UPDATE dc_activity SET ". $db->sql_build_array('UPDATE', $sql_array) . " WHERE id = ". (int)$this->id;
			$modification = null;
			foreach($this->chance_log AS $row => $value){
				$modification .= $row . ":".$value;
			}
			$this->set_chance_log($user->data['user_id'], $user->ip, $modification);
			
		}
		$result = $db->sql_query($sql);
		if($this->id == null){
			$this->id = $db->sql_nextid();
		}
		return true;
		/* DOENST WORK ???
		if($db->sql_affectedrows($result)){	
			print'henk';
		}else{
			$this->set_error_log("Function: save(); Save the activity: No new or chanced rows");
			return false;
		}
		*/
	}
	
	function pay($user_id, $amount){
		global $user, $db;
		if( $this->get_user_status($user_id) != 0)
			return null;
		if(gettype($amount) != "double")
			return null;
		$sql = "UPDATE `dc_activity_enroll` SET  price_payed = ". $amount ." WHERE user_id = ". $user_id ." AND 	activity_id = ". $this->id;
		$db->sql_query($sql);
		switch($result = $db->sql_affectedrows()){
			case 0:
				return null;
				trigger_error($user->lang['DC_ACT_ERROR_NO_ROWS_ADDED']);
			case 1:
				return true;
			default:
				trigger_error($user->lang['DC_ACT_ERROR_TO_MANY_ROWS_ADDED']);
				return null;
		}	
		
	}
    
	// Getters and setters
    public function getId(){
		return $this->id;
    }

    public function getName(){
		return  htmlspecialchars_decode($this->name);
    }

    public function setName($name){
		$name = preg_replace( "/[^a-zA-Z0-9 ]/","",$name);
		if($this->name != $name)
			$this->chance_log["name"] = $this->name . "->". $name . ";";
		$this->name = htmlspecialchars($name);
    }

    public function setDescription($description){
		$description = utf8_normalize_nfc($description);
			
		$uid = $bitfield = $options = ''; // will be modified by generate_text_for_storage
		$enable_bbcode = $enable_magic_url = $enable_smilies = true;
		generate_text_for_storage($description, $uid, $bitfield, $options, $enable_bbcode, $enable_magic_url, $enable_smilies);
		$this->bbcode_uid = $uid;
		$this->bbcode_bitfield = $bitfield;
		$this->enable_magic_url = $enable_magic_url;
		$this->enable_bbcode = $enable_bbcode ;
		$this->enable_smilies = $enable_smilies;

		$this->description=$description;
		
	
    }
	
	public function getDescription(){
		$description = $this->description;
		
		$options = 	(($this->enable_bbcode) ? OPTION_FLAG_BBCODE : 0) +
					(($this->enable_smilies) ? OPTION_FLAG_SMILIES : 0) + 
					(($this->enable_smilies) ? OPTION_FLAG_LINKS : 0);
	

		$description = generate_text_for_display($description, $this->bbcode_uid, $this->bbcode_bitfield, $options);
		return $description;
    }
	
	public function getDescription_edit(){
		$description = $this->description;
		$options = 	(($this->enable_bbcode) ? OPTION_FLAG_BBCODE : 0) +
					(($this->enable_smilies) ? OPTION_FLAG_SMILIES : 0) + 
					(($this->enable_smilies) ? OPTION_FLAG_LINKS : 0);
	
		$description = generate_text_for_edit($description, $this->bbcode_uid, $this->bbcode_bitfield, $options);

		return $description["text"];
    }

    public function getStartDatetime(){
            return $this->start_datetime;
    }

    public function setStartDatetime($startDatetime){
			if(!($startDatetime instanceof DateTime)) 
				return null;
			if($startDatetime < new DateTime("now"))
				return null;
			if(($this->start_datetime != $startDatetime) && ($this->id != 0) )
				$this->chance_log["startDatetime"] = $this->start_datetime->format('Y-m-d H:i:s') . "->". $startDatetime->format('Y-m-d H:i:s') . ";";
            $this->start_datetime = $startDatetime;
    }

    public function getEndDatetime(){
            return $this->end_datetime;
    }

    public function setEndDatetime($endDatetime){
		if(!($endDatetime instanceof DateTime)) 
			return null;
		if($endDatetime < new DateTime("now"))
			return null;
		if($endDatetime < $this->start_datetime)
			return null;
		if(($this->end_datetime != $endDatetime) && ($this->id != 0))
			$this->chance_log["endDatetime"] = $this->end_datetime->format('Y-m-d H:i:s') . "->". $endDatetime->format('Y-m-d H:i:s') . ";";
		$this->end_datetime = $endDatetime;
    }

    public function getEnroll(){
		return $this->enroll;
    }

    public function setEnroll($enroll){
		if(gettype($enroll) != "boolean")
			return null;
		if($this->enroll != $enroll)
			$this->chance_log["enroll"] = $this->enroll . "->". $enroll . ";";
		$this->enroll = $enroll;
    }


	
	public function setEnrollDateTime($enrollDateTime){
		if(!($enrollDateTime instanceof DateTime )) 
			return null;
		if($enrollDateTime < new DateTime("now"))
			return null;
		if($enrollDateTime > $this->start_datetime)
			return null;
		if(($this->enroll_datetime != $enrollDateTime) && ($this->id != 0))
			$this->chance_log["enrollDateTime"] = $this->enroll_datetime->format('Y-m-d H:i:s') . "->". $enrollDateTime->format('Y-m-d H:i:s') . ";";
        $this->enroll_datetime = $enrollDateTime;
    }
	   
	public function getUnsubscribeMaxDatetime(){
		return $this->unsubscribe_max_datetime;
    }
	
    public function setUnsubscribeMaxDatetime($unsubscribe_max_datetime){
		if(!($unsubscribe_max_datetime instanceof DateTime )) 
			return null;
		if($unsubscribe_max_datetime < new DateTime("now"))
			return null;
		if($unsubscribe_max_datetime > $this->start_datetime)
			return null;
		if($unsubscribe_max_datetime < $this->enroll_datetime)
			return null;
		if(($this->unsubscribe_max_datetime != $unsubscribe_max_datetime) && ($this->id != 0))
			$this->chance_log["unsubscribe_max_datetime"] = $this->unsubscribe_max_datetime->format('Y-m-d H:i:s') . "->". $unsubscribe_max_datetime->format('Y-m-d H:i:s') . ";";
        $this->unsubscribe_max_datetime = $unsubscribe_max_datetime;
    }
	
	public function getEnrollDateTime(){
		return $this->enroll_datetime;
    }

    public function getEnrollMax(){
		return $this->enroll_max;
    }

    public function setEnrollMax($enrollMax){
		if(gettype($enrollMax) != "integer")
			return null;
		if($enrollMax < 0)
			return null;
		if($this->enroll_max != $enrollMax)
			$this->chance_log["enroll_max"] = $this->enroll_max . "->". $enrollMax . ";";
		$this->enroll_max = $enrollMax;
    }

    public function getPrice(){
		return $this->price;
    }

    public function setPrice($price){
		if(gettype($price) != "double")
			return null;
		if($price < 0)
			return null;
		if($this->price != $price)
			$this->chance_log["price"] = $this->price . "->". $price . ";";
		$this->price = $price;
    }

    public function getPriceMember(){
        return $this->price_member;
    }

    public function setPriceMember($priceMember){
		if(gettype($priceMember) != "double")
			return null;
		if($priceMember < 0)
			return null;
		if($this->price_member != $priceMember)
			$this->chance_log["price_member"] = $this->price_member . "->". $priceMember . ";";
		$this->price_member = $priceMember;
    }

    public function getLocation(){
		return  htmlspecialchars_decode($this->location);
    }

    public function setLocation($location){
		$location = preg_replace( "/[^a-zA-Z0-9, ]/","",$location);
		if($this->location != $location)
			$this->chance_log["location"] = $this->location . "->". $location . ";";
		$this->location = htmlspecialchars($location);
    }
	
	public function getActive(){
		return $this->active;
	}
	
	public function setActive($active){
		if(gettype($active) != "integer")
			return null;
		if(!(($active == 0) || ($active == 1)))
			return null;
		if($this->active != $active)
				$this->chance_log["active"] = $this->active . "->". $active . ";";
		$this->active = $active;
	}

    public function getCategory(){
		return $this->category;
    }

    public function setCategory($category){
		if(gettype($category) != "integer")
			return null;
		if($this->category != $category)
			$this->chance_log["category"] = $this->category . "->". $category . ";";
		$this->category = $category;
    }

    public function getPayOption(){
		return $this->pay_option;
    }

    public function setPayOption($payOption){
		if(gettype($payOption) != "string")
			return null;
		if($payOption != "ideal" || $payOption != "contant")
			return null;
		if($this->pay_option != $payOption)
			$this->chance_log["payOption"] = $this->pay_option . "->". $payOption . ";";
		$this->pay_option = $payOption;
    }

    public function getCommission(){
		return $this->commission;
    }

    public function setCommission($commission){
		global $db;
		if(gettype($commission) != "integer")
				return null;
		$sql ="SELECT COUNT(*) count FROM `dc_groups` WHERE group_id ='" . $commission . "'";  // check if the group id exist
		$result = $db->sql_query($sql);							// send query
		$row = $db->sql_fetchrow($result);
		if( $row["count"] != 1 )								// if not found or there are more id's
			return null;
		$db->sql_freeresult($result);							// remove query
		if($this->commission != $commission)
			$this->chance_log["commission"] = $this->commission . "->". $commission . ";";
        $this->commission = $commission;
    }

    public function getUserId(){
            return $this->userId;
    }

    public function getUserIp(){
        return $this->userIp;
    }

    public function getDatetimeCreated(){
            return $this->datetime_created;
    }

    public function getDatetimeUpdated(){
            return $this->datetime_updated;
    }
}

?>
