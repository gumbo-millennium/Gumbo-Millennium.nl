<?php
/**
 * Description of activity_lib
 *
 * @author Gerco Versloot
 * @made 24-1-2012

 * 
 Function summary:
 
	IMPORTANT:
	IF A FUNCTION FAILS IT RETURNS NULL!
		THE ERROR CAN BE FOUND IN THE ERROR LIST, THE USER GETS AN ERROR!
		IF A FUNCTION SUCCEED, THE CHANCE CAN BE FOUND IN THE CHANCE LIST
	
	fill()
		// fill this activity from the database
		
	get_all_status($status)     			
		// returns a array with all the user with $status = 	"yes"/"no"/"maybe";
		
	get_user_status($user)
		// get the current status of a user_erro
		
	set_user_status($user_id, $user_ip, $comment, $new_status)
		// chance the status of a user: $new_status = "yes"/"no"/"maybe"
		
	calculate_price($user_id)
		// calculates the price of user (member of not member)
		
	is_member($user_id)
		// check of a user is a gumbo member
		
	get_user_manage_list($status)
		// get a list of all the user who can manage this acitvity how has $status : "enable"/"disable"/"all"
		
	set_user_manage($user_id, $new_status)
		// add or change a user a manage of this activity $new_status = "enable"/"disable"
		
	get_chance_list()
		// get the list of all the chances of this activity
		
	set_chance_log($user_id, $user_ip, $modification)
		// add to the chance log
		
	get_group_acces_list($status)
		// get a list of all the groups that can see this activity $status = "enable"/"disable"/"all"
		
	set_group_acces($group_id, $new_status)
		// add of chance the acces of a group $new_status =  "enable"/"disable"
		
	user_acces($user_id)
		// checks if the user have acces to this activity
		
	set_error_log($error)
		// add the error to the error log
		
	get_error_list()
		// get all the error of this activity
		
	save()
		// save the activity: send it to de db
		
	pay($user_id, $amount)
		// chance payment for a user
	
	getters and setters:
	
	getId()
	getName()
	setName($name)
	setDescription($description)
	getDescription()
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
	setUserIp($user_ip)
	getDatetimeCreated()
	getDatetimeUpdated()
		
 */
 define("MEMBER_GROUP_ID", 9); // set the id of the Gumbo member groep
 
 
class activity {
    // declare varibles 
    private $id = null;					// activity id
    public $name;					// name of the activity
    private $description;			// description of the activity 
    private $start_datetime;		// start date and time of the activity
    private $end_datetime;			// end date and time of the activity
    private $enroll;				// must enroll for the activity (0 = no 1 = yes)
    private $enroll_datetime = null;		// end date and time to enroll
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
	private $bbcode_options;
	
	
	// fill the activiy from the database
    function fill($id) 
	{
		global $db;
		if(gettype($id) != "integer")
			return null;
		$sql = 'SELECT *, count(*) amount FROM `dc_activity` WHERE id = ' . (int)$id;
		$result = $db->sql_query($sql);							// send query
		$row = $db->sql_fetchrow($result);						// get row from the db
		if($row['amount'] != 1){
			trigger_error($user->lang['DC_ACT_NO_ACT']);
			return null;
		}
        $this->id = (int)$row['id'];
        $this->name = $row['name'];
        $this->description = (String)$row['description'];
        $this->start_datetime = new DateTime( $row['start_datetime']);
        $this->end_datetime = new DateTime($row['stop_datetime']);
        $this->enroll = $row['enroll'];
        $this->enroll_datetime = new DateTime( $row['enroll_datetime'] );
        $this->enroll_max =(int) $row['enroll_max'];
        $this->price =(double) $row['price'];
        $this->price_member = (double) $row['price_member'];
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
		$this->bbcode_options = $row['bbcode_options'];
		$db->sql_freeresult($result); 							// remove query
		return true;
    } 
	
	// functions
	
