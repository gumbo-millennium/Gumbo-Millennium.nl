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
    'SPONSOR'           => 'Sponsors',
    'PLAZACAM'          => 'Plaza CAM', 
    'OVER_ONS'          => 'About Gumbo',
    'SOCIETEIT'         => 'Sociëteit',
    'CONTACT'           => 'Contact',
    'BOARD_OF_DIRECTORS'=> 'Het dagelijks bestuur',
    'AC'                => 'De Activiteiten Commissie',
    'BC'                => 'De Bras Commissie',
    'DC'                => 'De Digitale Commissie',
    'KC'                => 'De Kas Commissie',
    'SC'                => 'De Soos Commissie',
    'GC'                => 'De Gumbode Commissie',
    'PC'                => 'De Plaza Commissie',
    'IB'                => 'Het intro betsuur',
    'NICKNAME'          => 'Nicknaam',
    'IRLNAME'           => 'Real naam',
    'STORY'             => 'The story',
    'ONDERSCHRIFT'      => 'Subtitel',
    'EVENTS'            => 'Events',
    'EVENTS_ACP'        => 'Events management',
    'GUMBO_MEMBERS'     => 'Gumbo members',
    'NON_MEMBERS'       => 'Non members',
    'WHY_GUBMO'         => 'Why Gumbo?',
    'DISPUTES'          => 'Disputes',
    
    'EQUESTER'          => 'Equester',
    'M-POWER'           => 'M-power',
    'PROXIMUS'          => 'Proximus',
    'ALIQUANDO'         => 'Aliquando',
    'COMMISSION'        => 'Commission',

    'BOARD_HISTORY'     => 'Board history',
    'NEWS_AND_EVENTS'   => 'News and events',
    'NEWS'              => 'News',
    'RESENT_NEWS'       => 'Resent news',
    'ARCHIVE_NEWS'      => 'Archive news',
    'GUMBODES'          => 'Gumbodes',
    'PICTURES'          => 'Pictures',
    'DOC_SYSTEM'        => 'Documents system',
    'SHOP'              => 'Shop',
    'FORUM_SUBSCRIBED'  => 'Subscribed forum treads',
    'MEMBER_PANELS'     => 'Member panels',

    'FORUM_UNREAD_POSTS'    => 'Unread posts', 
    'FORUM_BOOKMARKS'       => 'Bookmarks', 
    'UCP_OVERVIEW'          => 'Overview', 
    'UCP_PROFILE'           => 'Profile', 
    'UCP_PREFS'             => 'Board preferences', 
    'UCP_USERGROUPS'        => 'Usergroups', 
    'UCP_ZEBRA_FOES'        => 'Friends and foes', 
    'MCP_CONTROL_PANEL'     => 'Control panel', 
    'MCP_QUEUE'             => 'Queue', 
    'MCP_REPORTS'           => 'Report', 
    'MCP_NOTES'             => 'User node', 
    'MCP_WARN'              => 'Warnings', 
    'MCP_LOGS'              => 'Moderators log', 
    'MCP_BAN'               => 'Banning', 

    'BACK'                  => 'Back', 
    'NAVIGATION'            => 'Navigation', 
));

?>