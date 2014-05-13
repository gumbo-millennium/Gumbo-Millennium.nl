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
 */
 
 if (!defined('IN_PHPBB'))
{
	exit;
}

include_once($phpbb_root_path . 'dc/dc_functions.' . $phpEx);

if(!defined('DC_ACTIVITY_CLASS')){
	define("DC_ACTIVITY_CLASS", true); 	// set the id of the Gumbo member group
	define("MEMBER_GROUP_ID", 9); 		// set the id of the Gumbo member group
	define("OLD_MEMBERS_GROUP_ID", 10); 	// set the id of the oude lede group
	define("ERE_MEMBERS_GROUP_ID", 25); 	// set the id of the ere leden group
	define("AC_GROUP_ID", 14); 		// set the id of the Gumbo activity group
	define("DC_GROUP_ID", 15); 		// set the id of the Gumbo digitale commisie group
	define("BESTUUR_GROUP_ID", 13); 	// set the id of the Gumbo bestuur group
	define("BEGUNSTIGERS_GROUP_ID", 24); 	// set the id of the Begunstigers group
	define("ADM_GROUP_ID", 5); 		// set the id of the Administrators group
	define("SEE_ALL_ACTIVITIES_GROUP", serialize( array(ADM_GROUP_ID, BESTUUR_GROUP_ID, DC_GROUP_ID))); // the array of the groups who are allowed the see all the activities
	
	// users enrol status
	define("ENROLLED_USERS", 1); 	
	define("DISENROLLED_USERS", 2); 	
	define("MAYBE_USERS", 3); 	
	define("ALL_USERS", 4); 
	define("PAID_USER", 1); 
	define("NOT_PAID_USER", 2); 
	define("USER_SIGN_IN", 1); 
	define("USER_SIGN_OUT", 2); 
	define("USER_SIGN_MAYBE", 3); 
	
	// group status
	define("GROUPS_ACCESS_ENABLED", 0); 
	define("GROUPS_ACCESS_DISABLED", 1); 
	define("GROUPS_ACCESS_ALL", 2); 
	
	// group manages 
	define("GROUPS_MANAGES_ENABLED", 0); 
	define("GROUPS_MANAGES_DISABLED", 1); 
	define("GROUPS_MANAGES_ALL", 3); 
	
	
}
 
class activity {
    // declare variables 
    private $id = NULL;				// activity id, if the activity is saved(see @save()) the activity get an id.
    private $name;					// name of the activity
    private $description;			// description of the activity 
    private $start_datetime;		// start date and time of the activity
    private $end_datetime;			// end date and time of the activity
    private $enrol;				// must enrol for the activity (0 = no 1 = yes)
    private $amount_enrolled_users = 0;	// must amount of enrolled users
    private $unsubscribe_max_datetime;// the date and time the users are allowed to unsubscribe
    private $enrol_datetime;		// end date and time to enrol
    private $enrol_max;			// max user to enrol
    private $price;					// the price for a not gumbo member
    private $price_member;			// the price fr a gumbo member
    private $location;				// the location of the activity
	private $active;				// is the activity visable for not managers
    private $category;				// category of the activity like: 1 = LHW (Land Huis Weekend)
    private $pay_option;			// pay options: ideal or contant
    private $commission;			// the commission that created the activity
    private $user_id;				// the user that made the activity
    private $user_ip;				// ip of the user that made the activity
    private $datetime_created;		// the date and time this acticity was created
    private $datetime_updated;		// the date and time this activity was updated
	private $change_log = array(); 	// if the activity is saved this will added to the change log
	
	private $enrolled_users = NULL;	// an array list of all enrolled/disenrolled users 
	private $readed_users = NULL;	// an array list of all users who readed the activity
	private $managers_groups = NULL;		// an array list of all managers (group ids)
	private $groups_access = NULL;	// an array list of all groups that have acces to see and enrol to this activity
	
	private $activities_handler;	// the activities_hanlder
	
	// some extra variables for parsing text 
	private $bbcode_bitfield;
	private $bbcode_uid;
	private $enable_magic_url;
	private $enable_bbcode;
	private $enable_smilies;
	
	// temp variables
	private $last_enroll_list_count;
	
	
	// check_allowed_to_change 
	/*
	* $this->check_allowed_to_change()
	* The functon $this->check_allowed_to_change() checks if this activity is allowed to be changed. It looks if the this activity is not in the past.
	* @return boolean
	*/
	public function check_allowed_to_change($allowed_edit_current = true){
		if(isset($this->start_datetime)){
			// check if an activity is "current"
			// current is when the start date is past but the end date is in the future (The activity is on this moment)
			$activity_is_current = (($this->start_datetime < new datetime("now")) && ($this->end_datetime > new datetime("now"))) ? true : false;
			
			// checks if this activity is "current" and checks allowed to be edited.
			if($allowed_edit_current && $activity_is_current){
				return true;
			}
			if($this->start_datetime < new datetime("now")){ // check if the activiy is started
				return false; 								// not allowed to change
			}
		}
		return true;										// allowed to change
	}
	/** get_activity($activity_id, $activities_handler)
	* This function return the activity given by activity_id. if the activities_handler is given 
	* it will search in the activity handler.
	* @param:
	* $activity_id int the id of the activity to search for
	* $activities_handler activities_handler if the param is given it will also search in the activity handler (which is faster that searching in the database)
	* @returns:
	* Activity object if found
	* NULL if nothing is found
	*/
	
	static function get_activity($activity_id, $activities_handler = NULL, $user_id = NULL){
		if(gettype($activity_id) != "integer"){ // check if the id is a int
			$this->set_error_log("Function: get_activity; param $activity_id is not an integer (activity_id: ".$activity_id .")");
			trigger_error("get_activity: param $activity_id is not a integer"); // set error log
			return NULL;
		}
		
		if(!(($activities_handler instanceof Activities_handler) && $activities_handler != NULL)){	// check if activities_handler is a task object
			trigger_error("get_activity: param activities_handler is not a Activities_handler object");
			return NULL;
		}
		
		if(gettype($user_id) != "integer" && $user_id != NULL){ // check if the id is a int
			$this->set_error_log("Function: Fill; param $user_id is not a integer"); // set error log
			return NULL;
		}
		
		if($activities_handler){
			if($activity = $activities_handler->get_activity($activity_id)){
				return $activity;
			}
		}
		
		$activity = new activity();
		if($activity->fill_database($activity_id, $activities_handler ,$user_id)){
			return $activity;
		}
		
		return NULL;
	}
	
