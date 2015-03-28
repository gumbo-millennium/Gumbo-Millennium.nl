<?php

	/**
	 * Description of ical.php
	 *
	/**
	*
	* @package phpBB3
	* @version 1.0
	* @athor: Gerco Versloot
	* @date: 4 - 11 - 2012
	* @license http://opensource.org/licenses/gpl-license.php GNU Public License
	* @Gumbo millennium
	*/
	
	define('IN_PHPBB', true);
	$phpbb_root_path = (defined('PHPBB_ROOT_PATH')) ? PHPBB_ROOT_PATH : './../';
	$phpEx = substr(strrchr(__FILE__, '.'), 1);
	include($phpbb_root_path . 'common.' . $phpEx);
	include_once($phpbb_root_path . 'includes/functions_user.' . $phpEx);
	include($phpbb_root_path . 'includes/functions_display.' . $phpEx);
	include_once ($phpbb_root_path . 'dc/dc_activities_handler.' . $phpEx);
	include_once ($phpbb_root_path . 'dc/dc_activity_class.' . $phpEx);
	include_once($phpbb_root_path . 'includes/functions_messenger.' . $phpEx);
	include_once($phpbb_root_path . 'includes/functions_content.' . $phpEx);
	require_once( "iCalcreator.class.php" );
	
	// Start session management
	$user->session_begin();
	$auth->acl($user->data);
	$user->setup('mods/dc_activity');
	
	$user_id = intval($_GET['id']);
	$activity_controller = new activities_handler();
	$username = array();
	$user_id_array = array($user_id);
	user_get_id_name($user_id_array,$username);
	$username = $username[$user_id];
if(($full_list = $activity_controller->get_user_activities( $user_id, USER_ACCESS, FUTURE_ACTIVE, NULL, START_DATETIME)) != null){
	$tz     = "Europe/Amsterdam";                   // define time zone
	$config = array( "unique_id" => "gumbo-millennium.nl" // set a (site) unique id
				   , "TZID"      => $tz,
	"filename" => "Gumbo_Millennium_persoonlijk_$username.ics");          // opt. "calendar" timezone
	$v      = new vcalendar( $config );
	  // create a new calendar instance

	$v->setProperty( "method", "PUBLISH" );
	  // required of some calendar software
	$v->setProperty( "x-wr-calname", "Gumbo Millennium agenda van $username" );
	  // required of some calendar software
	$v->setProperty( "X-WR-CALDESC", "Deze agenda is een overzicht van alle activiteiten van ". $username );
	  // required of some calendar software
	$v->setProperty( "X-WR-TIMEZONE", $tz );
	  // required of some calendar software

	$xprops = array( "X-LIC-LOCATION" => $tz );
	  // required of some calendar software
	iCalUtilityFunctions::createTimezone( $v, $tz, $xprops );
	  // create timezone component(-s) opt. 1
	  // based on present date
	$group_name_ary = array();
	foreach($full_list AS $index => $activity){	
		$group_name_ary[$activity->getCommission()] = get_group_name($activity->getCommission());
		$vevent = & $v->newComponent( "vevent" );
		  // create an event calendar component
		$start = array(
						"year"	=> $activity->getStartDatetime()->format("Y"),
						"month"	=> $activity->getStartDatetime()->format("m"),
						"day"	=> $activity->getStartDatetime()->format("d"),
						"hour"	=> $activity->getStartDatetime()->format("H"),
						"min"	=> $activity->getStartDatetime()->format("i"), 
						"sec"	=> $activity->getStartDatetime()->format("s")
					);
		$vevent->setProperty( "dtstart", $start );
		$end   = array(
						"year"	=> $activity->getEndDatetime()->format("Y"),
						"month"	=> $activity->getEndDatetime()->format("m"),
						"day"	=> $activity->getEndDatetime()->format("d"),
						"hour"	=> $activity->getEndDatetime()->format("H"),
						"min"	=> $activity->getEndDatetime()->format("i"), 
						"sec"	=> $activity->getEndDatetime()->format("s")
					);
		$vevent->setProperty( "dtend",   $end );
		$vevent->setProperty( "LOCATION", $activity->getLocation());
		  // property name - case independent
		$vevent->setProperty( "summary", $activity->getName() );
		$vevent->setProperty( "description", $activity->getDescription_preview(6, false, false, false)); // get preview max 10 sentenaces, no bbcode and no smilies
		$vevent->setProperty( "organizer" , $group_name_ary[$activity->getCommission()] ); 
		$vevent->setProperty( "attendee", $group_name_ary[$activity->getCommission()] );
		$last	= array(
						"year"	=> $activity->getDatetimeUpdated()->format("Y"),
						"month"	=> $activity->getDatetimeUpdated()->format("m"),
						"day"	=> $activity->getDatetimeUpdated()->format("d"),
						"hour"	=> $activity->getDatetimeUpdated()->format("H"),
						"min"	=> $activity->getDatetimeUpdated()->format("i"), 
						"sec"	=> $activity->getDatetimeUpdated()->format("s")
					);
		$vevent->setProperty( "last-modified", $last );
	}


	  // all calendar components are described in rfc2445
	  // a complete iCalcreator function list (ex. setProperty) in iCalcreator manual

	iCalUtilityFunctions::createTimezone( $v, $tz, $xprops);
	  // create timezone component(-s) opt. 2
	  // based on all start dates in events (i.e. dtstart)

	$v->setConfig( $config );
	  
	$v->returnCalendar();
}

?>