	// get list of all enrolled users or return null if nothing found
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
				trigger_error($user->lang['DC_ACT_WRONG_STATUS']);
				return null;									
		}

		$sql = "SELECT enroll.user_id user_id, users.username username, enroll.comments comments, enroll.datetime datetime, enroll.price_payed price_payed, enroll.status status 
		FROM dc_activity_enroll as enroll 
			LEFT JOIN `dc_users` AS users 
			ON enroll.user_id=users.user_id  
		WHERE enroll.activity_id = ". $this->id . $status . " ORDER BY users.username" ; // contstucts a query that select all the users that are enrolled for this activity
		$result = $db->sql_query($sql);							// send query
		while ($row = $db->sql_fetchrow($result))				// walk true all the rows
		{
			$user_list[$row['user_id']] = array(
			'username' 			=> $row['username'],
			'comments' 			=> $row['comments'],
			'datetime' 			=> $row['datetime'],
			'status' 			=> $row['status'],
			'price_payed' 		=> $row['price_payed'])	;  	
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
		global $db;											// get connection to db
		if(($this->enroll_datetime < new DateTime("now")) || ($this->start_datetime < new DateTime("now") )){
			$this->set_error_log("Function: set_user_status; Activity is in the past");
			global $user;
			trigger_error($user->lang['DC_ACT_IN_PAST']);
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
		$allow_bbcode = $allow_urls = $allow_smilies = false;
		generate_text_for_storage($comment, $uid, $bitfield, $options, $allow_bbcode, $allow_urls, $allow_smilies);
		$sql_ary = array(
			'activity_id'	=> (int)$this->id,
			'user_id'		=> (int)$user_id,
			'user_ip'		=> (String)$user_ip,
			'comments'		=> (String)htmlspecialchars($comment),
			'price'			=> (double)$this->calculate_price($user_id),
			'price_payed'	=> (double)'0.00',
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
		$db->sql_query($sql);								// send query
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
		if(in_array(MEMBER_GROUP_ID, activity_user::user_all_groups($user_id)))
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
	function get_user_manage_list($status){
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
				$this->set_error_log("Function: get_user_manage_list; Wrong status: " . $status);
				global $user;
				trigger_error($user->lang['DC_ACT_WRONG_STATUS']);
				return null;									
		}
		$sql = 'SELECT user_id, created, disabled FROM `dc_activity_user_manage` WHERE activity_id = \'' . $this->id . '\''. $status; // get a list from user_manage to this activity
		$result = $db->sql_query($sql);							// send query
		while ($row = $db->sql_fetchrow($result))				// walk true all the rows
		{
			if(!$status){ 										// check the status
				$acces_list[$row['user_id']] = array( 'created' => $row['created'], 'disabled' => $row['disabled']);  	// makes an array: accesList[user_id][created][disabled]
			}else { 
				$acces_list[$row['user_id']] = $row['created'];   	// makes an array: accesList[user_id][created] 
			}
		}
		$db->sql_freeresult($result);							// remove query
		return $acces_list;
	}
	
	// set user acces
		//$status: 	
		//		acces: set user to get acces
		//		disabled: disable the user acces
		// returns:
		//		succes:	1
		//		wrong status: false (check error log)
		//		user already this status: false (check error log)
	function set_user_manage($user_id, $new_status){
		global $db;
		if($this->start_datetime < new DateTime("now") ){
			$this->set_error_log("Function: set_user_manage; Activity is in the past");
			global $user;
			trigger_error($user->lang['DC_ACT_IN_PAST']);
			return null;
		}
		switch(trim($new_status)){									// convert new_status to 'disabled'(as in the db)
			case "enable":											// if new_status is enbable
				$new_status = 0;									// set new status to enabled (disabled = 0)
				break;			
			case "disable":											// if new_status is disable
				$new_status = 1;									// set new status to disable (disabled = 1)
				break;
			default:												// wrong new_status
				$this->set_error_log("Function: set_user_manage; Wrong status: " . $new_status);
				global $user;
				trigger_error($user->lang['DC_ACT_WRONG_STATUS']);
				return null;									
		}
		// check if the user is in the db //
		$all_users_acces = $this->get_user_manage_list("all");		// get a list of all the users with acces
		foreach($all_users_acces AS $key => $value){				// loop through all the id's
			if($key == $user_id){							// user is in the array
				if($value['disabled'] == $new_status){	// currrent status is same as new_status 
					$this->set_error_log("Function: get_user_manage_list; User already this status");
					global $user;
					trigger_error($user->lang['DC_ACT_ALREADY_STATUS']);
					return null;									// return fase: user already this status
				}
				$sql = "UPDATE `dc_activity_user_manage` SET disabled = '".$new_status."' WHERE user_id = '". $user_id ."' AND activity_id = '". $this->id. "'"; 
				$db->sql_query($sql);
				switch($result = $db->sql_affectedrows()){
					case 0:
						$this->set_error_log("Function: set_user_manage; UPDATE status: No new record");
						global $user;
						trigger_error($user->lang['DC_ACT_ERROR_NO_ROWS_ADDED']);
						return null;
					case 1:
						return true;
					default:
						$this->set_error_log("Function: set_user_manage; UPDATE status: To many new record");
						global $user;
						trigger_error($user->lang['DC_ACT_ERROR_TO_MANY_ROWS_ADDED']);
						return null;
				}
			}
		}
		// User is not in de the db //
		$sql_ary = array(
			'activity_id'	=> (int)$this->id,
			'user_id'		=> (int)$user_id,
			'disabled'		=> (int)$new_status,
		);
		$sql = "INSERT INTO `dc_activity_user_manage` ". $db->sql_build_array('INSERT', $sql_ary); 
		$db->sql_query($sql);
		switch($result = $db->sql_affectedrows()){
			case 0:
				$this->set_error_log("Function: set_user_manage; INSERT status: No new records");
				global $user;
				trigger_error($user->lang['DC_ACT_ERROR_NO_ROWS_ADDED']);
				return null;
			case 1:
				return true;
			default:
				$this->set_error_log("Function: set_user_manage; INSERT status: To many new record");
				global $user;
				trigger_error($user->lang['DC_ACT_ERROR_TO_MANY_ROWS_ADDED']);
				return null;
		}
	}
	// get changelog
	function get_chance_list(){
		global $db;
		$chance_list = null;
		$counter = 0;
		$sql = "SELECT user_id, datetime, modification FROM dc_activity_chancelog WHERE activity_id = '". $this->id ."' ORDER BY datetime ASC";
		$result = $db->sql_query($sql);
		while ($row = $db->sql_fetchrow($result))				// walk true all the rows
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
		$uid = $bitfield = $options = ''; // will be modified by generate_text_for_storage
		$allow_bbcode = $allow_urls = $allow_smilies = false;
		generate_text_for_storage($modification, $uid, $bitfield, $options, $allow_bbcode, $allow_urls, $allow_smilies);
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
				trigger_error($user->lang['DC_ACT_WRONG_STATUS']);
				return null;									
		}
		$sql = 'SELECT group_id, created, disabled FROM `dc_activity_groupacces` WHERE activity_id = \'' . $this->id . '\''. $status; // get a list from user_manage to this activity
		$result = $db->sql_query($sql);							// send query
		while ($row = $db->sql_fetchrow($result))				// walk true all the rows
		{
			if(!$status){ 										// check the status
				$acces_list[$row['group_id']] = array( 'created' => $row['created'], 'disabled' => $row['disabled']);  	// makes an array: accesList[user_id][created][disabled]
			}else { 
				$acces_list[$row['group_id']] = $row['created'];   	// makes an array: accesList[user_id][created] 
			}
		}
		$db->sql_freeresult($result);							// remove query
		return $acces_list;
	}
	
	// set groupacces status
		//$status: 	
		//		acces: set user to get acces
		//		disabled: disable the user acces
		// returns:
		//		succes:	1
		//		wrong status: false (check error log)
		//		user already this status: false (check error log)
	function set_group_acces($group_id, $new_status){
		if($this->start_datetime < new DateTime("now") ){
				$this->set_error_log("Function: set_group_acces; Activity is in the past");
				global $user;
				trigger_error($user->lang['DC_ACT_IN_PAST']);
				return null;
		}
		global $db;
		switch(trim($new_status)){									// convert new_status to 'disabled'(as in the db)
			case "enable":											// if new_status is enbable
				$new_status = 0;									// set new status to enabled (disabled = 0)
				break;			
			case "disable":											// if new_status is disable
				$new_status = 1;									// set new status to disable (disabled = 1)
				break;
			default:												// wrong new_status
				$this->set_error_log("Function: set_group_acces; Wrong status: " . $new_status);
				global $user;
				trigger_error($user->lang['DC_ACT_WRONG_STATUS']);
				return null;									
		}
		// check if the user is in the db //
		$all_group_acces = $this->get_group_acces_list("all");		// get a list of all groups with acces
		foreach($all_group_acces AS $key => $value){				// loop through all the goup id's how have acces
			if($key = $group_id){							// group is in the array
				if($value['disabled'] == $new_status){				// currrent status is same as new_status 
					$this->set_error_log("Function: get_group_acces_list; User already this status");
					global $user;
					trigger_error($user->lang['DC_ACT_ALREADY_STATUS']);
					return null;									// return fase: user already this status
				}
				$sql = "UPDATE `dc_activity_groupacces` SET disabled = '".$new_status."' WHERE group_id = '". $group_id ."' AND activity_id = '". $this->id. "'"; 
				$db->sql_query($sql);
				switch($result = $db->sql_affectedrows()){
					case 0:
						$this->set_error_log("Function: set_group_acces; UPDATE group acces: No new records");
						global $user;
						trigger_error($user->lang['DC_ACT_ERROR_NO_ROWS_ADDED']);
						return null;
					case 1:
						return true;
					default:
						$this->set_error_log("Function: set_group_acces; UPDATE group acces: To many new records");
						global $user;
						trigger_error($user->lang['DC_ACT_ERROR_TO_MANY_ROWS_ADDED']);
						return null;
				}
			}
		}
		// group is not in de the db //
		$sql_ary = array(
			'activity_id'	=> (int)$this->id,
			'group_id'		=> (int)$group_id,
			'disabled'		=> (int)$new_status,
		);
		$sql = "INSERT INTO `dc_activity_groupacces` ". $db->sql_build_array('INSERT', $sql_ary); 
		$db->sql_query($sql);
		switch($result = $db->sql_affectedrows()){
			case 0:
				$this->set_error_log("Function: set_group_acces; INSERT group acces: No new records");
				global $user;
				trigger_error($user->lang['DC_ACT_ERROR_NO_ROWS_ADDED']);
				return null;
			case 1:
				return true;
			default:
				$this->set_error_log("Function: set_group_acces; INSERT group acces: To many new records");
				global $user;
				trigger_error($user->lang['DC_ACT_ERROR_TO_MANY_ROWS_ADDED']);
				return null;
		}
	}	
	
	// check if the users has acces to this activity
	function user_acces($user_id){
		$group_acces_list = $this->get_group_acces_list("enable");
		if($group_acces_list == true){
			foreach($group_acces_list AS $key => $value){
				if(in_array($key, activity_user::user_all_groups($user_id)))
					return true;
			}
		}
		return null;
	}
	
	// add error
	function set_error_log($error){
		global $db, $user;
		$user->data['user_id'];
			
		$error = utf8_normalize_nfc(htmlspecialchars($error));
		$uid = $bitfield = $options = ''; // will be modified by generate_text_for_storage
		$allow_bbcode = $allow_urls = $allow_smilies = false;
		generate_text_for_storage($error, $uid, $bitfield, $options, $allow_bbcode, $allow_urls, $allow_smilies);
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
		while ($row = $db->sql_fetchrow($result))				// walk true all the rows
		{
			$error_list[$counter]= array ( "user_id" => $row['user_id'] , "user_ip" => $row['user_ip'] , "datetime" => $row['datetime'],"error" => $row['error']);
			$counter++;
		}
		return $error_list;
	}
	
	
	
	
	// save this activity
	function save(){
		// check if this activity is in de db
		global $user, $db;
		if($this->start_datetime < new DateTime("now") ){
			$this->set_error_log("Function: save; Activity is in the past");
			trigger_error($user->lang['DC_ACT_IN_PAST']);
			return null;
		}
		
		if($this->enroll == 0){
			$enroll_datetime = null;
		}else{
			$enroll_datetime = $this->enroll_datetime->format('Y-m-d H:i:s');
		}		
			
		$sql_array = array(
			 'name'				=> (String)$this->name,
			 'description'		=> (String)$this->description,
			 'start_datetime'	=> (String)$this->start_datetime->format('Y-m-d H:i:s'),
			 'stop_datetime'	=> (String)$this->stop_datetime->format('Y-m-d H:i:s'),
			 'enroll'			=> (bool)$this->enroll,
			 'enroll_datetime'	=> (String)$enroll_datetime,
			 'enroll_max'		=> (int)$this->enroll_max,
			 'price'			=> (double)$this->price,
			 'price_member'		=> (double)$this->price_member,
			 'location'			=> (String)$this->location,
			 'active'			=> (bool)$this->active,
			 'category'			=> (int)$this->category,
			 'pay_options'		=> (String)$this->pay_options,
		);
		if($this->id == null){		// check if this is a new activity 
			$now = new DateTime("now"); 
			$sql_array['commission'] 				= $this->commission;
			$sql_array['user_id']					= (int)$user->data['user_id'];
			$sql_array['user_ip']					= (String)$user->ip;
			$sql_array['datetime_created']			= (String)$now->format('Y-m-d H:i:s');
			$sql_array['bbcode_bitfield']			= $this->bbcode_bitfield;
			$sql_array['bbcode_uid']				= $this->bbcode_uid;
			$sql_array['bbcode_options']			= $this->bbcode_options;
			$sql = "INSERT INTO dc_activity ". $db->sql_build_array('INSERT', $sql_array);
		}else{
			$sql = "UPDATE dc_activity SET ". $db->sql_build_array('UPDATE', $sql_array) . "WHERE id = ". (int)$this->id;
			$modification = null;
			foreach($chance_log AS $row => $value){
				$modification .= $row . ":".$value;
			}
			set_chance_log($user->data['user_id'], $user->ip, $modification);
		}
		$db->sql_query($sql);
	}
	
	function pay($user_id, $amount){
		if( get_user_status($user_id))
			return null;
		if(gettype($priceMember) != "double")
			return null;
		$sql = "UPDATE `dc_activity_enrol` SET  price_payed = ". $amount ." WHERE user_id = ". $user_id ." AND 	activity_id = ". $this->id;
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
		return $this->name;
    }

    public function setName($name){
		$name = preg_replace( "/[^a-zA-Z0-9 ]/","",$name);
		if($this->name != $name)
			$this->chance_log["name"] = $this->name . "->". $name . ";";
		$this->name = $name;
    }

    public function setDescription($description){
		$description = preg_replace( "/[<>]/","",$description);
		$description = utf8_normalize_nfc($description);
		$uid = $bitfield = $options = '';
		$allow_bbcode = $allow_urls = $allow_smilies = true;
		generate_text_for_storage($description, $uid, $bitfield, $options, $allow_bbcode, $allow_urls, $allow_smilies);
		$this->bbcode_uid = $uid;
		$this->bbcode_bitfield = $bitfield;
		$this->bbcode_options = $options;		
		$this->description=htmlspecialchars($description);
    }
	
	public function getDescription(){
		$description = htmlspecialchars_decode($this->description);
		
		$description = generate_text_for_display($description, $this->bbcode_uid, $this->bbcode_bitfield, $this->bbcode_options);
		return $description;
    }
	
	public function getDescription_edit(){
		$description = htmlspecialchars_decode($this->description);
		$description = decode_message($description, $this->bbcode_uid);
		return $description;
    }

    public function getStartDatetime(){
            return $this->start_datetime;
    }

    public function setStartDatetime($startDatetime){
			if(!($startDatetime instanceof DateTime)) 
				return null;
			if($startDatetime < new DateTime("now"))
				return null;
			if(($tis->start_datetime != $startDatetime) && ($this->id != 0) )
				$this->chance_log["startDatetime"] = $this->start_datetime->format('Y-m-d H:i:s') . "->". $startDatetime->format('Y-m-d H:i:s') . ";";
            $this->start_datetime = $startDatetime;
    }

    public function getEndDatetime(){
            return $this->end_datetime;
    }

    public function setStopDatetime($endDatetime){
		if(!($endDatetime instanceof DateTime)) 
			return null;
		if($endDatetime < new DateTime("now"))
			return null;
		if($endDatetime < $this->start_datetime)
			return null;
		if(($this->stop_datetime != $endDatetime) && ($this->id != 0))
			$this->chance_log["endDatetime"] = $this->stop_datetime->format('Y-m-d H:i:s') . "->". $endDatetime->format('Y-m-d H:i:s') . ";";
		$this->stop_datetime = $endDatetime;
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

    public function getEnrollDateTime(){
		return $this->enroll_datetime;
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
			$this->chance_log["price_member"] = $this->price_member . "->". $price_member . ";";
		$this->price_member = $priceMember;
    }

    public function getLocation(){
		return $this->location;
    }

    public function setLocation($location){
		$location = preg_replace( "/[^a-zA-Z0-9, ]/","",$location);
		if($this->location != $location)
			$this->chance_log["location"] = $this->location . "->". $location . ";";
		$this->location = $location;
    }
	
	public function getActive(){
		return $this->active;
	}
	
	public function setActive($active){
		if(gettype($active) != "integer")
			return null;
		if(!(($active = 0) || ($active = 1)))
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
