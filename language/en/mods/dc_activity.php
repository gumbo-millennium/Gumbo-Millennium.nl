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
    'DC_ACT_WRONG_STATUS'    			=> 'Wrong status',
    'DC_ACT_IN_PAST'    				=> 'This activity is in the past. Something in the past can not chance.',
    'DC_ACT_NOT_ENROLLED'    			=> 'User is not enrolled',
    'DC_ACT_ERROR_NO_ROWS_ADDED'    	=> 'No new rows added',
    'DC_ACT_ERROR_TO_MANY_ROWS_ADDED'   => 'No new rows added',
    'DC_ACT_NO_ACT'   					=> 'Activity not fount',
    'DC_ACT_ERROR_LOAD'   				=> 'Error while loading activity',
    'DC_ACT'   							=> 'Activity',
    'DC_ACT_LANG_TILL'   				=> 'Till',
    'DC_ACT_LANG_ENROLLS'   			=> 'Entered',
    'DC_ACT_LANG_SUBSCRIBE'   			=> 'Enroll',
    'DC_ACT_LANG_DATE'   				=> 'Date',
    'DC_ACT_LANG_PRICE'   				=> 'Price',
    'DC_ACT_LANG_MEMBER'   				=> 'Member',
    'DC_ACT_LANG_LOCATION'  			=> 'Location',
    'DC_ACT_SAVE_COMMENT'  				=> 'Save comment',
    'DC_ACT_ENROLL_NOBODY'  			=> 'Nobody enrolled for this event',
    'DC_ACT_ENROLL_FORCE'  				=> 'Enroll required',
    'DC_ACT_ENROLL_TIME'  				=> 'Enroll until',
    'DC_ACT_ENROLL_AMOUNT'  			=> 'Users who enrolled',
    'DC_ACT_ENROLL_CLOSED'  			=> 'Enrollments closed',
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
    'ACP_DC_ACT_ENROL'  				=> 'Enroll',
    'ACP_DC_ACT_ENROL_EXPLAIN'  		=> 'Force the users to enroll for this event',
    'ACP_DC_ACT_LOCATION'  				=> 'Location',
    'ACP_DC_ACT_LOCATION_EXPLAIN'  		=> 'Enter the location from where the activity starts',
    'ACP_DC_ACT_PAY_OPTION'  			=> 'Payment',
    'ACP_DC_ACT_COMMISSION'  			=> 'Commission',
    'ACP_DC_ACT_COMMISSION_EXPLAIN'  	=> 'What commission is making this event',
    'ACP_DC_ACT_ENROLL_DATE'  			=> 'Max enroll date',
    'ACP_DC_ACT_ENROLL_DATE_EXPLAIN'  	=> 'The date users can enroll <br> If left empty the dat wil be the start date',
	'ACP_DC_ACT_ENROLL_TIME'  			=> 'Max enroll time',
    'ACP_DC_ACT_ENROLL_TIME_EXPLAIN'  	=> 'The time users can enroll on de max enroll day <br> If left empty the dat wil be the start time',
    'ACP_DC_ACT_ENROLL_MAX'  			=> 'Max users',
    'ACP_DC_ACT_ENROLL_MAX_EXPLAIN'  	=> 'The max amount of user that can join this event <br> 0 is unlimited',
    'ACP_DC_ACT_PRICE'  				=> 'Price',
    'ACP_DC_ACT_PRICE_EXPLAIN'  		=> 'The price non Gumbo Millennium members have to pay',
	'ACP_DC_ACT_PRICE_MEMBER'  			=> 'Price for Gumbo Millennium members',
    'ACP_DC_ACT_PRICE_MEMBER_EXPLAIN'  	=> 'The price Gumbo Millennium members have to pay',
    'ACP_DC_ACT_ACCES'  				=> 'Acces settings',
    'ACP_DC_ACT_ADD_MANAGER'  			=> 'Add manager(s)',
    'ACP_DC_ACT_ADD_MANAGER_EXPLAIN'  	=> 'Add a person(s) who get the acces to chance this event <br> This option is optional',
	'ACP_DC_ACT_ADD_GROUP'  			=> 'Add groups(s)',
    'ACP_DC_ACT_ADD_GROUP_EXPLAIN'  	=> 'Add group(s) who get the acces to this event',
    'NOT_EMPTY'  						=> 'is not allowed to be empty',
    'NOT_PREG'  						=> 'has forbidden characters',
    'WRONG_FORMAT'  					=> 'has the wrong format',
    'CASH'  							=> 'Cash',
    'IDEAL'  							=> 'iDeal (not supported yet)',
    'CANT_LATER'  						=> 'can\'t be later than',
    'CANT_PAST'  						=> 'can\'t be in the past',
    'NOT_FOUND'  						=> 'not found',
    'UNVALID'  							=> 'is unvalid',
    'OVERVIEW'  						=> 'Events overview',

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