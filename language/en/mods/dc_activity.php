<?php
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
*/
if (!defined('IN_PHPBB'))
{
    exit;
}

if (empty($lang) || !is_array($lang))
{
    $lang = array();
}

// DEVELOPERS PLEASE NOTE
//
// All language files should use UTF-8 as their encoding and the files must not contain a BOM.
//
// Placeholders can now contain order information, e.g. instead of
// 'Page %s of %s' you can (and should) write 'Page %1$s of %2$s', this allows
// translators to re-order the output of data while ensuring it remains correct
//
// You do not need this where single placeholders are used, e.g. 'Message %d' is fine
// equally where a string contains only two placeholders which are used to wrap text
// in a url you again do not need to specify an order e.g., 'Click %sHERE%s' is fine


// Adding the trancelation
// user side
$lang = array_merge($lang, array(
    'MAYBE'    							=> 'Maybe',
    'AMOUNT'    						=> 'Amount',
    'PAID'    							=> 'Paid',
    'SAVED'    							=> 'Saved',
    'TO'    							=> 'To',
    'DC_ACT_ALREADY_STATUS'    			=> 'The user already has this status.',
    'DC_ACT_INVALID_STATUS'    			=> 'Invalid user status',
    'DC_ACT_IN_PAST'    				=> 'This event is in the past. Something in the past can not change.',
    'DC_ACT_NOT_ENROLLED'    			=> 'User is not subscripted',
    'DC_ACT_ERROR_NO_ROWS_ADDED'    	=> 'No new rows added',
    'DC_ACT_ERROR_TO_MANY_ROWS_ADDED'   => 'No new rows added',
    'DC_ACT_NO_ACT'   					=> 'Event not fount',
    'DC_ACT_ERROR_LOAD'   				=> 'Error while loading this event',
    'DC_ACT'   							=> 'Event',
    'DC_ACT_LANG_TILL'   				=> 'Till',
    'DC_ACT_LANG_ENROLLS'   			=> 'Subscribe list',
    'DC_ACT_LANG_SUBSCRIBE'   			=> 'Subscription',
    'DC_ACT_LANG_DATE'   				=> 'Date',
    'DC_ACT_LANG_PRICE'   				=> 'Price',
    'DC_ACT_LANG_MEMBER'   				=> 'Member',
    'DC_ACT_LANG_LOCATION'  			=> 'Location',
    'DC_ACT_SAVE_COMMENT'  				=> 'Save comment',
    'DC_ACT_ENROLL_NOBODY'  			=> 'Nobody subscripted for this event',
    'DC_ACT_ENROLL_FORCE'  				=> 'Subscription required',
    'DC_ACT_ENROLL_TIME'  				=> 'Subscription open till',
    'DC_ACT_ENROLL_AMOUNT'  			=> 'Users who subscripted',
    'DC_ACT_ENROLL_CLOSED'  			=> 'Subscriptions closed',
    'DC_ACT_UNSUBSCRIBE'  				=> 'The time you are allowed to unsubscribe',
    'DC_ACT_LANG_ICAL'  				=> 'Download your personal iCal',
    'DC_ACT_LANG_ICAL_EXPLAIN'  		=> 'This is your personal iCal feed. Build from all the commission where you are a member.',
));

