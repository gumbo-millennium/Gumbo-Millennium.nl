<?php
/**
*
* @package Board3 Portal v2 - Weather
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
	'PORTAL_GUMBO_EVENTS'			=> 'Events',
	'GUMBO_EVENTS'					=> 'Events',
	'GUMBO_EVENTS_TOP'				=> 'Gumbo events top',
	
	// ACP
	'ACP_PORTAL_GUMBO_EVENTS_SETTINGS'	=> 'Event settings',
	'ACP_PORTAL_GUBMO_EVENTS_MAX'		=> 'Maximum shown events',
	'ACP_PORTAL_GUBMO_EVENTS_MAX_EXP'	=> 'Set the maximum shown events on the page',
));
