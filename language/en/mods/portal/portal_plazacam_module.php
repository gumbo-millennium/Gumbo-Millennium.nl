<?php
/**
*
* @package Board3 Portal v2 - Welcome
* @copyright (c) Board3 Group ( www.board3.de )
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
$lang = array_merge($lang, array(
	'PORTAL_PLAZAWEBCAMS'				=> 'Plaza webcams',
	'PORTAL_PLAZACAM'					=> 'Plazacam',
	'PORTAL_KOFFIECAM'					=> 'Koffiecam',
	'PORTAL_OUT_OF_SERVICE'				=> 'The plaza webcams are only in use between 7:00 and 22:30',
	'PORTAL_PLAZACAM_TITLE'					=> 'Gumbo Millennium Plaza webcam',
	'PORTAL_PLAZACAM_SUB'						=> 'De thuis basis van alle leden van Gumbo Millennium',
	'PORTAL_KOFFIECAM_TITLE'					=> 'Gumbo Millennium koffie webcam',
	'PORTAL_KOFFIECAM_SUB'						=> 'Hoeveel koffie is er nog?',

	'ACP_PORTAL_PLAZACAM_SETTINGS'		=> 'Gumbo plazacam settings',
	'ACP_PORTAL_PLAZACAM_REFRESH_RATE'	=> 'Image refresh rate in ms',
	'ACP_PORTAL_PLAZACAM_POST_ID'		=> 'Post ID of plazacam post',
));