// management side
$lang = array_merge($lang, array(
    'OPTIONAL_SETTINGS'  				=> 'Optional settings',
    'ACP_ACTIVITY_NEW'  				=> 'Add new event',
    'ACP_ACTIVITY_NEW_EXPLAIN'  		=> 'Add a new event to the system, and some more text',
    'ACP_DC_ACT_DESCRIPTION'  			=> 'Description',
    'ACP_DC_ACT_START_DATE'  			=> 'Start date',
    'ACP_DC_ACT_START_DATE_EXPLAIN'		=> 'Enter the start date',
	'ACP_DC_ACT_START_TIME'  			=> 'Start time',
    'ACP_DC_ACT_START_TIME_EXPLAIN'		=> 'Enter the start time',
	'ACP_DC_ACT_END_DATE'  				=> 'End date',
    'ACP_DC_ACT_END_DATE_EXPLAIN'		=> 'Enter the end date',
	'ACP_DC_ACT_END_TIME'  				=> 'End time',
    'ACP_DC_ACT_END_TIME_EXPLAIN'		=> 'Enter the end time',
    'ACP_DC_ACT_NAME'  					=> 'Name of the event',
    'ACP_DC_ACT_NAME_EXPLAIN'  			=> 'Give the new event a name',
    'ACP_DC_ACT_ENROL'  				=> 'Subscribe',
    'ACP_DC_ACT_ENROL_EXPLAIN'  		=> 'Force the users to subscribe for this event',
    'ACP_DC_ACT_LOCATION'  				=> 'Location',
    'ACP_DC_ACT_LOCATION_EXPLAIN'  		=> 'Enter the location from where the event starts',
    'ACP_DC_ACT_PAY_OPTION'  			=> 'Payment',
    'ACP_DC_ACT_COMMISSION'  			=> 'Commission',
    'ACP_DC_ACT_COMMISSION_EXPLAIN'  	=> 'What commission is making this event',
    'ACP_DC_ACT_ENROLL_DATE'  			=> 'Max subscribe date',
    'ACP_DC_ACT_ENROLL_DATE_EXPLAIN'  	=> 'The date users can subscribe. <br>If left empty the max subscribe date will equal with the start date',
	'ACP_DC_ACT_ENROLL_TIME'  			=> 'Max subscribe time',
    'ACP_DC_ACT_ENROLL_TIME_EXPLAIN'  	=> 'The time users can subscribe on de max subscribe day. <br>If left empty the max subscribe time will equal with the start time',
    'ACP_DC_ACT_ENROLL_MAX'  			=> 'Max users',
    'ACP_DC_ACT_ENROLL_MAX_EXPLAIN'  	=> 'The max amount of user that can subscribe to this event <br>0 is unlimited',
    'ACP_DC_ACT_PRICE'  				=> 'Price',
    'ACP_DC_ACT_PRICE_EXPLAIN'  		=> 'The price non Gumbo Millennium members have to pay',
	'ACP_DC_ACT_PRICE_MEMBER'  			=> 'Price for Gumbo Millennium members',
    'ACP_DC_ACT_PRICE_MEMBER_EXPLAIN'  	=> 'The price Gumbo Millennium members have to pay',
    'ACP_DC_ACT_ACCES'  				=> 'Acces settings',
    'ACP_DC_ACT_ADD_GROUP_MANAGER'  			=> 'Add group manager(s)',
    'ACP_DC_ACT_ADD_GROUP_MANAGER_EXPLAIN'  	=> 'Add group(s) who get the acces to this event and change this event',
	'ACP_DC_ACT_ADD_GROUP'  			=> 'Add view groups(s)',
    'ACP_DC_ACT_ADD_GROUP_EXPLAIN'  	=> 'Add group(s) who get the acces to view this event',
    'NOT_EMPTY'  						=> 'is not allowed to be empty',
    'NOT_PREG'  						=> 'has forbidden characters',
    'WRONG_FORMAT'  					=> 'has the wrong format',
    'CASH'  							=> 'Cash',
    'IDEAL'  							=> 'iDeal (not supported yet)',
    'DEACTIVE'  						=> 'Deactive',
    'STATE'  							=> 'State',
    'CANT_LATER'  						=> 'can\'t be later than',
    'CANT_PAST'  						=> 'can\'t be in the past',
    'NOT_FOUND'  						=> 'not found',
    'UNVALID'  							=> 'is unvalid',
    'ACP_DC_ACT_OVERVIEW'  				=> 'Events overview',
    'ACP_DC_ACT_OVERVIEW_EXPLAIN'  		=> 'All future events',
    'ACP_DC_ACT_EDIT'  					=> 'Edit this event',
	'ACP_DC_ACT_EDIT_EXPLAIN'  			=> 'If you like you can change this event',
	'ACP_DC_ACT_RECYCLE'  				=> 'Recycle this event',
	'ACP_DC_ACT_RECYCLE_EXPLAIN'  		=> 'Making a new event from a old event without the old data like start date and time',
	'ACP_DC_ACT_PAST'  					=> 'All events that past',
	'ACP_DC_ACT_PAST_EXPLAIN'  			=> 'The list of all events that are past. You can recycle or preview the event. <br>Use the input fields to find all other events.',
	'ADVANCED_SEARCH'  					=> 'Advanced search',
	'ACP_DC_ACT_END_DATE_UNSUBSCRIBE'  			=> 'End date to unsubscribe',
	'ACP_DC_ACT_END_DATE_UNSUBSCRIBE_EXPLAIN'  	=> 'The date the user has to unsubscribe form this event. <br>If left empty the max subscribe date will equal with the start date',
	'ACP_DC_ACT_END_TIME_UNSUBSCRIBE'  			=> 'End time to unsubscribe',
	'ACP_DC_ACT_END_TIME_UNSUBSCRIBE_EXPLAIN'  	=> 'The time the user has to unsubscribe from this event. <br>If left empty the max subscribe time will equal with the start time',
	
));

