<?php
/**
 * @package phpBB3
 * @version 1.0
 * @athor: Gerco Versloot
 * @date: 6 - 8 - 2012
 * @license http://opensource.org/licenses/gpl-license.php GNU Public License
 * @Gumbo millennium
 * Description of activity_class
 *
 * The activity class contains a single activity. 
 * 
 * <p>
 * This class contains functions to create of edit an activity.
 * Use the function fill(int $id) to get an activity from the database.
 * If the activity is new or edited use the function Save() to send/save the activity to the database. 
 * </p><p>
 * An activity can not be edited after the begin date time of the activity! 
 * This is because if the activity is finished, and the creator wants to do the activity again he or she takes the old activity  
 * and changes the dates and trows all the subscriptions away. This is not wanted because of the user payments system and to keep the database clear.
 * To fix this problem there is a reycle system. This system is only at the frond-end and not at back-end(engine). @see root\includes\acp\acp_dc_activity_management.php
 * </p><p>
 * Every activity has:
 * <li>Some basic varibles (@see varibles)
 * <li>A list of users how enrolled/subscripted (This list also contains users who unrolled/unsubscripes), this list is called users_status. (@see user_status) 
 * <li>A list of usergroups who are allowed to see this activity, this list is called group_acces. (@see group_acces)
 * <li>A list of usergroups how have managers acces (This list also contains managers groups who's managers acces is removed), this list is called group_managers (@see group_managers)
 * <li>A list of all changes to an activit, this list is called change_list (@see change_list)
 * The lists are accessible by this functions: get_user_status(int $user), get_all_status(String $status), set_user_status(int $user_id, String $user_ip, String $comment, String $new_status)
 * get_group_acces_list(String $status), set_group_acces(array[int] $group_id_list, String $new_status, boolean $full_list),
 * is_manager(int $user_id) and set_group_manager(array[int] $group_id_list, String $new_status, boolean $full_list)
 *
 * The change list is automated updated after save() 
 *</p><p>
 * OVERVIEW OF THE LISTS
 * 
 * User_status array with users who enrolled/subscriped or unrolled/unsubscriped:
 * $user_status['user_id'] = array('username','comments','datetime', 'status','price_paid')
 * <li>user_id int The id of the user who enrolled/unrolled
 * <li>username string The username of the user who enrolled/unrolled 
 * <li>comment string The comment the user of the subscription
 * <li>datetime datetime The date and time the user enrolled
 * <li>status boolean The status of the subscription, 1 is enrolled and 0 is unenrolled
 * <li>price_paid double The payment of the user
 * </p><p>
 * Group_acces array of groups who have can see the activity 
 * Group_acces[group_id][created][disabled]
 * <li>group_id int The id of the groep who has acces or no acces
 * <li>created datetime The date and time when the acces is created 
 * <li>disabled boolean The acces of the group if 1 acces is allowed, if 0 acces is disallowed 
 * If the requested group status is allowed or disallowed than 'disabled' disapears becouse it is not needed. (@see get_group_acces(String $status))
 * </p><p>
 * Group_managers array of groups that are the managers of an activity
 * They can chance an activity while the begin date of this activity is not in de the past
 * Group_managers[group_id][created]
 * <li>group_id int The id of the group who are the managers
 * <li>created datetime The date and time the groep enterd the managers list
 *</p><p>
 * Change_list array of changes done to an activity
 * Change_list[counter][user_id][datetime][modification]
 * <li>counter int The id of a change
 * <li>user_id int The id of the user who made the change
 * <li>datetime datetime The date and time of the change  
 * <li>modification String The description of the change
 * </p>

*/

