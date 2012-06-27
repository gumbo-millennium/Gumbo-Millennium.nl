<?php
/**
* DO NOT CHANGE
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
$lang = array_merge($lang, array(
    'MAYBE'    							=> 'Maybe',
    'AMOUNT'    						=> 'Amount',
    'PAID'    							=> 'Paid',
    'SAVED'    							=> 'Saved',
    'TO'    							=> 'To',
    'DC_ACT_ALREADY_STATUS'    			=> 'The user already has this status.',
    'DC_ACT_WRONG_STATUS'    			=> 'Wrong status',
    'DC_ACT_IN_PAST'    				=> 'This activity is in the past. Something in the past can not chance.',
    'DC_ACT_NOT_ENROLLED'    			=> 'User is not subscribed',
    'DC_ACT_ERROR_NO_ROWS_ADDED'    	=> 'No new rows added',
    'DC_ACT_ERROR_TO_MANY_ROWS_ADDED'   => 'No new rows added',
    'DC_ACT_NO_ACT'   					=> 'Activity not fount',
    'DC_ACT_ERROR_LOAD'   				=> 'Error while loading activity',
    'DC_ACT'   							=> 'Activity',
    'DC_ACT_LANG_TILL'   				=> 'Till',
    'DC_ACT_LANG_ENROLLS'   			=> 'Subscriptions',
    'DC_ACT_LANG_SUBSCRIBE'   			=> 'Subscribe',
    'DC_ACT_LANG_DATE'   				=> 'Date',
    'DC_ACT_LANG_PRICE'   				=> 'Price',
    'DC_ACT_LANG_MEMBER'   				=> 'Member',
    'DC_ACT_LANG_LOCATION'  			=> 'Location',
    'DC_ACT_SAVE_COMMENT'  				=> 'Save comment',
    'DC_ACT_ENROLL_NOBODY'  			=> 'Nobody subscribed',
    'DC_ACT_ENROLL_FORCE'  				=> 'Subscribe required',
    'DC_ACT_ENROLL_TIME'  				=> 'Subscribe until',
    'DC_ACT_ENROLL_AMOUNT'  			=> 'Amount subscribed',
    'DC_ACT_ENROLL_CLOSED'  			=> 'Subscriptions closed',
));
?>