// For management past activities
$lang = array_merge($lang, array(
    'ACP_DC_ACT_START_DATE_FROM'  		=> 'Start date from',
    'ACP_DC_ACT_START_DATE_TO'  		=> 'Start date to',
	'ACP_DC_ACT_END_DATE_FROM'  		=> 'End date from',
    'ACP_DC_ACT_END_DATE_TO'  			=> 'End date to',
	
));

// For management enrolls/subscribe list 
$lang = array_merge($lang, array(
    'ACP_DC_ACT_ENROLL'  				=> 'All users who subscribed: ',
    'ACP_DC_ACT_ENROLL_EXPLAIN'  		=> 'The list of all users who subscribed this activity.',
    'ACP_DC_ACT_COMMENT'  				=> 'Comment',
    'ACP_DC_ACT_STATUS'  				=> 'Status',
    'ACP_DC_SELECT_USER'  				=> 'Select a user',
    'ACP_DC_SELECT_USER_EXPLAIN'  		=> 'Select a user you whant to change the payment',
    'ACP_DC_ACT_PAID'  					=> 'The amount the user paid',
    'DC_ACT_USER_NOT_ENROLLED'    		=> 'is not subscripted',
    'DC_ACT_PAYMENT_DONE'    			=> 'Payment done',
	
));

$lang = array_merge($lang, array(
    'FIND_GROUP'  						=> 'Find a group',
    'NO_GROUPS'  						=> 'No groups found for this search criterion.',
    'GROUPLIST'  						=> 'Group list',
    'FIND_GROUPNAME_EXPLAIN'	=> 'Use this form to search for specific groups. You do not need to fill out all fields. To match partial data use * as a wildcard. Use the mark checkboxes to select one or more usernames (several usernames may be accepted depending on the form itself) and click the Select Marked button to return to the previous form.',
    'GROUPNAME'  						=> 'Group name',
    'SORT_GROUPNAME'  					=> 'Group name',
	'L_FIND_GROUP'						=> 'Find a group',
	'LIST_GROUP'						=> '1 Group',
	'LIST_GROUPS'						=> '%d Groups',
));


// For group list
$lang = array_merge($lang, array(
    'FIND_GROUP'  						=> 'Find a group',
    'NO_GROUPS'  						=> 'No groups found for this search criterion.',
    'GROUPLIST'  						=> 'Group list',
    'FIND_GROUPNAME_EXPLAIN'	=> 'Use this form to search for specific groups. You do not need to fill out all fields. To match partial data use * as a wildcard. Use the mark checkboxes to select one or more usernames (several usernames may be accepted depending on the form itself) and click the Select Marked button to return to the previous form.',
    'GROUPNAME'  						=> 'Group name',
    'SORT_GROUPNAME'  					=> 'Group name',
	'L_FIND_GROUP'						=> 'Find a group',
	'LIST_GROUP'						=> '1 Group',
	'LIST_GROUPS'						=> '%d Groups',
));

?>