	/** Fill_database($activity_id, $activities_handler)
	 * The function Fill($id) is used to get an activity from the database.
	 * @param:
     * $id int The id of the activity that this function must get from the database
	 * $activities_handler acitivities_handler The activities handler that holds all the grouped activities, this param is optional
	 * @returns:
	 * TRUE if function succeeded
	 * FALSE if function fails  
	*/
    private function fill_database($activity_id, $activities_handler = NULL, $user_id = NULL) 
	{
		global $db, $user;
		if(gettype($activity_id) != "integer"){ // check if the id is a int
			$this->set_error_log("Function: Fill_database; param $activity_id is not a integer"); // set error log
			return NULL;
		}
		
		if(gettype($user_id) != "integer" && $user_id != NULL){ // pcheck if the id is a int
			$this->set_error_log("Function: Fill_database; param $user_id is not a integer"); // set error log
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
		
		$sql_where_ary = array(
			"act.id"      	=> (int)$activity_id,
			"grs.disabled" 	=> GROUPS_ACCESS_ENABLED,
			"gms.disabled" 	=> GROUPS_MANAGES_ENABLED,
		);

		$sql_array = array(
			'SELECT'    => 'act.*,
							count(DISTINCT enr.user_id) amount_enrolled,
							GROUP_CONCAT(DISTINCT  grs.group_id) access_groups,
							GROUP_CONCAT(DISTINCT  gms.group_id) managers_groups', 

			'FROM'      => array(
				ACTIVITY_TABLE  => 'act',
			),
			
			'LEFT_JOIN' => array(	
				array(
					'FROM' 	=> array("(".$db->sql_build_query('SELECT', $join_enroll).")" => 'enr'),   
					'ON'	=> 'act.id = enr.activity_id'
				),
				array(
					'FROM' 	=> array( ACTIVITY_GROUP_ACCESS_TABLE => 'grs'),   
					'ON'	=> 'act.id = grs.activity_id'
				),
				array(
					'FROM' 	=> array( ACTIVITY_GROUP_MANAGERS_TABLE => 'gms'),   
					'ON'	=> 'act.id = gms.activity_id'
				),
				
			),

			'WHERE'     => $db->sql_build_array('SELECT', $sql_where_ary),
			'GROUP_BY'	=> 'act.id',
		);
		
		if($user_id != NULL){
			$sql_array['SELECT'] .= ', GROUP_CONCAT(rd.user_id) readed_users';
			$sql_array['LEFT_JOIN'][] = array(
				'FROM' 	=> array( ACTIVITY_READED_TABLE => 'rd'),
				'ON'	=> 'act.id = rd.activity_id'
			);
		}
		$sql = $db->sql_build_query('SELECT', $sql_array);
		$result = $db->sql_query($sql, 3600);							// send query
		$row = $db->sql_fetchrow($result);						// get row from the database
		
		if($row['id'] != $activity_id){									// check if the the activity exist 
			$this->set_error_log("Function: Fill; No activity found: Possible problems: activity id is not existing in database "); // set error log
			trigger_error('NOT_AUTHORISED');				// send error to the user
			return null;
		}
		// fill the variables form the row of the database 
		$timezone = new DateTimeZone(date_default_timezone_get());			// get current time zone
        $this->id = $activity_id;
        $this->name = $row['name'];
        $this->description = (String)$row['description'];
        $this->start_datetime = new DateTime( $row['start_datetime']);
        $this->start_datetime->setTimeZone($timezone);
        $this->end_datetime = new DateTime($row['stop_datetime']);
        $this->end_datetime->setTimeZone($timezone);
        $this->enrol = $row['enroll'];
        $this->amount_enrolled_users = intval($row['amount_enrolled']);
        $this->enrol_datetime = new DateTime( $row['enroll_datetime'] );
        $this->enrol_datetime->setTimeZone($timezone);
        $this->unsubscribe_max_datetime = new DateTime( $row['unsubscribe_max'] );
        $this->unsubscribe_max_datetime->setTimeZone($timezone);
        $this->enrol_max =(int) $row['enroll_max'];
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
		
		$this->groups_access = explode_key($row["access_groups"], ",",array("access" => GROUPS_ACCESS_ENABLED));
		$this->managers_groups = explode_key($row["managers_groups"], ",",array("access" => GROUPS_MANAGES_ENABLED));
		
		if($user_id != NULL){
			$this->readed_users = explode_key($row["readed_users"],",", TRUE);
			if(!isset($this->readed_users[$user_id])){
				$this->readed_users[$user_id] = FALSE;
			}
		}
		
		$db->sql_freeresult($result); 							// remove query
		
		if($activities_handler != NULL){
			
			if(!$this->set_activities_handler($activities_handler)){
				trigger_error('Fill_database: No valid activities_handler. : activity:' . $this->name  .' id: ' . $activity_id );
			}
			
			if( !$activities_handler->add_activities(array($this)) ){
				trigger_error('Fill_database: $activities_handler->add_activities failed: activity:' . $this->name  .'  id: ' . $activity_id );
				return FALSE;
			}
		}
		
		return true;
    }
	
	/** Fill_database_multiple(*, $activities_handler)
	 * The function Fill_database_multiple(*) is used the create and fill an activity from a database call that return multiple activities rows. 
	 * This function assumes that the data is directly from the database. So it does NOT check for wrong values form the database!! 
	 * @param:
     * * variable data from the database 
	 * $activities_handler acitivities_handler The activities handler that holds all the grouped activities
	 * @returns:
	 * TRUE if function succeeded
	 * FALSE if function fails  
	*/
	function fill_database_multiple(
		$id,
		$name,
		$description,
		$start_datetime,
		$end_datetime,
		$enrol,
		$amount_enrolled_users,
		$unsubscribe_max_datetime,
		$enrol_datetime,
		$enrol_max,
		$price,
		$price_member,
		$location,
		$active,
		$category,
		$pay_option,
		$commission,
		$user_id,
		$user_ip,
		$datetime_created,
		$datetime_updated,
		$readed_users,
		$groups_access,
		$managers_groups,

		// some extra variables for parsing text 
		$bbcode_bitfield,
		$bbcode_uid,
		$enable_magic_url,
		$enable_bbcode,
		$enable_smilies,
		
		$activities_handler
	){
		
		if(!$this->set_activities_handler($activities_handler)){
			trigger_error('Fill_database_multiple: No valid activities_handler. : activity:' . $name .' id: ' . $id );
		}
		
		$this->id = (int)$id;
		$this->name = (String) $name;
		$this->description = (String) $description;
		$this->start_datetime = new DateTime( $start_datetime );
		$this->end_datetime = new DateTime( $end_datetime );
		$this->enrol = (int) $enrol;
		$this->amount_enrolled_users = intval($amount_enrolled_users);
		$this->unsubscribe_max_datetime = new DateTime( $unsubscribe_max_datetime );
		$this->enrol_datetime = new DateTime( $enrol_datetime );
		$this->enrol_max = (int) $enrol_max;
		$this->price = (double) $price;
		$this->price_member = (double) $price_member;
		$this->location = (String) $location;
		$this->active = (bool) $active;
		$this->category = (int) $category;
		$this->pay_option = (String) $pay_option;
		$this->commission = (int) $commission;
		$this->user_id = (int) $user_id;
		$this->user_ip = (String) $user_ip;
		$this->datetime_created = new DateTime( $datetime_created );
		$this->datetime_updated = new DateTime( $datetime_updated );
			
		// some extra variables for parsing text 
		$this->bbcode_bitfield = (String) $bbcode_bitfield;
		$this->bbcode_uid = (String) $bbcode_uid;
		$this->enable_magic_url = (int) $enable_magic_url;
		$this->enable_bbcode = (int) $enable_bbcode;
		$this->enable_smilies = (int) $enable_smilies;		
		
		if(is_array($readed_users)){
			if(is_array($this->readed_users)){
				$this->readed_users = array_merge($this->readed_users, $readed_users);
			} else {
				$this->readed_users = $readed_users;
			}
		}
		
		if(is_array($groups_access)){
			if(is_array($this->groups_access)){
				$this->groups_access = $this->groups_access + $groups_access;
			}else{
				$this->groups_access = $groups_access;
			}
		}
		
		if(is_array($managers_groups)){
			if(is_array($this->managers_groups)){
				$this->managers_groups = $this->groups_access + $managers_groups;
			}else{
				$this->managers_groups = $managers_groups;
			}
		}
	}
	
	/** fill_data(*, $activities_handler, *)
	 * The function fill_data(*, $activities_handler, *) is used to fill a new activity. 
	 * The params will be checked for invalid data. 
	 * @param:
     * * variable  required data from the user  ($name, $description, $start_datetime, $end_datetime, $enrol, $location, $commission)
	 * $activities_handler acitivities_handler The activities handler that holds all the grouped activities, this param is optional
	 * * variable optinal data from the user ($unsubscribe_max_datetime = null, $enrol_datetime = null, $enrol_max = null,
	 * $price = null, $price_member = null, $category = null, $pay_option = null)
	 * @returns:
	 * TRUE if function succeeded
	 * FALSE if function fails  
	*/ 
	
	function fill_data(
		$name,
		$description,
		$start_datetime,
		$end_datetime,
		$enrol,
		$location,
		$commission,
					
		$activities_handler = null,
		$unsubscribe_max_datetime = null,
		$enrol_datetime = null,
		$enrol_max = null,
		$price = null,
		$price_member = null,
		$category = null,
		$pay_option = null
		
	){
	
		if(!$this->setname($name)) return FALSE;
		if(!$this->setDescription($description)) return FALSE;
		if(!$this->setStartDatetime($start_datetime)) return FALSE;
		if(!$this->setEndDatetime($end_datetime)) return FALSE;
		if(!$this->setEnrol($enrol)) return FALSE;
		if(!$this->setLocation($location)) return FALSE;
		if(!$this->setCommission($commission)) return FALSE;
		
		if($unsubscribe_max_datetime){
			if(!$this->setUnsubscribeMaxDatetime($unsubscribe_max_datetime)){ return FALSE;	}
		}
		if($enrol_datetime){
			if(!$this->setEnrolDatetime($enrol_datetime)){ return FALSE; }
		}
		if($enrol_max){
			if(!$this->setEnrolMax($enrol_max)){ return FALSE; }
		}	
		if($price){
			if(!$this->setPrice($price)){ return FALSE; }
		}
		if($price_member){
			if(!$this->setPriceMember($price_member)){ return FALSE; }
		}
		if($category){
			if(!$this->setCategory($category)){ return FALSE; }
		}
		if($pay_option){
			if(!$this->setPayOption($pay_option)){ return FALSE; }
		}
		
		if(!$this->save()){
			return FALSE;
		}
		
		if($activities_handler){
			if(!$this->set_activities_handler($activities_handler)){
				trigger_error('Fill_database: No valid activities_handler. : activity:' . $name .' id: ' . $id );
			}
			
			if( $activities_handler->add_activities(array($this)) ){
				return FALSE;
			}
		}
		return TRUE;
	}
	
	
	/* 
		* get_enrol_list($status, $order = null, $short = null, $sort_paid = null, $limit = 0, $offset = null)
		* This function get all the users who are enrolled, dis-enrolled or maybe for this activity.
		* @params	$status define The status of users it returns: 
		*					ENROLLED_USERS for all the users who are enrolled/subscripted, 
		* 				 	DISENROLLED_USERS for all the users who disenrolled/unscriped
		*					MAYBE_USERS for all the users who has the status maybe THIS IS NOT USED IN THE FRONTEND
		* 					ALL_USERS for all the users. (enrolled + disenrolled + maybe) 
		* $order String Order the return list based on this parameter: 'username', 'comments', 'datetime', 'status', 'price_paid', 'real_name'. Default is real_name 
		* $short String short by ASC or DESC
		* $sort_paid define Limit the list by users who paid or who not paid: PAID_USER, NOT_PAID_USER
		* $limit int Set maximum of returned rows, 0 is all row's 
		* $offset int set staring row
		* @returns:
		* The user_list array
	*/
	public function get_enrol_list($status, $order = null, $short = null, $sort_paid = null, $limit = 0, $offset = 0){
		global $db;												// get connection to the database		
		$return_user_list = array();
		$result =$this->get_enrol_list_database($order, $short);
		$this->enrolled_users = array();
		$this->last_enroll_list_count = 0;
		$counter = 0;
		while ($row = $db->sql_fetchrow($result))				// walk through all the rows
		{	
			$current_user_id = intval($row['user_id']);
			$real_name = ($row['realname'] == 'nieuwbouw' || $row['realname'] == '') ? $row['username'] :$row['realname'];
			$this->enrolled_users[$current_user_id] = array(
				'user_id' 			=> $current_user_id,
				'user_ip' 			=> $row['user_ip'],
				'username' 			=> $row['username'],
				'comments' 			=> generate_text_for_display( htmlspecialchars_decode($row['comments']) , '', '', 0),
				'datetime' 			=> new DateTime($row['datetime']),
				'status' 			=> $row['status'],
				'price_paid' 		=> $row['price_paid'],
				'real_name'			=> $real_name
			);  

			


			switch($status){										// check status
				case ENROLLED_USERS:
					if($this->enrolled_users[$current_user_id]["status"] == "yes"){
						
						// check if users has paid or not paid for sort (Depending on the $sort_paid parameter )
						if($this->enr_lst_chck_sort_paid($sort_paid, $this->enrolled_users[$current_user_id])){	
							// check if the limit of the list is reached 
							if(	check_limit_offset($limit, $offset, $this->last_enroll_list_count)){			
								$return_user_list[$current_user_id] = $this->enrolled_users[$current_user_id];
							}
							
							$this->last_enroll_list_count++;
						}
					}
					break;			
				case DISENROLLED_USERS:
					if($this->enrolled_users[$current_user_id]["status"] == "no"){
						// check if users has paid or not paid for sort (Depending on the $sort_paid parameter )
						if($this->enr_lst_chck_sort_paid($sort_paid, $this->enrolled_users[$current_user_id])){
							// check if the limit of the list is reached 
							if(check_limit_offset($limit, $offset, $this->last_enroll_list_count)){
								$return_user_list[$current_user_id] = $this->enrolled_users[$current_user_id];
							}
							$this->last_enroll_list_count++;
						}
					}
					break;
				case MAYBE_USERS:
					if($this->enrolled_users[$current_user_id]["status"] == "maybe"){
						// check if users has paid or not paid for sort (Depending on the $sort_paid parameter )
						if($this->enr_lst_chck_sort_paid($sort_paid, $this->enrolled_users[$current_user_id])){
							// check if the limit of the list is reached 
							if(check_limit_offset($limit, $offset, $this->last_enroll_list_count)){
								$return_user_list[$current_user_id] = $this->enrolled_users[$current_user_id];
							}
							$this->last_enroll_list_count++;
						}
					} 
					break;
				case ALL_USERS:											// all the users
					// check if users has paid or not paid for sort (Depending on the $sort_paid parameter )
					if($this->enr_lst_chck_sort_paid($sort_paid, $this->enrolled_users[$current_user_id])){
						// check if the limit of the list is reached 
						if(	check_limit_offset($limit, $offset, $this->last_enroll_list_count)){
							
							$return_user_list[$current_user_id] = $this->enrolled_users[$current_user_id];
							$counter++;
						}
						$this->last_enroll_list_count++;
					}
					break;
				default:											// wrong status
					$this->set_error_log("Function: get_enrol_list; Wrong status: " . $status);
					global $user;
					trigger_error($user->lang['DC_ACT_INVALID_STATUS']);
					return null;									
			}	
		}
		
		$db->sql_freeresult($result);							// remove query

		return $return_user_list;										// send array
		
	}
	
	/* get the enrol list from the database
	* @param
	* $order String Order the return list based on this parameter: sername', 'comments', 'datetime', 'status', 'price_paid', 'real_name'. Default is real_name 
		* $limit int Set maximum of returned rows, 0 is all row's 
		* $offset int set staring row
	*/
	private function get_enrol_list_database(
		$order = NULL,
		$short = NULL
	){
		global $db;												// get connection to the database	
				
		$sql_where_ary = array(
			'enrol.activity_id'    => $this->id,	
		);
		
		$order_array = array('ASC', 'DESC');

		switch($short){
			case 'username':
				$short = "LOWER(users.username)";
				break;
			case 'datetime':
				$short = "enrol.datetime";
				break;
			case 'comments':
				$short = "LOWER(enrol.comments)";
				break;
			case 'status':
				$short = "enrol.status";
				break;
			case 'price_paid':
				$short = "enrol.price_payed";
				break;
			case 'real_name':
			default:
				$short = "LOWER(custom.pf_gumbo_first_name), LOWER(custom.pf_gumbo_surname), LOWER(users.username)";
		}

		// check if the order is valid
		if(!in_array($order, $order_array)){
			$order = 'ASC';
		}
		
		$sql_array = array(
			'SELECT'    => 'enrol.user_id user_id, users.username username, enrol.comments comments, enrol.datetime datetime, enrol.price_payed price_paid, enrol.status status, enrol.user_ip,  CONCAT(TRIM(custom.pf_gumbo_first_name), " ", IFNULL(TRIM(custom.pf_gumbo_surname), "")) realname',

			'FROM'      => array(
				ACTIVITY_ENROL_TABLE  => 'enrol',
			),
			
			'LEFT_JOIN' => array(
				array(
					'FROM' 	=> array(USERS_TABLE => 'users'),
					'ON'	=> ' enrol.user_id=users.user_id'
				),
				array(
					'FROM' 	=> array(PROFILE_FIELDS_DATA_TABLE => 'custom'),
					'ON'	=> ' custom.user_id = enrol.user_id'
				)
			),
			'WHERE'     => $db->sql_build_array('SELECT', $sql_where_ary),
			'ORDER_BY'  => $short .' '.$order,
		);
		$sql = $db->sql_build_query('SELECT', $sql_array);
		$result = $db->sql_query($sql, 3600);
		
		return $result;
	
	}
	
	private function enr_lst_chck_sort_paid($paid_status, $enr_lst_row){
		switch($paid_status){
			case PAID_USER:
				if($enr_lst_row['price_paid'] < $this->calculate_price($enr_lst_row['user_id'])){		// check if payment is lower than price to pay(depents on if the user is a member)
					return FALSE;
				}
				break;
			case NOT_PAID_USER:
				if($enr_lst_row['price_paid'] >= $this->calculate_price($enr_lst_row['user_id'])){		// check if payment is higher than price to pay(depents on if the user is a member)
					return FALSE;
				}
		}
		return TRUE;
	}
	
	function set_users_status($new_user_list, $full_list = 0){
		global $db, $user, $cache;
		
		//check if the activity is allowed to change
		if(!$this->check_allowed_to_change()  && !$this->is_manager($user->data['user_id'])){
			// This activity is not allowed to change
			$this->set_error_log("Function: set_users_status; Event is not allowed to change");
			trigger_error($user->lang['DC_ACT_IN_PAST']);
			return null; 					// not allowed to change	
		}
				
		
		if(!is_array($new_user_list)){									// check if group id list is an array
			$this->set_error_log('Function: set_users_status; new_user_list not an array');	// set administrator log
			trigger_error('new_user_list is not an array');				// send error to the group
		}
		
		if(!count($new_user_list)){									// check if group id list is an array
			$this->set_error_log('Function: set_users_status; new_user_list is empty');	// set administrator log
			trigger_error('new_user_list is empty');				// send error to the group
		}
		
		if(!is_array($this->enrolled_users)){
			$this->get_enrol_list(ALL_USERS);		// get a list of all the groups with access
		}
		$users_enrol_ary = $this->enrolled_users;
		$users_status_change = array();						// the list of all managers who status changes 
		$users_status_new = array();						// the list of all managers who status changes 
		// check for existing users with a status change
		$temp_user_enrol_count = 0;
		foreach($new_user_list AS $key => $user_data){				// loop through all group id (current_user) from the new_users_list
			$update = false;
			$user_id = intval($user_data["user_id"]);
			if(isset($user_data["status"])){
				$status = $user_data["status"];
				switch($status){
					case USER_SIGN_IN:
						$temp_user_enrol_count++;
						$user_data["status"] = "yes";
					break;
					case USER_SIGN_OUT:
						$temp_user_enrol_count--;
						$user_data["status"] = "no";
					break;
					case USER_SIGN_MAYBE:
						$user_data["status"] = "maybe";
					break;
					default:
						$this->set_error_log("Function: set_users_status; Invalid user (id: ". $user_data["user_id"] .") status: ". $status);
						trigger_error($user->lang['DC_ACT_INVALID_STATUS']);
						return NULL; 
				}
				// check if new status not equals the old status
				if(isset($users_enrol_ary[$user_data["user_id"]])){
					if( $users_enrol_ary[$user_data["user_id"]]["status"] != $user_data["status"] ){
						
						$update = true;
					}
				}
			}
			
			if(isset($user_data["price_paid"])){
				if(gettype($user_data["price_paid"]) != "double"){
					$this->set_error_log('Function: set_users_status; Invalid double: pay amount: '. $user_data["price_paid"] . "user id:" . $user_data["user_id"]);
					trigger_error('Amount is not valid, please contact the administrator');	
					return NULL;
				}
				
				if($users_enrol_ary[$user_data["user_id"]]["price_paid"] != $user_data["price_paid"]){

					$update = true;
				}
			}
			
			$uid = $bitfield = $options = ''; 
			$enable_bbcode = $enable_magic_url = $enable_smilies = FALSE;
			
			if(isset($users_enrol_ary[$user_data["user_id"]])){				// check if group id is in the current manager list
				
				if ($update){ 					
					$comments_stored = (isset($user_data["comments"]))? 	$user_data["comments"] 	: $users_enrol_ary[$user_data["user_id"]]["comments"];
					generate_text_for_storage($comments_stored, $uid, $bitfield, $options, $enable_bbcode, $enable_magic_url, $enable_smilies);
					
					$users_status_change[$user_data["user_id"]] = array( 
						"status"		=> (isset($user_data["status"]))? $user_data["status"] : $users_enrol_ary[$user_data["user_id"]]["status"],
						"user_ip"		=>  (isset($user_data["user_ip"]))? $user_data["user_ip"] : $users_enrol_ary[$user_data["user_id"]]["user_ip"],
						"comments"		=> $comments_stored,
						"price_payed"	=> (double)(isset($user_data["price_paid"]))? 	$user_data["price_paid"]	: $users_enrol_ary[$user_data["user_id"]]["price_paid"],
					);
				}
			}else{
			
				$comments_stored = (!empty($user_data["comments"]))? $user_data["comments"] : "";
				generate_text_for_storage($comments_stored, $uid, $bitfield, $options, $enable_bbcode, $enable_magic_url, $enable_smilies);
				$users_status_new[] = array(
						"user_id"		=> $user_data["user_id"],
						"status"		=> $user_data["status"],
						"activity_id"	=> (int)$this->id,
						"user_ip"		=> $user_data["user_ip"],
						"price"			=> (float)$this->calculate_price($user_data["user_id"]),
						"comments"		=> $comments_stored,
						"price_payed"	=> (double)isset($user_data["price_paid"])? $user_data["price_paid"]: 0,
				);
			}
			unset($users_enrol_ary[$user_id]);				// remove group id from the users_enrol_ary list
		}
		
		if($this->is_max_enrolled($temp_user_enrol_count)){
			$this->set_error_log("Function: set_users_status; Max subscriptions is reached");
			trigger_error($user->lang['DC_ACT_ENROLL_AMOUNT_MAX']);
			return FALSE;
		}
				
		if(!empty($users_status_change)){	

			$sql = "UPDATE " . ACTIVITY_ENROL_TABLE . " 
						". $this->sql_update_case($users_status_change, "user_id") ."
							AND activity_id = '" . $db->sql_escape((int)$this->id) ."'";
			$db->sql_query($sql);
				if(!$db->sql_affectedrows()){									// check for changed records
					// no changed records
					$this->set_error_log("Function: set_users_status; UPDATE status: No new record");
					trigger_error($user->lang['DC_ACT_ERROR_NO_ROWS_ADDED']);
				}	
		}
		
		if(!empty($users_status_new)){
			$db->sql_multi_insert( ACTIVITY_ENROL_TABLE, $users_status_new);
			if(!$db->sql_affectedrows()){									// check for changed records

					// no changed records
					$this->set_error_log("Function: set_users_status; INSERT status: No new record");
					trigger_error($user->lang['DC_ACT_ERROR_NO_ROWS_ADDED']);
			}
		}
		
		if(!empty($users_enrol_ary) && $full_list){
		
			$sql = "UPDATE " . ACTIVITY_ENROL_TABLE . " AS enr
					SET enr.status = 'no'
					WHERE " . $db->sql_in_set("enr.user_id", array_keys($users_enrol_ary)) ."
					AND enr.activity_id = '" . $db->sql_escape((int)$this->id) ."'";
					$db->sql_query($sql);
			if(!$db->sql_affectedrows()){									// check for changed records
					// no changed records
					$this->set_error_log("Function: set_users_status; UPDATE status (full_list): No new record");
					trigger_error($user->lang['DC_ACT_ERROR_NO_ROWS_ADDED']);
			}
		}
		// update enrol list
		$this->amount_enrolled_users = (int) (intval($this->amount_enrolled_users) + $temp_user_enrol_count);
		$cache->destroy('sql', ACTIVITY_ENROL_TABLE, ACTIVITY_TABLE, ACTIVITY_UPCOMMING_ACTIVE_TABLE, ACTIVITY_ALL_ACTIVE_TABLE, ACTIVITY_FURTURE_TABLE); 
		$this->enrolled_users = NULL;
		return true;															// return successful
	}
	
	private function sql_update_case($cases_array, $in_set){
		global $db, $user;
		if(!is_array($cases_array)){
			$this->set_error_log("Function: db_update_case; $cases is not an array");
			trigger_error("Cases is not an array, please check the error log");
		}
		
		if(empty($in_set)){
			$this->set_error_log("Function: db_update_case; $in_set is emty");
			trigger_error("Is_set is empty, please check the error log");
		}
		
		$build_when = array();
		$field_array = array();
		foreach($cases_array AS $user_id => $case){
			foreach($case AS $field => $setting){
				if($setting !== ""){
					$build_when[$field][$user_id] = $setting;
				}
			}
			$field_array[] = $user_id;
		}
		
		$return_string = "";
		$header = "";
		$first = TRUE;
		
		foreach($build_when AS $field => $field_data){

			if($first){
				$return_string = "Set ";
				$first = FALSE;
			}ELSE{	
				$return_string .= ", ";
			}
			$return_string .= $field ." = CASE ". $in_set ." ";
			foreach($field_data AS $user_id => $setting){
					$return_string .="WHEN ". $user_id ." THEN '".  utf8_normalize_nfc( $db->sql_escape($setting)) ."' ";
			}
			$return_string .="ELSE '' END ";	
		}
		
		
		
		$return_string .= "WHERE " . $db->sql_in_set($in_set, $field_array);
		return $return_string; 
	}
	
	
	// checks what price the user have to pay
	function calculate_price($user_id){
		if(	$this->is_member($user_id) || 
			$this->is_old_member($user_id) || 
			$this->is_ere_member($user_id)|| 
			$this->is_begunstigers_member($user_id)
		){							// check if the user is a member 
			$price = $this->price_member;						// set member price
		}else{
			$price=$this->price;								// set non member price
		}
		return $price;											// return the price
	}
	
	// checks if the user is a gumbo member
	function is_member($user_id){
	
		// get the groups of the user
		$user_groups = (isset($this->activities_handler)) ? $this->activities_handler->get_user_groups($user_id) : all_user_groups($user_id);
		if(in_array(MEMBER_GROUP_ID, $user_groups))
			return true;
		return null;
	}	

	function is_old_member($user_id){
	
		// get the groups of the user
		$user_groups = (isset($this->activities_handler)) ? $this->activities_handler->get_user_groups($user_id) : all_user_groups($user_id);
		if(in_array(OLD_MEMBERS_GROUP_ID, $user_groups))
			return true;
		return null;
	}

	function is_ere_member($user_id){
	
		// get the groups of the user
		$user_groups = (isset($this->activities_handler)) ? $this->activities_handler->get_user_groups($user_id) : all_user_groups($user_id);
		if(in_array(ERE_MEMBERS_GROUP_ID, $user_groups))
			return true;
		return null;
	}

	function is_begunstigers_member($user_id){
	
		// get the groups of the user
		$user_groups = (isset($this->activities_handler)) ? $this->activities_handler->get_user_groups($user_id) : all_user_groups($user_id);
		if(in_array(BEGUNSTIGERS_GROUP_ID, $user_groups))
			return true;
		return null;
	}
	
	// checks if the user is enrolled, returns: 0: user is not enrolled, else: the status
	function get_user_status($user_id){
		global $db;		
		
		// check if the enrol list is filld
		if(!is_array($this->enrolled_users)){
				$this->get_enrol_list(ALL_USERS);
		}
		
		// check if user is in the enrol list
		if(isset($this->enrolled_users[$user_id])){
			return $this->enrolled_users[$user_id]["status"];
		}
		
		// this user has no status 
		return NULL; 
	}
	
	function set_user_comment($user_id, $new_comment, &$model_enroll_list = null){
		global $db, $cache;
		
		//check if the activity is allowed to change
		if(!$this->check_allowed_to_change()){
			// This activity is not allowed to change
			global $user;
			$this->set_error_log("Function: set_user_comment; Event is not allowed to change");
			trigger_error($user->lang['DC_ACT_IN_PAST']);
			return null; 					// not allowed to change	
		}
		
		if(!is_array($this->enrolled_users)){
			$this->get_enrol_list(ALL_USERS);		// get a list of all the groups with access
		}
		$comments_stored = $new_comment;
		$uid = $bitfield = $options = ''; // will be modified by generate_text_for_storage
		$enable_bbcode = $enable_magic_url = $enable_smilies = FALSE;
		generate_text_for_storage($comments_stored, $uid, $bitfield, $options, $enable_bbcode, $enable_magic_url, $enable_smilies);
		if(isset($this->enrolled_users[$user_id])){
			$sql_ary = array(
				"enr.comments" => htmlspecialchars($comments_stored)
			);
			
			$sql_where_ary = array(
				'enr.activity_id' 	=> (int)$this->id,
				'enr.user_id'		=> (int)$user_id
			);
			
			$sql= 'UPDATE '. ACTIVITY_ENROL_TABLE .' AS enr
				SET '.$db->sql_build_array('UPDATE', $sql_ary) . '
				WHERE '. $db->sql_build_array('SELECT', $sql_where_ary);
			$db->sql_query($sql);
			$this->enrolled_users[$user_id]["comments"] = htmlspecialchars($new_comment);
			if(isset($model_enroll_list)){
				$model_enroll_list[$user_id]["comments"] = htmlspecialchars($new_comment);
			}
		}else{
			$this->set_error_log("Function: set_user_comment; User not enrolled");
			global $user;
			trigger_error($user->lang['DC_ACT_NOT_ENROLLED']);
			return NULL;											// return user already this status
		}
		$cache->destroy('sql', ACTIVITY_TABLE, ACTIVITY_UPCOMMING_ACTIVE_TABLE, ACTIVITY_ALL_ACTIVE_TABLE, ACTIVITY_FURTURE_TABLE, ACTIVITY_ENROL_TABLE);
	}

	
	// get list of user access to change the activity: 
		//$status: 	
		//			GROUPS_MANAGES_ENABLED: all the users who have access
		//			GROUPS_MANAGES_DISABLED: all the users who had access
		//			GROUPS_MANAGES_ALL: all the users
	// returns: 
		// if wrong status: NULL
		// else: an array: group_managers[user_id] = [created][access]
	function get_groups_manage_list($status = GROUPS_MANAGES_ALL, $force_update = FALSE){
		global $db;	

		$sql_ary = array(
			'agm.activity_id'      => (int)$this->id,
		);		
		
		switch($status){										// check status
			case GROUPS_MANAGES_ENABLED:										// all the users with access		
			case GROUPS_MANAGES_DISABLED:									// all the users who had access
			case GROUPS_MANAGES_ALL:											// all the users
				break;
			default:											// wrong status
				$this->set_error_log("Function: get_group_manage_list; Wrong status: " . $status);
				global $user;
				trigger_error($user->lang['DC_ACT_INVALID_STATUS']);
				return null;									
		}
		
		
		if(!isset($this->managers_groups) || $force_update){
			$sql_array = array(
				'SELECT'    => 'agm.group_id, agm.created, agm.disabled access, grs.group_name',

				'FROM'      => array(
					ACTIVITY_GROUP_MANAGERS_TABLE => 'agm',
				),
				'LEFT_JOIN' => array(
					array(
						'FROM' 	=> array(GROUPS_TABLE => 'grs'),   
						'ON'	=> 'grs.group_id = agm.group_id'
					),
				),

				'WHERE'     =>  $db->sql_build_array('SELECT', $sql_ary),
			);
			
			$sql = $db->sql_build_query('SELECT', $sql_array);
			$result = $db->sql_query($sql, 3600);							// send query
			$this->groups_access = array();
			$return_ary = array();
			while ($row = $db->sql_fetchrow($result))				// walk through all the rows
			{
			
				$this->managers_groups[$row['group_id']] = array( 
					'group_id' 		=> intval($row['group_id']), 
					'created' 		=> new DateTime( $row['created']), 
					'access' 		=> ((intval($row['access']) == 0) ? GROUPS_MANAGES_ENABLED : GROUPS_MANAGES_DISABLED),
					'group_name' 	=> $row["group_name"],
				);
				
				if($this->managers_groups[ $row["group_id"] ]["access"] == $status || $status == GROUPS_MANAGES_ALL){
					$return_ary[intval($row["group_id"])] = $this->managers_groups[$row["group_id"]];
				}
				
			}
			$db->sql_freeresult($result);							// remove query
		}else{
			foreach($this->managers_groups AS $group_id => $group_data ){
				if($group_data["access"] == $status || $status == GROUPS_MANAGES_ALL){
					$return_ary[$group_id] = $group_data;
				}
			}
		}
		return $return_ary;
	}
	
	// set_groups_managers 
		// description:
		// 	set users as managers for this activity (for users that are not in the Activity Commission)
		//inputs: 	
		//		group_id_list: array of user id's who gets a new status
		//		new_status: string of the new status of the user id's: enable (set as manager), disable (remove as manager)
		//		full_list: optional setting, if true all other user id's in the db that are not on the user id list will be changed to disable
					// default is false, so it won't change other statuses of user id's in the db
		// returns:
		//		success:	1
		//		wrong status: false (check error log)
		//		no rows added: false (check error log)	
	function set_groups_managers($new_group_list, $full_list = 0){
		global $db, $user, $cache;
		
		//check if the activity is allowed to change
		if(!$this->check_allowed_to_change()){
			// This activity is not allowed to change
			
			$this->set_error_log("Function: set_groups_managers; Event is not allowed to change");
			trigger_error($user->lang['DC_ACT_IN_PAST']);
			return null; 					// not allowed to change	
		}
				
		
		if(!is_array($new_group_list)){									// check if group id list is an array
			$this->set_error_log('Function: set_groups_managers; new_group_list not an array');	// set administrator log
			trigger_error('new_group_list is not an array');				// send error to the group
		}
		
		if(empty($new_group_list)){									// check if group id list is an array
			$this->set_error_log('Function: set_groups_managers; new_group_list is empty');	// set administrator log
			trigger_error('new_group_list is empty');				// send error to the group
		}
		
		if(!is_array($this->managers_groups)){
			$this->get_groups_manage_list();		// get a list of all the managers groups
		}
		$groups_manage_ary = $this->managers_groups;
		$groups_manage_change = array();						// the list of all managers who status changes 
		$groups_manage_new = array();						// the list of all managers who status changes 
		// check for exisiting managers with a status change
		
		foreach($new_group_list AS $key => $group_data){				// loop through all group id (current_user) from the new_users_list
			$access = $group_data["access"];
			switch($access){
				case GROUPS_MANAGES_ENABLED:
					$group_data["access"] = 0;
				break;
				case GROUPS_MANAGES_DISABLED:
					$group_data["access"] = 1;
				break;
				default:
					$this->set_error_log("Function: set_groups_managers; Invalid group (id: ". $group_data["group_id"] .") access: ". $access);
					trigger_error("Invalid group data, see errorlog. Please contact the administrator");
					return NULL; 
			}
			
			if(isset($groups_manage_ary[$group_data["group_id"]])){				// check if group id is in the current manager list
				if( $groups_manage_ary[$group_data["group_id"]]["access"] != $group_data["access"]){ 	// check if current_group_id access is the same as new access
					// the group id exist and has new access
					$groups_manage_change[$group_data["group_id"]] =  $group_data["access"];
				}
			}else{
				$groups_manage_new[] = array(
						"group_id"		=> $group_data["group_id"],
						"disabled"		=> $group_data["access"],
						"activity_id"	=> (int)$this->id,
				);
			}
			unset($groups_manage_ary[ $group_data["group_id"] ]);				// remove group id from the groups_manage_ary list
		}
		
				
		if(!empty($groups_manage_change)){		
			$sql = "UPDATE " . ACTIVITY_GROUP_MANAGERS_TABLE . " 
					SET disabled = CASE group_id 
						". $this->sql_update_case($groups_manage_change, "group_id") ."
							AND activity_id = '" . $db->sql_escape((int)$this->id) ."'";
							
			$db->sql_query($sql);
				if(!$db->sql_affectedrows()){									// check for changed records
					// no changed records
					$this->set_error_log("Function: set_groups_managers; UPDATE access: No new record");
					trigger_error($user->lang['DC_ACT_ERROR_NO_ROWS_ADDED']);
				}
			$this->managers_groups = $groups_manage_change + $this->managers_groups; 
		}
		
		if(!empty($groups_manage_new)){
			$db->sql_multi_insert( ACTIVITY_GROUP_MANAGERS_TABLE, $groups_manage_new);
			if(!$db->sql_affectedrows()){									// check for changed records

					// no changed records
					$this->set_error_log("Function: set_groups_managers; INSERT status: No new record");
					trigger_error($user->lang['DC_ACT_ERROR_NO_ROWS_ADDED']);
			}
			if(empty($this->managers_groups)){
				$this->managers_groups = $groups_manage_new;
			}else{
				$this->managers_groups = $groups_manage_new + $this->managers_groups;
			}
		}
		
		if(!empty($groups_acces_ary) && $full_list){
		
			$sql = "UPDATE " . ACTIVITY_GROUP_MANAGERS_TABLE . " AS gms
					SET gms.disabled = 'no'
					WHERE " . $db->sql_in_set("gms.group_id", array_keys($groups_manage_ary)) ."
					AND gms.activity_id = '" . $db->sql_escape((int)$this->id) ."'";
					$db->sql_query($sql);
			if(!$db->sql_affectedrows()){									// check for changed records
					// no changed records
					$this->set_error_log("Function: set_groups_managers; UPDATE status (full_list): No new record");
					trigger_error($user->lang['DC_ACT_ERROR_NO_ROWS_ADDED']);
			}
			foreach($groups_manage_ary AS $group_id => $group_data ){
				$this->managers_groups[$group_id]["access"] = GROUPS_MANAGES_DISABLED;
			}
		}
		// update enrol list
		$cache->destroy('sql',GROUPS_MANAGES_DISABLED, ACTIVITY_TABLE, ACTIVITY_UPCOMMING_ACTIVE_TABLE, ACTIVITY_ALL_ACTIVE_TABLE, ACTIVITY_FURTURE_TABLE); 
		return true;															// return successful
	}
	
	
	// get changelog
	//	change_list[counter][user_id][datetime][modification]
	function get_change_list(){
		global $db;
		$change_list = null;
		$counter = 0;
		
		
		$sql_where_ary = array(
			'chg'      		=> (int)$activity_id
		);

		$sql_array = array(
			'SELECT'    => 'chg.user_id, chg.datetime, chg.modification',

			'FROM'      => array(
				ACTIVITY_CHANGE_TABLE  => 'chg',
			),

			'WHERE'     => $db->sql_build_array('SELECT', $sql_where_ary),
			
			'ORDER_BY'  => 'datetime ASC'

		);

		$sql = $db->sql_build_query('SELECT', $sql_array);

		$result = $db->sql_query($sql);
		while ($row = $db->sql_fetchrow($result))				// walk through all the rows
		{
			$change_list[$counter]= array ( "user_id" => $row['user_id'] ,"datetime" => $row['datetime'],"modification" => $row['modification']);
			$counter++;
		}
		return $change_list;
	}
	
	// add change log
	function set_change_log($user_id, $user_ip, $modification){
		global $db;
		$modification = utf8_normalize_nfc(htmlspecialchars($modification));
		$sql_ary = array(
			'activity_id'	=> (int)$this->id,
			'user_id'		=> (int)$user_id,
			'user_ip'		=> (String)$user_ip,
			'modification' 	=> (String)$modification
		);
		
		$sql = "INSERT INTO ". ACTIVITY_CHANGE_TABLE ." ". $db->sql_build_array('INSERT', $sql_ary);
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
	function get_groups_access_list($status = GROUPS_ACCESS_ALL, $force_update = FALSE){
		global $db;												// get connection to the database
		
		$sql_where_ary = array(
			'gra.activity_id'	=> (int)$this->id
		);
		
		switch($status){										// check status
			case GROUPS_ACCESS_ENABLED:										// all the users with access			
			case GROUPS_ACCESS_DISABLED:									// all the users who had access
			case GROUPS_ACCESS_ALL:											// all the users
				break;
			default:											// wrong status
				$this->set_error_log("Function: get_groups_access_list; Wrong status: " . $status);
				global $user;
				trigger_error($user->lang['DC_ACT_INVALID_STATUS']);
				return NULL;									
		}
		
		
		if(!isset($this->groups_access) || $force_update){
			$sql_array = array(
				'SELECT'    => 'gra.group_id, gra.created, gra.disabled access, grs.group_name',

				'FROM'      => array(
					ACTIVITY_GROUP_ACCESS_TABLE  => 'gra'
				),
				'LEFT_JOIN' => array(
					array(
						'FROM' 	=> array(GROUPS_TABLE => 'grs'),   
						'ON'	=> 'grs.group_id = gra.group_id'
					),
				),

				'WHERE'     => $db->sql_build_array('SELECT', $sql_where_ary),
			);

			$sql = $db->sql_build_query('SELECT', $sql_array);

			$result = $db->sql_query($sql, 3600);							// send query
			$this->groups_access = array();
			$return_ary = array();
			while ($row = $db->sql_fetchrow($result))				// walk through all the rows
			{	
				$this->groups_access[$row['group_id']] = array( 
					"group_id"		=> intval($row['group_id']),
					'created' 		=> new DateTime( $row['created']), 
					'access' 		=> ((intval($row['access']) == 0) ? GROUPS_ACCESS_ENABLED : GROUPS_ACCESS_DISABLED),
					'group_name' 	=> $row["group_name"],
				);
				
				if($this->groups_access[ $row["group_id"] ]["access"] == $status || $status == GROUPS_ACCESS_ALL){
					$return_ary[] = $this->groups_access[$row["group_id"]];
				}
				
			}
			$db->sql_freeresult($result);							// remove query
		}else{
			foreach($this->groups_access AS $group_id => $group_data ){
				if($group_data["access"] == $status || $status == GROUPS_ACCESS_ALL){
					$return_ary[$group_id] = $group_data;
				}
			}
		}

		return $return_ary;
	}
	
	/*
	* set the access of a group to this activity
	* @params 
	*$new_group_list array ( 
		array ( 
			"group_id" => (int)a_group_id,
			"access" => GROUPS_ACCESS_ENABLED or GROUPS_ACCESS_DISABLED
		),
		next_group_array, etc.
	)
	* @return boolean
	*/
	function set_groups_access($new_group_list, $full_list = 0){
		global $db, $user, $cache;
		
		//check if the activity is allowed to change
		if(!$this->check_allowed_to_change()){
			// This activity is not allowed to change
			
			$this->set_error_log("Function: set_groups_access; Event is not allowed to change");
			trigger_error($user->lang['DC_ACT_IN_PAST']);
			return null; 					// not allowed to change	
		}
				
		
		if(!is_array($new_group_list)){									// check if group id list is an array
			$this->set_error_log('Function: set_groups_access; new_group_list not an array');	// set administrator log
			trigger_error('new_group_list is not an array');				// send error to the group
		}
		
		if(empty($new_group_list)){									// check if group id list is an array
			$this->set_error_log('Function: set_groups_access; new_group_list is empty');	// set administrator log
			trigger_error('new_group_list is empty');				// send error to the group
		}
		
		if(!is_array($this->groups_access)){
			$this->get_groups_access_list();		// get a list of all the groups with access
		}
		$groups_acces_ary = $this->groups_access;
		$groups_access_change = array();						// the list of all managers who status changes 
		$groups_access_new = array();						// the list of all managers who status changes 
		// check for exisiting managers with a status change
		
		foreach($new_group_list AS $key => $group_data){				// loop through all group id (current_user) from the new_users_list
			$access = $group_data["access"];
			switch($access){
				case GROUPS_ACCESS_ENABLED:
					$group_data["access"] = 0;
				break;
				case GROUPS_ACCESS_DISABLED:
					$group_data["access"] = 1;
				break;
				default:
					$this->set_error_log("Function: set_groups_access; Invalid group (id: ". $group_data["group_id"] .") access: ". $access);
					trigger_error("Invalid group data, see errorlog. Please contact the administrator");
					return NULL; 
			}
			
			if(isset($groups_acces_ary[$group_data["group_id"]])){				// check if group id is in the current manager list
				if( $groups_acces_ary[$group_data["group_id"]]["access"] != $group_data["access"]){ 	// check if current_group_id access is the same as new access
					// the group id exist and has new access
					$groups_access_change[$group_data["group_id"]] =  $group_data["access"];
				}
			}else{
				$groups_access_new[] = array(
						"group_id"		=> $group_data["group_id"],
						"disabled"		=> $group_data["access"],
						"activity_id"	=> (int)$this->id,
				);
			}
			unset($groups_acces_ary[ $group_data["group_id"] ]);				// remove group id from the groups_acces_ary list
		}
		
				
		if(!empty($groups_access_change)){		
			$sql = "UPDATE " . ACTIVITY_GROUP_ACCESS_TABLE . " 
					SET disabled = CASE group_id 
						". $this->sql_update_case($groups_access_change, "group_id") ."
							AND activity_id = '" . $db->sql_escape((int)$this->id) ."'";
							
			$db->sql_query($sql);
				if(!$db->sql_affectedrows()){									// check for changed records
					// no changed records
					$this->set_error_log("Function: set_groups_access; UPDATE access: No new record");
					trigger_error($user->lang['DC_ACT_ERROR_NO_ROWS_ADDED']);
				}
			$this->groups_access = $groups_access_change + $this->groups_access; 
		}
		
		if(!empty($groups_access_new)){
			$db->sql_multi_insert( ACTIVITY_GROUP_ACCESS_TABLE, $groups_access_new);
			if(!$db->sql_affectedrows()){									// check for changed records

					// no changed records
					$this->set_error_log("Function: set_groups_access; INSERT status: No new record");
					trigger_error($user->lang['DC_ACT_ERROR_NO_ROWS_ADDED']);
			}
			$this->groups_access = $groups_access_new + $this->groups_access;
		}
		
		if(!empty($groups_acces_ary) && $full_list){
		
			$sql = "UPDATE " . ACTIVITY_GROUP_ACCESS_TABLE . " AS grs
					SET grs.disabled = 'no'
					WHERE " . $db->sql_in_set("grs.group_id", array_keys($groups_acces_ary)) ."
					AND grs.activity_id = '" . $db->sql_escape((int)$this->id) ."'";
					$db->sql_query($sql);
			if(!$db->sql_affectedrows()){									// check for changed records
					// no changed records
					$this->set_error_log("Function: set_groups_access; UPDATE status (full_list): No new record");
					trigger_error($user->lang['DC_ACT_ERROR_NO_ROWS_ADDED']);
			}
			foreach($groups_acces_ary AS $group_id => $group_data ){
				$this->group_access[$group_id]["access"] = GROUPS_ACCESS_DISABLED;
			}
		}
		// update enrol list
		$cache->destroy('sql',ACTIVITY_GROUP_ACCESS_TABLE, ACTIVITY_TABLE, ACTIVITY_UPCOMMING_ACTIVE_TABLE, ACTIVITY_ALL_ACTIVE_TABLE, ACTIVITY_FURTURE_TABLE); 
		return true;															// return successful
	}
	
	
	// checks is the user is a manager 
		// returns a boolean
	function is_manager($user_id){

		if(!is_array($this->managers_groups)){
			$this->get_groups_manage_list();
		}
		if(is_array($this->managers_groups)){
			// get the groups of the user
			$user_groups = (isset($this->activities_handler)) ? $this->activities_handler->get_user_groups($user_id) : all_user_groups($user_id);
			$default_access =  unserialize (SEE_ALL_ACTIVITIES_GROUP);						// get all default groups
			foreach($user_groups AS $key => $user_group_id){
				if(
					isset($this->managers_groups[$user_group_id]) && 
					$this->managers_groups[$user_group_id]["access"] ==  GROUPS_MANAGES_ENABLED
				){
					return TRUE;
				}
				if(in_array($user_group_id, $default_access)){
					return TRUE;
				}
			}
		}
		return FALSE;
	}
	
	// check if the users has acces to this activity
	function user_access($user_id){
		if($this->active == TRUE){
			if(!is_array($this->groups_access)){
				$this->get_groups_access_list();
			}
			if(is_array($this->groups_access)){
				// get the groups of the user
				$user_groups = (isset($this->activities_handler)) ? $this->activities_handler->get_user_groups($user_id) : all_user_groups($user_id);
				foreach($user_groups AS $key => $user_group_id){
					if(
						isset($this->groups_access[$user_group_id]) && 
						$this->groups_access[$user_group_id]["access"] ==  GROUPS_ACCESS_ENABLED
					){
						return TRUE;
					}
				}
			}
		}
		return FALSE;
	}
	
	// add error
	function set_error_log($error){
		global $db, $user;
		
		//check if current activity not exists
		if($this->id == null){
			return FALSE;
		}
		
		$error = utf8_normalize_nfc(htmlspecialchars($error));
		$uid = $bitfield = $options = ''; // will be modified by generate_text_for_storage
		$enable_bbcode = $enable_magic_url = $enable_smilies = FALSE;
		generate_text_for_storage($error, $uid, $bitfield, $options, $enable_bbcode, $enable_magic_url, $enable_smilies);
		$sql_ary = array(
			'activity_id'	=> (int)$this->id,
			'user_id'		=> (int)$user->data['user_id'],
			'user_ip'		=> (String)$_SERVER['REMOTE_ADDR'],
			'error' 		=> (String)$error
		);
		
		$sql = "INSERT INTO ". ACTIVITY_ERROR_LOG_TABLE ." ". $db->sql_build_array('INSERT', $sql_ary);
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
		
		$sql_where_ary = array(
			'err.activity_id'      => (int)$this->id
		);

		$sql_array = array(
			'SELECT'    => 'err.user_id, err.user_ip, err.datetime, err.error',

			'FROM'      => array(
				ACTIVITY_ERROR_LOG_TABLE  => 'err'
			),

			'WHERE'     => $db->sql_build_array('SELECT', $sql_where_ary),
			'ORDER_BY'  => 'err.datetime ASC'
		);

		$sql = $db->sql_build_query('SELECT', $sql_array);

		$result = $db->sql_query($sql);
		while ($row = $db->sql_fetchrow($result))				// walk through all the rows
		{
			$error_list[]= array ( 
				"user_id" 	=> $row['user_id'], 
				"user_ip" 	=> $row['user_ip'], 
				"datetime" 	=> $row['datetime'],
				"error" 	=> $row['error']
			);
		}
		return $error_list;
	}
	
	// save this activity
		// returns true if saved or else false
	function save(){
		// check if this activity is in de db
		global $user, $db, $cache;
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
			'enroll'			=> (bool)$this->enrol,
			'enroll_datetime'	=> (String)$this->enrol_datetime->format('Y-m-d H:i:s'),			// format datetime class to the datetime format of the database
			'unsubscribe_max'	=> (String)$this->unsubscribe_max_datetime->format('Y-m-d H:i:s'), 	// format datetime class to the datetime format of the database
			'enroll_max'		=> (int)$this->enrol_max,
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
			'commission'		=> (int) $this->commission,
		);
		
		$sql_where_ary = array(
			'act.id' =>	(int)$this->id
		);
		
		if($this->id == null){		// check if this is a new activity. If this is a new activity the id is set by the database (AUTO_INCREMENT)
			$now = new DateTime("now"); 			// get time for 'datetime_created'
			$sql_array['user_id']					= (int)$user->data['user_id'];
			$sql_array['user_ip']					= (String)$user->ip;
			$sql_array['datetime_created']			= (String)$now->format('Y-m-d H:i:s'); // format datetime class to the datetime format of the database

			$sql = "INSERT INTO ". ACTIVITY_TABLE ." ". $db->sql_build_array('INSERT', $sql_array);	// create insert query for a new activity
		}else{
			$sql = "UPDATE ". ACTIVITY_TABLE ." AS act 
					SET ". $db->sql_build_array('UPDATE', $sql_array) . " 
					WHERE ". $db->sql_build_array('SELECT', $sql_where_ary) ; // create qeury to update the activity in the database
			// Send change log to the database
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
		$cache->destroy('sql', ACTIVITY_TABLE, ACTIVITY_UPCOMMING_ACTIVE_TABLE, ACTIVITY_ALL_ACTIVE_TABLE, ACTIVITY_FURTURE_TABLE);
		return true;
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
			
		//search for unset variables. If found unset variables save in $invalided_varibles_found
		$invalided_varibles_found .= (isset($this->name)) ? null :"name,";		
		$invalided_varibles_found .= (isset($this->description)) ? null : "description,";			 
		$invalided_varibles_found .= (isset($this->start_datetime)) ? null : "start_datetime,";		
		$invalided_varibles_found .= (isset($this->end_datetime)) ? null : "end_datetime,";			
		$invalided_varibles_found .= (isset($this->enrol)) ? null : "enrol,";				
		$invalided_varibles_found .= (isset($this->unsubscribe_max_datetime)) ? null : "unsubscribe_max_datetime,";
		$invalided_varibles_found .= (isset($this->location)) ? null : "location,";				
		$invalided_varibles_found .= (isset($this->pay_option)) ? null : "pay_option,";			
		$invalided_varibles_found .= (isset($this->commission)) ? null : "commission,";			


		//if this activity exists
		if($this->id != null){
			$invalided_varibles_found .= (isset($this->user_id)) ? null : "user_id,";				
			$invalided_varibles_found .= (isset($this->user_ip)) ? null : "user_ip,";
			$invalided_varibles_found .= (isset($this->enrol_datetime)) ? null : "enrol_datetime,";
			$invalided_varibles_found .= (isset($this->enrol_max)) ? null : "enrol_max,";
			$invalided_varibles_found .= (isset($this->price)) ? null : "price,";
			$invalided_varibles_found .= (isset($this->price_member)) ? null : "price_member,";
			$invalided_varibles_found .= (isset($this->active)) ? null : "active,";
			$invalided_varibles_found .= (isset($this->category)) ? null : "category,";
			$invalided_varibles_found .= (isset($this->datetime_created)) ? null : "datetime_created,";
			$invalided_varibles_found .= (isset($this->datetime_updated)) ? null : "datetime_updated,";
		}
		
		// check if there are unset variable's
		if($invalided_varibles_found != null){
			// errors found
			$this->set_error_log("Function: is_activity_valided;Values not valid: " . $invalided_varibles_found);
			return false;
		}
		return true;
		
	}
	
	function pay($users_array, $amount){
		global $user, $db;
		
		if(!is_array(!users_array)){
			$this->set_error_log('Function: pay; users_array not an array');
			trigger_error('Users array is not an array');		
			return NULL;
		}
		
		if(gettype($amount) != "double"){
			$this->set_error_log('Function: pay; Invalid double: amount: '. $amount);
			trigger_error('Amount is not valid, please contact the administrator');	
			return NULL;
		}
		
		foreach($users_array AS $key => $user_id){
			if( $this->get_user_status($user_id) == NULL)
				return NULL;
				
			$sql_set_ary[$user_id] = (double) $amount;
		}	
			
		$sql = "UPDATE ". ACTIVITY_ENROL_TABLE ." AS act
				SET  price_payed = CASE user_id 
					".$this->sql_update_case($sql_set_ary, "user_id") ." 
				AND activity_id = '" . $db->sql_escape((int)$this->id) ."'";
		$db->sql_query($sql);
		if($result = $db->sql_affectedrows() > 0) {
			return TRUE;
		}else{
			trigger_error($user->lang['DC_ACT_ERROR_NO_ROWS_ADDED']);
			return NULL;
		}	
		
	}
	
	// user get read

	function get_read($user_id){
		global $db;							// get database connection
		if(gettype($user_id) != "integer"){
			$this->set_error_log("Function: get_read; Invalid user_id (id: ".$user_id .")");
			trigger_error("Invalid user id, see errorlog. Please contact the administrator");
			return NULL;
		}
		
		if(isset($this->readed_users[$user_id])){
			if($this->readed_users[$user_id] == TRUE ){
				return TRUE;
			}else{
				return FALSE;
			}
		}


		$sql_where_ary = array(
			'rd.activity_id'      => (int)$this->id
		);
		
		// setup sql query with default settings
		$sql_array = array(
			'SELECT'    => 'rd.user_id user_id',

			'FROM'      => array(
				ACTIVITY_READED_TABLE  => 'rd',
			),
			
			'WHERE'   => $db->sql_build_array('SELECT', $sql_where_ary)
		);
		
		$sql = $db->sql_build_query('SELECT', $sql_array);
		$sql_result = $db->sql_query($sql);							// send query
		while ($row = $db->sql_fetchrow($sql_result))				// loop all the rows
		{
			
			$this->readed_users[intval($row["user_id"])] = TRUE;
		}
		
		$db->sql_freeresult($sql_result);							// remove query
		
		if(isset($this->readed_users[$user_id])){
			if($this->readed_users[$user_id] == TRUE ){
				return TRUE;
			}
		}
		return false;	
	}
	
	// user set read
	function set_read($user_id){
		global $db, $cache;												// get database connection
		if(gettype($user_id) != "integer"){
			$this->set_error_log("Function: set_read; Invalid user_id (id: ".$user_id .")");
			trigger_error("Invalid user id, see errorlog. Please contact the administrator");
			return NULL;
		}
		if($this->readed_users[$user_id] ){
			$this->set_error_log("Function: set_read; user is already set as read  (id: ".$user_id .")");
			trigger_error("User already read this event, see errorlog. Please contact the administrator");
			return NULL;
		}
		$this->readed_users[$user_id] = TRUE;
		
		$sql_where_ary = array(
			"u.user_id"		=>(int) $user_id,
		);		
		
		$sql_array = array(
			'SELECT'    => 'COUNT(*) as user_count',

			'FROM'      => array(
				USERS_TABLE => 'u',
			),

			'WHERE'     =>  $db->sql_build_array('SELECT', $sql_where_ary)
		);
		
		$sql = $db->sql_build_query('SELECT', $sql_array);

		// Run the built query statement
		$result = $db->sql_query($sql);
		$output = $db->sql_fetchrow($result);
		
		if( $output['user_count'] != 1  ){							// if not found or there are more id's
			$this->set_error_log("Function: set_read; User id not found the user table (id: ".$user_id .")");
			trigger_error("User not found, see errorlog. Please contact the administrator");
			return NULL;
		}
		$db->sql_freeresult($result);							// remove query
		$sql = 'INSERT INTO `dc_activity_read`(`activity_id`, `user_id`) VALUES ('. $this->id . ','.$user_id.')';	// get if user readed 
		$result = $db->sql_query($sql);							// send query
		$db->sql_freeresult($result);							// remove query
		$cache->destroy('sql', ACTIVITY_TABLE, ACTIVITY_UPCOMMING_ACTIVE_TABLE, ACTIVITY_ALL_ACTIVE_TABLE, ACTIVITY_FURTURE_TABLE, ACTIVITY_READED_TABLE);
		return true;
	}
	
	public function is_max_enrolled($add_users = 0){
		if(gettype($add_users) != "integer"){
			$this->set_error_log("Function: is_max_enrolled; param add_users is not a integer (add_users: ".$add_users .")");
			trigger_error("is_max_enrolled: param add_users is not a integer");
			return null;
			
		}
		if( ($this->amount_enrolled_users + $add_users ) > $this->enrol_max && $this->enrol_max > 0){
			return TRUE;
		}
		return FALSE;
	}
	
	
	// Getters and setters
    public function getId(){
		return $this->id;
    }

    public function getName(){
		$name = htmlspecialchars_decode($this->name);
		$uid = $bitfield = $options = ''; // will be modified by generate_text_for_storage
		$name = generate_text_for_edit($name,$uid , $bitfield, $options);
		return  $name['text'];
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
		$name = utf8_normalize_nfc($name);
		$uid = $bitfield = $options = ''; // will be modified by generate_text_for_storage
		$enable_bbcode = $enable_magic_url = $enable_smilies = false;
		generate_text_for_storage($name, $uid, $bitfield, $options, $enable_bbcode, $enable_magic_url, $enable_smilies);
		
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

		$options = ''; // will be modified by generate_text_for_storage
		
		$this->enable_bbcode = $this->enable_magic_url = $this->enable_smilies = true;
		generate_text_for_storage($description, $this->bbcode_uid, $this->bbcode_bitfield, $options, $this->enable_bbcode, $this->enable_magic_url, $this->enable_smilies);
		
		if($this->description != $description)
			$this->change_log["description"] = $this->description . "->". $description . ";";
		$this->description = $description;	
    }
	

	public function getDescription($remove_images = FALSE){
		$description = $this->description;
		
		if($remove_images){ 
			$description = remove_images_from_text($description, $this->getUID()); // this also removes images
		}

		$options = 	(($this->enable_bbcode) ? OPTION_FLAG_BBCODE : 0) +
					(($this->enable_smilies) ? OPTION_FLAG_SMILIES : 0) + 
					(($this->enable_magic_url) ? OPTION_FLAG_LINKS : 0);
	

		$description = generate_text_for_display($description, $this->bbcode_uid, $this->bbcode_bitfield, $options);
		return $description;
    }
	
	public function getDescription_edit(){
		$description = $this->description;
		$options = 	(($this->enable_bbcode) ? OPTION_FLAG_BBCODE : 0) +
					(($this->enable_smilies) ? OPTION_FLAG_SMILIES : 0) + 
					(($this->enable_magic_url) ? OPTION_FLAG_LINKS : 0);
	
		$description = generate_text_for_edit($description, $this->bbcode_uid, $this->bbcode_bitfield, $options);

		return $description["text"];
    }
	/*	getDescription_preview
	* returns a small part of the description defined the bbcode [preview]{text}[preview].  
	* @params
	* $max_senctences int The max amount of return sentences, if 0 show all preview, if no given preview and max_sentences = 0: return full description, default is 5
	* $new_lines boolean If true every sentence is on a new line, default is false
	* $bbcode boolean If false strip all bbcode(Also strips smilies), default is true
	* $smilies boolean If false strip all smilies (also strips if $bbcode is false), default is true
	* $urls boolean If false strip all urls, default is true
	* $images boolean If false strips all images, default is false
	*/
	public function getDescription_preview($max_senctences = 5 , $new_lines = false, $bbcode = true, $smilies = true, $urls = true, $images = false){
		
		return get_preview($this->description, $this->bbcode_uid, $this->bbcode_bitfield, $max_senctences, $new_lines, $bbcode, $smilies, $urls, $images);
    }

    public function getDescription_raw($max_senctences = 5 , $new_lines = false, $bbcode = true, $smilies = true, $urls = true, $images = false){
		
		return $this->description;
    }

    public function getStartDatetime(){
            return $this->start_datetime;
    }

    public function setStartDatetime($startDatetime){
		//check if the activity is allowed to change, parameter 1 is set so it is not allowed the edit StartDatetime if an activity is "current" (@see  check_allowed_to_change()  for current)
		if(!$this->check_allowed_to_change(false)){
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

    public function getEnrol(){
		return $this->enrol;
    }

    public function setEnrol($enrol){
		
		//check if the activity is allowed to change
		if(!$this->check_allowed_to_change()){
			// This activity is not allowed to change
			global $user;
			$this->set_error_log("Function: setEnrol; Event is not allowed to change");
			trigger_error($user->lang['DC_ACT_IN_PAST']);
			return null; 					// not allowed to change	
		}
		
		if(gettype($enrol) != "boolean")
			return null;
		if($this->enrol != $enrol)
			$this->change_log["enrol"] = $this->enrol . "->". $enrol . ";";
		$this->enrol = $enrol;
    }

	private function setAmountEnrolledUsers($amount){
	
		if(gettype($amount) != "integer")
			return null;
		if($this->amount_enrolled_users != $amount)
			$this->change_log["amount_enrolled_users"] = $this->amount_enrolled_users . "->". $amount . ";";
			
		$this->amount_enrolled_users = (int)$amount;
	}
	
	public function getAmountEnrolledUser(){
		return  (int)$this->amount_enrolled_users;
	}

	public function getLastEnrollListCount(){
		return  (int)$this->last_enroll_list_count;
	}

	
	public function setEnrolDateTime($enrolDateTime){
	
		//check if the activity is allowed to change
		if(!$this->check_allowed_to_change(false)){
			// This activity is not allowed to change
			global $user;
			$this->set_error_log("Function: setEnrolldateTime; Event is not allowed to change");
			trigger_error($user->lang['DC_ACT_IN_PAST']);
			return null; 					// not allowed to change	
		}
		
		if(!($enrolDateTime instanceof DateTime )) 
			return null;
		if($enrolDateTime < new DateTime("now"))
			return null;
		if($enrolDateTime > $this->start_datetime)
			return null;
		if(($this->enrol_datetime != $enrolDateTime) && ($this->id != 0))
			$this->change_log["enrolDateTime"] = $this->enrol_datetime->format('Y-m-d H:i:s') . "->". $enrolDateTime->format('Y-m-d H:i:s') . ";";
        $this->enrol_datetime = $enrolDateTime;
    }
	   
	public function getUnsubscribeMaxDatetime(){
		return $this->unsubscribe_max_datetime;
    }
	
    public function setUnsubscribeMaxDatetime($unsubscribe_max_datetime){
	
		//check if the activity is allowed to change
		if(!$this->check_allowed_to_change(false)){
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
		if($unsubscribe_max_datetime < $this->enrol_datetime)
			return null;
		if(($this->unsubscribe_max_datetime != $unsubscribe_max_datetime) && ($this->id != 0))
			$this->change_log["unsubscribe_max_datetime"] = $this->unsubscribe_max_datetime->format('Y-m-d H:i:s') . "->". $unsubscribe_max_datetime->format('Y-m-d H:i:s') . ";";
        $this->unsubscribe_max_datetime = $unsubscribe_max_datetime;
    }
	
	public function getEnrolDateTime(){
		return $this->enrol_datetime;
    }

    public function getEnrolMax(){
		return $this->enrol_max;
    }

    public function setEnrolMax($enrolMax){
		//check if the activity is allowed to change
		if(!$this->check_allowed_to_change()){
			// This activity is not allowed to change
			global $user;
			$this->set_error_log("Function: setEnrolMax; Event is not allowed to change");
			trigger_error($user->lang['DC_ACT_IN_PAST']);
			return null; 					// not allowed to change	
		}
		if(gettype($enrolMax) != "integer")
			return null;
		if($enrolMax < 0)
			return null;
		if($this->enrol_max != $enrolMax)
			$this->change_log["enrol_max"] = $this->enrol_max . "->". $enrolMax . ";";
		$this->enrol_max = $enrolMax;
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
	
		$location = generate_text_for_display( htmlspecialchars_decode($this->location) , '', '', 0);
		
		return $location;
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
		
		$location = utf8_normalize_nfc($location);
		$uid = 	$bitfield = "";
		$options = ''; // no bbcode, smilies or urls
		generate_text_for_storage($location, $uid, $bitfield, $options);
	
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
		$sql ="SELECT COUNT(*) count FROM `dc_groups` WHERE group_id ='" .  $db->sql_escape($commission) . "'";  // check if the group id exist
		$result = $db->sql_query($sql);							// send query
		$row = $db->sql_fetchrow($result);
		if( $row["count"] != 1 )								// if not found or there are more id's
			return null;
		$db->sql_freeresult($result);							// remove query
		if($this->commission != $commission)
			$this->change_log["commission"] = $this->commission . "->". $commission . ";";
        $this->commission = $commission;
		
    }
	
	function set_activities_handler($activities_handler){
		if(!($activities_handler instanceof Activities_handler || $activities_handler == NULL)){
			return FALSE;
		}
		$this->activities_handler = $activities_handler;
		return TRUE;
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
