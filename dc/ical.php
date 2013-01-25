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
	include($phpbb_root_path . 'includes/functions_user.' . $phpEx);
	include($phpbb_root_path . 'includes/functions_display.' . $phpEx);
	include ($phpbb_root_path . 'dc/dc_activity_user_class.' . $phpEx);
	include ($phpbb_root_path . 'dc/dc_activity_class.' . $phpEx);
	include_once($phpbb_root_path . 'includes/functions_messenger.' . $phpEx);
	include_once($phpbb_root_path . 'includes/functions_content.' . $phpEx);

	// Start session management
	$user->session_begin();
	$auth->acl($user->data);
	$user->setup('mods/dc_activity');
	
	$user_id = $_GET['id'];
	$Filename = "Gumbo_Activiteit.ics"; //naam activiteit http://www.phpbuilder.com/columns/chow20021007.php
	header("Content-Type: text/x-vCalendar");
	header("Content-Disposition: inline; filename=$Filename");
?>
BEGIN:VCALENDAR
PRODID:-//SV Gumbo Millennium//Gumbo Millennium Events//NL
VERSION:2.0
CALSCALE:GREGORIAN
METHOD:PUBLISH
X-WR-CALNAME:Gumbo Millennium Activiteiten
X-WR-TIMEZONE:Europe/Amsterdam
BEGIN:VTIMEZONE
TZID:Europe/Berlin
X-LIC-LOCATION:Europe/Berlin
BEGIN:DAYLIGHT
TZOFFSETFROM:+0100
TZOFFSETTO:+0200
TZNAME:CEST
DTSTART:19700329T020000
RRULE:FREQ=YEARLY;BYMONTH=3;BYDAY=-1SU
END:DAYLIGHT
BEGIN:STANDARD
TZOFFSETFROM:+0200
TZOFFSETTO:+0100
TZNAME:CET
DTSTART:19701025T030000
RRULE:FREQ=YEARLY;BYMONTH=10;BYDAY=-1SU
END:STANDARD
END:VTIMEZONE
BEGIN:VTIMEZONE
TZID:Europe/Amsterdam
X-LIC-LOCATION:Europe/Amsterdam
BEGIN:DAYLIGHT
TZOFFSETFROM:+0100
TZOFFSETTO:+0200
TZNAME:CEST
DTSTART:19700329T020000
RRULE:FREQ=YEARLY;BYMONTH=3;BYDAY=-1SU
END:DAYLIGHT
BEGIN:STANDARD
TZOFFSETFROM:+0200
TZOFFSETTO:+0100
TZNAME:CET
DTSTART:19701025T030000
RRULE:FREQ=YEARLY;BYMONTH=10;BYDAY=-1SU
END:STANDARD
END:VTIMEZONE
BEGIN:VTIMEZONE
TZID:Europe/Rome
X-LIC-LOCATION:Europe/Rome
BEGIN:DAYLIGHT
TZOFFSETFROM:+0100
TZOFFSETTO:+0200
TZNAME:CEST
DTSTART:19700329T020000
RRULE:FREQ=YEARLY;BYMONTH=3;BYDAY=-1SU
END:DAYLIGHT
BEGIN:STANDARD
TZOFFSETFROM:+0200
TZOFFSETTO:+0100
TZNAME:CET
DTSTART:19701025T030000
RRULE:FREQ=YEARLY;BYMONTH=10;BYDAY=-1SU
END:STANDARD
END:VTIMEZONE
<?php 
// Build main objecs
$activity_controller = new activity_user();
if(($full_list = $activity_controller->get_comming_active_activities($user_id)) != null){
	foreach($full_list AS $index => $activity){	
echo('BEGIN:VEVENT
DTSTART:'.$activity->getStartDatetime()->format("Ymd\THis\Z").'
DTEND:'.$activity->getEndDatetime()->format("Ymd\THis\Z").'
DTSTAMP:'. date("Ymd\THis\Z").'
UID:'.$activity->getID().'.'.$user_id.'@gumbomillennium.nl
CREATED:'.$activity->getDatetimeCreated()->format("Ymd\THis\Z").'
DESCRIPTION:'. strip_bbcode($activity->getDescription(), $activity->getUID()).'
LAST-MODIFIED:'.$activity->getDatetimeUpdated()->format("Ymd\THis\Z").'
LOCATION: ' .$activity->getLocation(). '
SEQUENCE:1
SUMMARY:' .$activity->getName(). ' - Gumbo Millennium
TRANSP:OPAQUE
END:VEVENT
');

	}
}
?>
END:VCALENDAR