/**
* @ignore
*
 * 
 Function summary:
 
	IMPORTANT:
	IF A FUNCTION FAILS IT RETURNS NULL!
		THE ERROR CAN BE FOUND IN THE ERROR LIST, THE USER GETS AN ERROR!
		IF A FUNCTION SUCCEED, THE change CAN BE FOUND IN THE change LIST
	
	fill()
		// fill this activity from the database
		
	get_all_status($status)     			
		// returns a array with all the user with $status = 	"yes"/"no"/"maybe"/"all";
		
	get_user_status($user)
		// get the current status of an user
		
	set_user_status($user_id, $user_ip, $comment, $new_status)
		// change the status of a user: $new_status = "yes"/"no"/"maybe"
		
	calculate_price($user_id)
		// returns the price the user has to pay (member of not member)
		
	is_member($user_id)
		// check of a user is a gumbo member 
		// returns a boolean
		
		
	set_group_manager($group_id_list, $new_status, $full_list = 0)	
	// description:
		// 	set users as managers for this activity (for users that are not in the Activity Commission)
	//inputs: 	
		//		user_id_list: array of user id's who gets a new status
		//		new_status: string of the new status of the user id's: enable (set as manager), disable (remove as manager)
		//		full_list: optional setting, if true all other user id's in the db that are not on the user id list will be changed to disable
					// default is false, so it won't change other statuses of user id's in the db
	// returns:
		//		succes:	1
		//		wrong status: false (check error log)
		//		no rows added: false (check error log)

		
	get_change_list()
		// get the list of all the changes of this activity
		
	set_change_log($user_id, $user_ip, $modification)
		// add to the change log
		
	get_group_acces_list($status)
		// get a list of all the groups that can see this activity $status = "enable"/"disable"/"all"
		
	// set_group_acces($group_id_list, $new_status, $full_list = 0) 
		// description:
		// 		Set groups to see this activity
		//inputs: 	
		//		group_id_list: array of group id's who gets a new status
		//		new_status: string of the new status of the groups id's: enable (set as see activity), disable (set as disable form seing the activity)
		//		full_list: optional setting, if true all other groep id's in the db that are not on the group id list will be changed to disable
					// default is false, so it won't change other statuses of group id's in the db
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
		// change payment for a user
	
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
 
 if (!defined('IN_PHPBB'))
{
	exit;
}
include_once($phpbb_root_path . 'dc/dc_functions.' . $phpEx);

if(!defined('DE_ACTIVITY_CLASS')){
	define("DE_ACTIVITY_CLASS", true); 	// set the id of the Gumbo member group
	define("MEMBER_GROUP_ID", 9); 		// set the id of the Gumbo member group
	define("AC_GROUP_ID", 14); 		// set the id of the Gumbo activity group
	define("DC_GROUP_ID", 15); 		// set the id of the Gumbo digitale commisie group
	define("BESTUUR_GROUP_ID", 13); 	// set the id of the Gumbo bestuur group
	define("ADM_GROUP_ID", 5); 		// set the id of the Administrators group
	define("SEE_ALL_ACTIVITIES_GROUP", serialize( array(ADM_GROUP_ID, BESTUUR_GROUP_ID, DC_GROUP_ID))); // the array of the groups who are allowed the see all the activities
}
 
class activity {
    // declare varibles 
    private $id = null;				// activity id, if the activity is saved(see @save()) the activity get an id.
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
	private $change_log = array(); // if the activity is saved this will added to the change log
	
	// some extra varibles for parsing text 
	private $bbcode_bitfield;
	private $bbcode_uid;
	private $enable_magic_url;
	private $enable_bbcode;
	private $enable_smilies;
	
	// check_allowed_to_change 
	/*
	* $this->check_allowed_to_change()
	* The functon $this->check_allowed_to_change() checks if this activity is allowed to be changed. It looks if the this activity is not in the past.
	* @return boolean
	*/
	public function check_allowed_to_change($start_datetime_must_set = false){
		if(isset($this->start_datetime)){
			if($this->start_datetime < new datetime("now")){ // check if the activiy is started
				return false; 								// not allowed to change
			}
		}
		return true;										// allowed to change
	}
	
	// fill the activiy from the database
	/*
	 * Fill(id)
	 * The function Fill($id) is used to get an activity from the database.
	 * @param:
     * $id int The id of the activity that this funtion must get from the database
	*/
    function fill($id) 
	{
		global $db, $user;
		if(gettype($id) != "integer"){ // check if the id is a int
			$this->set_error_log("Function: Fill; param $id is not a integer"); // set error log
			return null;
		}
		$sql = 'SELECT *, count(*) amount FROM `dc_activity` WHERE id = ' . (int)$id; // build query
		$result = $db->sql_query($sql);							// send query
		$row = $db->sql_fetchrow($result);						// get row from the database
		if($row['amount'] < 1){									// check if the the activity exist 
			$this->set_error_log("Function: Fill; No activity found"); // set error log
			trigger_error($user->lang['DC_ACT_NO_ACT']);				// send error to the user
			return null;
		}
		// fill the varibles form the row of the database 
		$timezone = new DateTimeZone(date_default_timezone_get());			// get current timezone
        $this->id = $id;
        $this->name = $row['name'];
        $this->description = (String)$row['description'];
        $this->start_datetime = new DateTime( $row['start_datetime']);
        $this->start_datetime->setTimeZone($timezone);
        $this->end_datetime = new DateTime($row['stop_datetime']);
        $this->end_datetime->setTimeZone($timezone);
        $this->enroll = $row['enroll'];
        $this->enroll_datetime = new DateTime( $row['enroll_datetime'] );
        $this->enroll_datetime->setTimeZone($timezone);
        $this->unsubscribe_max_datetime = new DateTime( $row['unsubscribe_max'] );
        $this->unsubscribe_max_datetime->setTimeZone($timezone);
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
        $this->datetime_created->setTimeZone($timezone);
        $this->datetime_updated = new DateTime( $row['datetime_updated']);
        $this->datetime_updated->setTimeZone($timezone);
		
		$this->bbcode_bitfield = $row['bbcode_bitfield'];
		$this->bbcode_uid = $row['bbcode_uid'];
		$this->enable_magic_url = $row['enable_magic_url'];
		$this->enable_bbcode = $row['enable_bbcode'];
		$this->enable_smilies = $row['enable_smilies'];
		
		$db->sql_freeresult($result); 							// remove query
		return true;
    } 
	
	
	/* 
		* get_all_status($status)
		* This funtions get all the users who are enrolled, disenrolled or maybe for this activity.
		* @params
		* $status String The status of users it returs: 
		*					"enrolled" for all the users who are enrolled/subscriped, 
		* 				 	"disenrolled" for all the users who disenrolled/unsubscriped
		*					"maybe" for all the users who has the status maybe THIS IS NOT USED IN THE FRONTEND
		* 					"all" for all the users. (enrolled + disenrolled + maybe) 
		*
		*@returns:
		*The user_list array
	*/
	function get_all_status($status){
		global $db;												// get connection to the database		
		$user_list = null;
		switch(trim($status)){										// check status
			case "enrolled":										// all the users with acces
				$status = " AND enroll.status = 'yes'";					// set SQL WHERE statment
				break;			
			case "disenrolled":									// all the users who had acces
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
		
		//check if the activity is allowed to change
		if(!$this->check_allowed_to_change()){
			// This activity is not allowed to change
			$this->set_error_log("Function: set_user_status; Event is not allowed to change");
			trigger_error($user->lang['DC_ACT_IN_PAST']);
			return null; 					// not allowed to change	
		}
		switch($new_status){
			case 'yes':
				if($this->enroll_datetime < new DateTime("now")){
					$this->set_error_log("Function: set_user_status; Enroll date is in de past");
					trigger_error($user->lang['DC_ACT_IN_PAST']);
					return null;
				}
				break;
			case 'no':
				if(($this->unsubscribe_max_datetime < new DateTime("now"))){
					$this->set_error_log("Function: set_user_status; Event is past the unsubscribe max datetimeis in the past");
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
			'status'		=> (String)$new_status
		);	

		switch( $user_status ){								// is the user already in the db
			case null:											// user not in de db
				$sql= "INSERT INTO dc_activity_enroll 	".$db->sql_build_array('INSERT', $sql_ary); // constructs a query to set the status of the user with this activity and calculats the price
				break;
			default:
			$sql= 'UPDATE dc_activity_enroll 
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
		
		//check if the activity is allowed to change
		if(!$this->check_allowed_to_change()){
			// This activity is not allowed to change
			global $user;
			$this->set_error_log("Function: set_user_comment; Event is not allowed to change");
			trigger_error($user->lang['DC_ACT_IN_PAST']);
			return null; 					// not allowed to change	
		}
		
		if($this->get_user_status($user_id) != null){
			$sql_ary = array(
				"comments" => htmlspecialchars($new_comment)
			);
			$sql= 'UPDATE dc_activity_enroll
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
		//			all: all the users
	// returns: 
		// if wrong status: NULL
		// if all: an array: group_managers[user_id][created][disabled] (disabled is no acces to the activity)
		//	else: an array: group_managers[user_id][created]
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
		$sql = 'SELECT group_id, created, disabled FROM `dc_activity_group_manage` WHERE activity_id = \'' . (int)$this->id . '\''. $status; // get a list from user_manage to this activity
		$result = $db->sql_query($sql);							// send query
		$group_managers = array();
		while ($row = $db->sql_fetchrow($result))				// walk through all the rows
		{
			if(!$status){ 										// check the status
				$group_managers[$row['group_id']] = array( 'created' => new DateTime($row['created']), 'disabled' =>(int)$row['disabled']);  	// makes an array: accesList[user_id][created][disabled]
			}else { 
				$group_managers[$row['group_id']] = new DateTime($row['created']);   	// makes an array: accesList[user_id][created] 
			}
		}
		//var_dump($this->id);
		$db->sql_freeresult($result);							// remove query
		return $group_managers;
	}
	
	// set_group_manager 
		// description:
		// 	set users as managers for this activity (for users that are not in the Activity Commission)
		//inputs: 	
		//		group_id_list: array of user id's who gets a new status
		//		new_status: string of the new status of the user id's: enable (set as manager), disable (remove as manager)
		//		full_list: optional setting, if true all other user id's in the db that are not on the user id list will be changed to disable
					// default is false, so it won't change other statuses of user id's in the db
		// returns:
		//		succes:	1
		//		wrong status: false (check error log)
		//		no rows added: false (check error log)
	function set_group_manager($group_id_list, $new_status, $full_list = 0){
		global $db, $user;
		
		//check if the activity is allowed to change
		if(!$this->check_allowed_to_change()){
			// This activity is not allowed to change
			$this->set_error_log("Function: set_groep_manager; Event is not allowed to change");
			trigger_error($user->lang['DC_ACT_IN_PAST']);
			return null; 					// not allowed to change	
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
		$current_managers_status_change = array();						// the list of all managers who status changes 
		// check for exisiting managers with no status change
		foreach($group_id_list AS $key => $current_group_id){				// loop through all group id (current_group_id) from the group_id_list
			if(isset($current_managers[$current_group_id])){				// check if group id is in the current manager list
				if( $current_managers[$current_group_id]['disabled'] != $new_status){ 	// check if current_group_id status is thesame as new status
					// the group id exist and has new status
					$current_managers_status_change[] = $current_group_id;
				}
				unset($current_managers[$current_group_id]);				// remove group id from the current_managers list
				unset($group_id_list[array_search($current_group_id, $group_id_list)]);	// remove group id from the group id list (the input) 
			}
		}
		// update current managers with a status change
		if(count($current_managers_status_change)){
			foreach($current_managers_status_change AS $key => $group_id){		// loop through all managers with a new status
				$sql_ary = array(
					'disabled'      => $new_status								// set new status
				);

				$sql = 'UPDATE dc_activity_group_manage
					SET ' . $db->sql_build_array('UPDATE', $sql_ary) . '
					WHERE group_id = ' . (int) $group_id.' AND activity_id = ' .(int) $this->id;
				$db->sql_query($sql);
				if(!$db->sql_affectedrows()){									// check for changed reocords
					// no changed records
					$this->set_error_log("Function: set_group_manager; UPDATE status: No new record");
					trigger_error($user->lang['DC_ACT_ERROR_NO_ROWS_ADDED']);
				}
				
			}
			unset($current_managers_status_change);
			
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
			if(!$db->sql_affectedrows()){									// check for changed reocords

					// no changed records
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
			unset($current_managers_status_change);
		}
		
		return true;															// return succesful
	}
	
	// get changelog
	//	change_list[counter][user_id][datetime][modification]
	function get_change_list(){
		global $db;
		$change_list = null;
		$counter = 0;
		$sql = "SELECT user_id, datetime, modification FROM dc_activity_chancelog WHERE activity_id = '". (int)$this->id ."' ORDER BY datetime ASC";
		$result = $db->sql_query($sql);
		while ($row = $db->sql_fetchrow($result))				// walk through all the rows
		{
			$change_list[$counter]= array ( "user_id" => $row['user_id'] ,"datetime" => $row['datetime'],"modification" => $row['modification']);
			$counter++;
		}
		return $change_list;
	}
	
	// add changelog
	function set_change_log($user_id, $user_ip, $modification){
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
				$this->set_error_log("Function: set_change_log; INSERT status: No new record");
				global $user;
				trigger_error($user->lang['DC_ACT_ERROR_NO_ROWS_ADDED']);
				return null;
				//set error
			case 1:
				return true;
			default:
				$this->set_error_log("Function: set_change_log; INSERT status: To many new record");
				global $user;
				trigger_error($user->lang['DC_ACT_ERROR_TO_MANY_ROWS_ADDED']);
				return null;
				//set error
		}
	}
	
	
	// get list of groupacces
		//return array: group_acces[group_id] =  created
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
		$group_acces = array();
		while ($row = $db->sql_fetchrow($result))				// walk through all the rows
		{
			if(!$status){ 										// check the status
				$group_acces[$row['group_id']] = array( 'created' =>new DateTime( $row['created']), 'disabled' => intval($row['disabled']));  	// makes an array: accesList[user_id][created][disabled]
			}else { 
				$group_acces[$row['group_id']] =new DateTime( $row['created'] );   	// makes an array: accesList[user_id][created] 
			}
		}
		$db->sql_freeresult($result);							// remove query
		return (isset($group_acces)? $group_acces : 0);
	}
	
	// set_group_acces 
		// description:
		// 		Set groups to see this activity
		//inputs: 	
		//		group_id_list: array of group id's who gets a new status
		//		new_status: string of the new status of the groups id's: enable (set as see activity), disable (set as disable form seing the activity)
		//		full_list: optional setting, if true all other groep id's in the db that are not on the group id list will be changed to disable
					// default is false, so it won't change other statuses of group id's in the db
		// returns:
		//		succes:	true
		//		wrong status: false (check error log)
		//		activity is in the past: false (check error log)
	function set_group_acces($group_id_list, $new_status, $full_list = 0){
		global $db;
		
		//check if the activity is allowed to change
		if(!$this->check_allowed_to_change()){
			// This activity is not allowed to change
			global $user;
			$this->set_error_log("Function: set_group_acces; Event is not allowed to change");
			trigger_error($user->lang['DC_ACT_IN_PAST']);
			return null; 					// not allowed to change	
		}
		
		// check if the activity is allowed to be added
		if($this->start_datetime < new DateTime("now") ){
				$this->set_error_log("Function: set_group_acces; Activity is in the past");
				
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
		$group_acces_change_list = array();							// the list of all groups that need s acces change 
		foreach($group_id_list AS $key => $current_group_id){		// loop through all group id
			if(isset($groups_accces_list[$current_group_id])){ // check if current group id is in the group_acces list
				if( $groups_accces_list[$current_group_id]['disabled'] != $new_status){	// check if group status is thesame as the current status
					$group_acces_change_list[] = $current_group_id;
				}
				// no status change needed
				unset($groups_accces_list[$current_group_id]);			// remove from the group acces list 
				unset($group_id_list[array_search($current_group_id, $group_id_list)]);	// remove from the input list
			}
		}
		// now we have 3 list:
			// group_acces_change_list: groups that are in the db and need a status change
			// groups_accces_list: the groups that where not in the input 
			// groups_id_list: all groups that are not in the db
		
		// update current groups with a status change
		if(count($group_acces_change_list)){
			foreach($group_acces_change_list AS $key => $group_id){		// loop through all groups with a new status
				$sql_ary = array(
					'disabled'      => $new_status								// set new status
				);

				$sql = 'UPDATE dc_activity_groupacces
					SET ' . $db->sql_build_array('UPDATE', $sql_ary) . '
					WHERE group_id = ' . (int) $group_id.' AND activity_id = ' .(int) $this->id;
				$db->sql_query($sql);
				
			}
			unset($group_acces_change_list);
			
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
			if(!$db->sql_affectedrows()){									// check for changed reocords
				// no changed records
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
		$default_acces = unserialize (SEE_ALL_ACTIVITIES_GROUP);						// get all default groeps
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
		
		//check if current activity not exists
		if($this->id == null){
			return false;
		}
		
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
		$sql = "SELECT user_id, user_ip, datetime, error FROM dc_activity_errorlog WHERE activity_id = '". (int)$this->id ."' ORDER BY datetime ASC";
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
		//check if the activity is allowed to change
		if(!$this->check_allowed_to_change()){
			// This activity is not allowed to change
			$this->set_error_log("Function: save; Event is not allowed to change");
			trigger_error($user->lang['DC_ACT_IN_PAST']);
			return null; 					// not allowed to change	
		}
		
		// check if this activity is valid to send to the database
		if(!$this->is_activity_valided()){
			//in invalid
			$this->set_error_log("Function: Save; Tried to send invalid varibles to the database");			
			return null;
		}
		
		$sql= '';
		$sql_array = array(
			'name'				=> (String)$this->name,
			'description'		=> (String)$this->description,
			'start_datetime'	=> (String)$this->start_datetime->format('Y-m-d H:i:s'),			// format datetime class to the datetime format of the database			
			'stop_datetime'		=> (String)$this->end_datetime->format('Y-m-d H:i:s'),				// format datetime class to the datetime format of the database
			'enroll'			=> (bool)$this->enroll,
			'enroll_datetime'	=> (String)$this->enroll_datetime->format('Y-m-d H:i:s'),			// format datetime class to the datetime format of the database
			'unsubscribe_max'	=> (String)$this->unsubscribe_max_datetime->format('Y-m-d H:i:s'), 	// format datetime class to the datetime format of the database
			'enroll_max'		=> (int)$this->enroll_max,
			'price'				=> (float)$this->price,
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
		if($this->id == null){		// check if this is a new activity. If this is a new activity the id is set by the database (AUTO_INCREMENT)
			$now = new DateTime("now"); 			// get time for 'datetime_created'
			$sql_array['commission'] 				= $this->commission;
			$sql_array['user_id']					= (int)$user->data['user_id'];
			$sql_array['user_ip']					= (String)$user->ip;
			$sql_array['datetime_created']			= (String)$now->format('Y-m-d H:i:s'); // format datetime class to the datetime format of the database

			$sql = "INSERT INTO dc_activity ". $db->sql_build_array('INSERT', $sql_array);	// create insert query for a new activity
		}else{
			$sql = "UPDATE dc_activity SET ". $db->sql_build_array('UPDATE', $sql_array) . " WHERE id = ". (int)$this->id; // create qeury to update the activity in the database
			// Send changelog to the database
			$modification = null;
			foreach($this->change_log AS $row => $value){		// go through all the changes
				$modification .= $row . ":".$value;				// make string to send to the databse
			}
			$this->set_change_log($user->data['user_id'], $user->ip, $modification); // set the string to the database
		}
		$result = $db->sql_query($sql);		// send the query to the database (update or insert)
		if($this->id == null){				// check if this is a new activity
			// this is a new activity
			$this->id = $db->sql_nextid();	// get new activity id
		}
		return true;
		/* DOENST WORK ???
		if($db->sql_affectedrows($result)){	
			print'henk';
		}else{
			$this->set_error_log("Function: save(); Save the activity: No new or changed rows");
			return false;
		}
		*/
	}
	
	//is_activity_valided()
	/*
	* This function checks if all the varibels of this activity are set.
	* If all the varibels are set it return true
	* Else it return false
	* see error log for unset varibles
	*/
	function is_activity_valided(){
		$invalided_varibles_found = null;
			
		//search for unset varibles. If found unseted varibles save in $invalided_varibles_found
		$invalided_varibles_found .= (isset($this->name)) ? null :"name,";		
		$invalided_varibles_found .= (isset($this->description)) ? null : "description,";			 
		$invalided_varibles_found .= (isset($this->start_datetime)) ? null : "start_datetime,";		
		$invalided_varibles_found .= (isset($this->end_datetime)) ? null : "end_datetime,";			
		$invalided_varibles_found .= (isset($this->enroll)) ? null : "enroll,";				
		$invalided_varibles_found .= (isset($this->unsubscribe_max_datetime)) ? null : "unsubscribe_max_datetime,";
		$invalided_varibles_found .= (isset($this->location)) ? null : "location,";				
		$invalided_varibles_found .= (isset($this->pay_option)) ? null : "pay_option,";			
		$invalided_varibles_found .= (isset($this->commission)) ? null : "commission,";			


		//if this activity exists
		if($this->id != null){
			$invalided_varibles_found .= (isset($this->user_id)) ? null : "user_id,";				
			$invalided_varibles_found .= (isset($this->user_ip)) ? null : "user_ip,";
			$invalided_varibles_found .= (isset($this->enroll_datetime)) ? null : "enroll_datetime,";
			$invalided_varibles_found .= (isset($this->enroll_max)) ? null : "enroll_max,";
			$invalided_varibles_found .= (isset($this->price)) ? null : "price,";
			$invalided_varibles_found .= (isset($this->price_member)) ? null : "price_member,";
			$invalided_varibles_found .= (isset($this->active)) ? null : "active,";
			$invalided_varibles_found .= (isset($this->category)) ? null : "category,";
			$invalided_varibles_found .= (isset($this->datetime_created)) ? null : "datetime_created,";
			$invalided_varibles_found .= (isset($this->datetime_updated)) ? null : "datetime_updated,";
			$invalided_varibles_found .= (isset($this->unsubscribe_max)) ? null : "unsubscribe_max,";
		}
		
		// check if there are unseted varibles
		if($invalided_varibles_found != null){
			// errors found
			$this->set_error_log("Function: is_activity_valided;Values not valid: " . $invalided_varibles_found);
			return false;
		}
		return true;
		
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
	
	// user get read

	function get_read($user_id){
		global $db;							// get database connection
		if(gettype($user_id) != "integer")
			return null;		
		$sql = 'SELECT COUNT(*) count, activity_id FROM `dc_activity_read` WHERE user_id = \''.$user_id.'\' AND activity_id = \''. $this->id . '\'';							// get if user readed 
		$result = $db->sql_query($sql);							// send query
		$row = $db->sql_fetchrow($result);
		if($row['count'] !=  1)
			return null;
		$db->sql_freeresult($result);							// remove query
		return true;	
	}
	
	// user set read
	function set_read($user_id){
		global $db;												// get database connection
		if(gettype($user_id) != "integer")
			return null;
		$sql_array = array(
			'SELECT'    => 'COUNT(*) as user_count',

			'FROM'      => array(
				USERS_TABLE => 'u',
			),

			'WHERE'     =>  'u.user_id = ' . $user_id,
		);

		$sql = $db->sql_build_query('SELECT', $sql_array);

		// Run the built query statement
		$result = $db->sql_query($sql);
		$output = $db->sql_fetchrow($result);
		
		if( $output['user_count'] != 1  )								// if not found or there are more id's
			return null;
		$db->sql_freeresult($result);							// remove query
		$sql = 'INSERT INTO `dc_activity_read`(`activity_id`, `user_id`) VALUES ('. $this->id . ','.$user_id.')';	// get if user readed 
		$result = $db->sql_query($sql);							// send query
		$db->sql_freeresult($result);							// remove query
		
		return true;
	}
	
	
	// Getters and setters
    public function getId(){
		return $this->id;
    }

    public function getName(){
		return  htmlspecialchars_decode($this->name);
    }

    public function setName($name){
	
		//check if the activity is allowed to change
		if(!$this->check_allowed_to_change()){
			// This activity is not allowed to change
			global $user;
			$this->set_error_log("Function: setName; Event is not allowed to change");
			trigger_error($user->lang['DC_ACT_IN_PAST']);
			return null; 					// not allowed to change	
		}
		
		$name = preg_replace( "/[^a-zA-Z0-9 ]/","",$name);
		if($this->name != $name)
			$this->change_log["name"] = $this->name . "->". $name . ";";
		$this->name = htmlspecialchars($name);
    }

    public function setDescription($description){
	
		//check if the activity is allowed to change
		if(!$this->check_allowed_to_change()){
			// This activity is not allowed to change
			global $user;
			$this->set_error_log("Function: setName; Event is not allowed to change");
			trigger_error($user->lang['DC_ACT_IN_PAST']);
			return null; 					// not allowed to change	
		}
		
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
	
	public function getDescription_preview($amount_chars, $bbcode = true){
		if(gettype($amount_chars) != "integer")
			return null;
		if(gettype($bbcode) != "boolean")
			return null;
		
		$description = $this->description;
		if($bbcode){
			strip_bbcode($description, $this->bbcode_uid);
		}
		$description = substr($description, 0, $amount_chars);

		return $description;
    }

    public function getStartDatetime(){
            return $this->start_datetime;
    }

    public function setStartDatetime($startDatetime){
	//check if the activity is allowed to change
		if(!$this->check_allowed_to_change()){
			// This activity is not allowed to change
			global $user;
			$this->set_error_log("Function: setStartDatetime; Event is not allowed to change");
			trigger_error($user->lang['DC_ACT_IN_PAST']);
			return null; 					// not allowed to change	
		}
		
		if(!($startDatetime instanceof DateTime)) 
			return null;
		if($startDatetime < new DateTime("now"))
			return null;
		if(($this->start_datetime != $startDatetime) && ($this->id != 0) )
			$this->change_log["startDatetime"] = $this->start_datetime->format('Y-m-d H:i:s') . "->". $startDatetime->format('Y-m-d H:i:s') . ";";
		$this->start_datetime = $startDatetime;
    }

    public function getEndDatetime(){
            return $this->end_datetime;
    }

    public function setEndDatetime($endDatetime){
		//check if the activity is allowed to change
		if(!$this->check_allowed_to_change()){
			// This activity is not allowed to change
			global $user;
			$this->set_error_log("Function: setEndDatetime; Event is not allowed to change");
			trigger_error($user->lang['DC_ACT_IN_PAST']);
			return null; 					// not allowed to change	
		}
		
		if(!($endDatetime instanceof DateTime)) 
			return null;
		if($endDatetime < new DateTime("now"))
			return null;
		if($endDatetime < $this->start_datetime)
			return null;
		if(($this->end_datetime != $endDatetime) && ($this->id != 0))
			$this->change_log["endDatetime"] = $this->end_datetime->format('Y-m-d H:i:s') . "->". $endDatetime->format('Y-m-d H:i:s') . ";";
		$this->end_datetime = $endDatetime;
    }

    public function getEnroll(){
		return $this->enroll;
    }

    public function setEnroll($enroll){
		
		//check if the activity is allowed to change
		if(!$this->check_allowed_to_change()){
			// This activity is not allowed to change
			global $user;
			$this->set_error_log("Function: setEnroll; Event is not allowed to change");
			trigger_error($user->lang['DC_ACT_IN_PAST']);
			return null; 					// not allowed to change	
		}
		
		if(gettype($enroll) != "boolean")
			return null;
		if($this->enroll != $enroll)
			$this->change_log["enroll"] = $this->enroll . "->". $enroll . ";";
		$this->enroll = $enroll;
    }


	
	public function setEnrollDateTime($enrollDateTime){
	
		//check if the activity is allowed to change
		if(!$this->check_allowed_to_change()){
			// This activity is not allowed to change
			global $user;
			$this->set_error_log("Function: setEnrolldateTime; Event is not allowed to change");
			trigger_error($user->lang['DC_ACT_IN_PAST']);
			return null; 					// not allowed to change	
		}
		
		if(!($enrollDateTime instanceof DateTime )) 
			return null;
		if($enrollDateTime < new DateTime("now"))
			return null;
		if($enrollDateTime > $this->start_datetime)
			return null;
		if(($this->enroll_datetime != $enrollDateTime) && ($this->id != 0))
			$this->change_log["enrollDateTime"] = $this->enroll_datetime->format('Y-m-d H:i:s') . "->". $enrollDateTime->format('Y-m-d H:i:s') . ";";
        $this->enroll_datetime = $enrollDateTime;
    }
	   
	public function getUnsubscribeMaxDatetime(){
		return $this->unsubscribe_max_datetime;
    }
	
    public function setUnsubscribeMaxDatetime($unsubscribe_max_datetime){
	
		//check if the activity is allowed to change
		if(!$this->check_allowed_to_change()){
			// This activity is not allowed to change
			global $user;
			$this->set_error_log("Function: setUnsubscribeMaxDatetime; Event is not allowed to change");
			trigger_error($user->lang['DC_ACT_IN_PAST']);
			return null; 					// not allowed to change	
		}
		
		if(!($unsubscribe_max_datetime instanceof DateTime )) 
			return null;
		if($unsubscribe_max_datetime < new DateTime("now"))
			return null;
		if($unsubscribe_max_datetime > $this->start_datetime)
			return null;
		if($unsubscribe_max_datetime < $this->enroll_datetime)
			return null;
		if(($this->unsubscribe_max_datetime != $unsubscribe_max_datetime) && ($this->id != 0))
			$this->change_log["unsubscribe_max_datetime"] = $this->unsubscribe_max_datetime->format('Y-m-d H:i:s') . "->". $unsubscribe_max_datetime->format('Y-m-d H:i:s') . ";";
        $this->unsubscribe_max_datetime = $unsubscribe_max_datetime;
    }
	
	public function getEnrollDateTime(){
		return $this->enroll_datetime;
    }

    public function getEnrollMax(){
		return $this->enroll_max;
    }

    public function setEnrollMax($enrollMax){
		//check if the activity is allowed to change
		if(!$this->check_allowed_to_change()){
			// This activity is not allowed to change
			global $user;
			$this->set_error_log("Function: setEnrollMax; Event is not allowed to change");
			trigger_error($user->lang['DC_ACT_IN_PAST']);
			return null; 					// not allowed to change	
		}
		if(gettype($enrollMax) != "integer")
			return null;
		if($enrollMax < 0)
			return null;
		if($this->enroll_max != $enrollMax)
			$this->change_log["enroll_max"] = $this->enroll_max . "->". $enrollMax . ";";
		$this->enroll_max = $enrollMax;
    }

    public function getPrice(){
		return $this->price;
    }

    public function setPrice($price){
		//check if the activity is allowed to change
		if(!$this->check_allowed_to_change()){
			// This activity is not allowed to change
			global $user;
			$this->set_error_log("Function: setPrice; Event is not allowed to change");
			trigger_error($user->lang['DC_ACT_IN_PAST']);
			return null; 					// not allowed to change	
		}
		if(gettype($price) != "double")
			return null;
		if($price < 0)
			return null;
		if($this->price != $price)
			$this->change_log["price"] = $this->price . "->". $price . ";";
		$this->price = $price;
    }

    public function getPriceMember(){
        return $this->price_member;
    }

    public function setPriceMember($priceMember){
		//check if the activity is allowed to change
		if(!$this->check_allowed_to_change()){
			// This activity is not allowed to change
			global $user;
			$this->set_error_log("Function: setPriceMember; Event is not allowed to change");
			trigger_error($user->lang['DC_ACT_IN_PAST']);
			return null; 					// not allowed to change	
		}
		
		if(gettype($priceMember) != "double")
			return null;
		if($priceMember < 0)
			return null;
		if($this->price_member != $priceMember)
			$this->change_log["price_member"] = $this->price_member . "->". $priceMember . ";";
		$this->price_member = $priceMember;
    }

    public function getLocation(){
		return  htmlspecialchars_decode($this->location);
    }

    public function setLocation($location){
		//check if the activity is allowed to change
		if(!$this->check_allowed_to_change()){
			// This activity is not allowed to change
			global $user;
			$this->set_error_log("Function: setLocation; Event is not allowed to change");
			trigger_error($user->lang['DC_ACT_IN_PAST']);
			return null; 					// not allowed to change	
		}
		$location = preg_replace( "/[^a-zA-Z0-9, ]/","",$location);
		if($this->location != $location)
			$this->change_log["location"] = $this->location . "->". $location . ";";
		$this->location = htmlspecialchars($location);
    }
	
	public function getActive(){
		return $this->active;
	}
	
	public function setActive($active){
		
		//check if the activity is allowed to change
		if(!$this->check_allowed_to_change()){
			// This activity is not allowed to change
			global $user;
			$this->set_error_log("Function: setActive; Event is not allowed to change");
			trigger_error($user->lang['DC_ACT_IN_PAST']);
			return null; 					// not allowed to change	
		}
	
		if(gettype($active) != "integer")
			return null;
		if(!(($active == 0) || ($active == 1)))
			return null;
		if($this->active != $active)
				$this->change_log["active"] = $this->active . "->". $active . ";";
		$this->active = $active;
	}

    public function getCategory(){
		return $this->category;
    }

    public function setCategory($category){
		//check if the activity is allowed to change
		if(!$this->check_allowed_to_change()){
			// This activity is not allowed to change
			global $user;
			$this->set_error_log("Function: setCategory; Event is not allowed to change");
			trigger_error($user->lang['DC_ACT_IN_PAST']);
			return null; 					// not allowed to change	
		}
		if(gettype($category) != "integer")
			return null;
		if($this->category != $category)
			$this->change_log["category"] = $this->category . "->". $category . ";";
		$this->category = $category;
    }

    public function getPayOption(){
		return $this->pay_option;
    }

    public function setPayOption($payOption){
		global $user;
		//check if the activity is allowed to change
		if(!$this->check_allowed_to_change()){
			// This activity is not allowed to change
			$this->set_error_log("Function: setPayOption; Event is not allowed to change");
			trigger_error($user->lang['DC_ACT_IN_PAST']);
			return null; 					// not allowed to change	
		}
		if(gettype($payOption) != "string")
			return null;
		if($payOption != "ideal")
			$payOption = "contant";
		if($this->pay_option != $payOption)
			$this->change_log["payOption"] = $this->pay_option . "->". $payOption . ";";
		$this->pay_option = $payOption;
    }

    public function getCommission(){
		return $this->commission;
    }

    public function setCommission($commission){
		global $db;
		//check if the activity is allowed to change
		if(!$this->check_allowed_to_change()){
			// This activity is not allowed to change
			global $user;
			$this->set_error_log("Function: setCommission; Event is not allowed to change");
			trigger_error($user->lang['DC_ACT_IN_PAST']);
			return null; 					// not allowed to change	
		}
		if(gettype($commission) != "integer")
				return null;
		$sql ="SELECT COUNT(*) count FROM `dc_groups` WHERE group_id ='" . $commission . "'";  // check if the group id exist
		$result = $db->sql_query($sql);							// send query
		$row = $db->sql_fetchrow($result);
		if( $row["count"] != 1 )								// if not found or there are more id's
			return null;
		$db->sql_freeresult($result);							// remove query
		if($this->commission != $commission)
			$this->change_log["commission"] = $this->commission . "->". $commission . ";";
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
	
	public function getUID(){
		return $this->bbcode_uid;
	}
}

?>
