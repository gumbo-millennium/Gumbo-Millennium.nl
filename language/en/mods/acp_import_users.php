<?php
/**
*
* acp_database [English]
*
* @package language
* @version $Id: database.php 8479 2008-03-29 00:22:48Z naderman $
* @copyright (c) 2005 phpBB Group
* @license http://opensource.org/licenses/gpl-license.php GNU Public License
*
*/

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

// Database Backup/Restore
$lang = array_merge($lang, array(
	'TITLE'		=> 'User Import',
	'EXPLAIN'	=>			'Import users from CSV files. Files to be imported have to be in the store directory. Underneath, use the index of the appropriate value from the CSV file, i.e. use 0 for the username, if the username is the first entry in each line. -1 entries are ignored.',
	'ACP_IMPORT_EXPLAIN' =>	'Import users from CSV files.',
	
	'DELIM'						=> 'CSV-Delimiter (\t for TAB)',
//	'ESCAPE'					=> 'CSV-Escape Char',
	'ENCLOSURE'					=> 'CSV-Enclosure Character',
	'REG_DATEFORMAT'		    => 'Registration Date Format (see PHP strftime)',
	'REG_DATEFORMAT_EXPLAIN'    => 'Leave empty if date provided as seconds since UNIX Epoch<br />%Y: 4-digit year, %m: 2-digit month, %d: day(1-31), %H: hour(0-23), %M: minute, %S: second',
	'BIRTHDATEFORMAT'			=> 'Birthday Date fields order [YMD|YDM|MDY|DMY]',
	'BIRTHDATEFORMAT_EXPLAIN'	=> 'Birthday date must contain a year(Y), a month(M) and a day(D). These fields must be separated by any non-digit character(s) and provided in the order specified by this field. Year may be provided by 2 or 4 digits. If last fields are missing they are filled with default values.',
	'SEND_EMAIL_EXPLAIN'		=> 'Send imported users a welcome mail.',
	'PASSWORD_FORMAT'			=> 'Password format',
	'PASS_PLAIN'				=> 'plaintext',
	'PASS_HASHED'				=> 'hashed',
	'PREVIEW_MODE'              => 'Preview Mode',
	'PREVIEW_FIRST'             => 'Display first line',	
	'PREVIEW_LAST'              => 'Decode all lines and display last',	
	'REQUIRED_MAP'				=> 'Required Values',
	'OPTIONAL_MAP'				=> 'Optional Values',
	'CUSTOM_MAP'				=> 'Custom Values',
	'NO_IMPORT_USERNAME'        => 'No Username found on line %d: line skipped.',
	'NO_IMPORT_EMAIL'           => 'No Email found for user \'%s\'.',
	'USERNAME_CONFLICT'			=> 'The Username \'%1$s\' at line %2$d is already in use: it has been skipped.',
	'ACP_ACCOUNTS_ADDED'		=> 'Welcome to %s forums. Your account has been imported.',
	'PASSWORD_UNKNOWN'			=> 'You password is unable to be determined since it was encrypted in our previous database',
	'PASSWORD_EXPLAIN'          => '&lt;Random password will be auto-generated>',
	'ADDED_USERS'				=> 'The %d following accounts were imported',
	'MISSING_CSV_DELIMITER'		=> 'The CSV delimiter is mandatory',
	'MISSING_CSV_ENCLOSURE'     => 'The CSV enclosure character is mandatory',
	'WRONG_REG_DATE_FORMAT'		=> 'The read registration date \'%1$s\' does not match the expected format (%2$s): current time used.',
	'UNKNOWN_RANK'              => 'The rank \'%s\' is unknown: it is ignored.',
	'INVALID_BIRTHDAY_FORMAT'   => 'Only YMD, YDM, MDY or DMY formats are accepted for the birthday date.',
	'INVALID_BIRTHDAY_DATA'     => 'The birthday date \'%1$s\' does not match the expected format (%2$s): the date is ignored.',
	'INVALID_URL'               => 'The following user website URL is invalid and will be ignored: '
));

?>