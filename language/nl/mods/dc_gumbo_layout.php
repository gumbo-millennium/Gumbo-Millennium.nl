<?php
/**
*
* @package phpBB3
* @version $Id$
* @author: Gerco Versloot
* @date: 6 - 8 - 2012
* @license http://opensource.org/licenses/gpl-license.php GNU Public License
* @Gumbo Millennium
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
    'OVER_ONS'          => 'Over Gumbo',
    'SOCIETEIT'         => 'Sociëteit',
    'CONTACT'           => 'Contact',
    'BOARD_OF_DIRECTORS'=> 'Het Dagelijks Bestuur',
    'AC'                => 'De Activiteiten Commissie',
    'BC'                => 'De Bras Commissie',
    'DC'                => 'De Digitale Commissie',
    'KC'                => 'De Kas Commissie',
    'SC'                => 'De Soos Commissie',
    'GC'                => 'De Gumbode Commissie',
    'PC'                => 'De Plaza Commissie',
    'IB'                => 'Het Intro Bestuur',
    'NICKNAME'          => 'Nicknaam',
    'REALNAME'          => 'Echte Naam',
    'STORY'             => 'Het Verhaal',
    'ONDERSCHRIFT'      => 'Subtitel',
    'EVENTS'            => 'Evenementen',
    'EVENTS_ACP'        => 'Evenementbeheer',
    'GUMBO_MEMBERS'     => 'Gumbo Leden',
    'NON_MEMBERS'       => 'Niet-leden',
    'WHY_GUMBO'         => 'Waarom Gumbo?',
    'DISPUTES'          => 'Disputen',
    
    'EQUESTER'          => 'Equester',
    'M-POWER'           => 'M-Power',
    'PROXIMUS'          => 'Proximus',
    'ALIQUANDO'         => 'Aliquando',
    'COMMISSION'        => 'Commissie',

    'BOARD_HISTORY'     => 'Bestuursgeschiedenis',
    'NEWS_AND_EVENTS'   => 'Nieuws en Evenementen',
    'NEWS'              => 'Nieuws',
    'RECENT_NEWS'       => 'Recent Nieuws',
    'ARCHIVE_NEWS'      => 'Nieuwsarchief',
    'GUMBODES'          => 'Gumbodes',
    'PICTURES'          => 'Foto\'s',
    'DOC_SYSTEM'        => 'Documentensystem',
    'SHOP'              => 'Winkel',
    'FORUM_SUBSCRIBED'  => 'Geabonneerde forumtreads',
    'MEMBER_PANELS'     => 'Ledenpanelen',

    'FORUM_UNREAD_POSTS'    => 'Ongelezen Posts', 
    'FORUM_BOOKMARKS'       => 'Bladwijzers', 
    'UCP_OVERVIEW'          => 'Overzicht', 
    'UCP_PROFILE'           => 'Profiel', 
    'UCP_PREFS'             => 'Board Voorkeuren', 
    'UCP_USERGROUPS'        => 'Gebruikersgroepen', 
    'UCP_ZEBRA_FOES'        => 'Vrienden en Vijanden', 
    'MCP_CONTROL_PANEL'     => 'Control Paneel', 
    'MCP_QUEUE'             => 'Wachtrij', 
    'MCP_REPORTS'           => 'Rapporteren', 
    'MCP_NOTES'             => 'Gebruikers Notities', 
    'MCP_WARN'              => 'Waarschuwingen', 
    'MCP_LOGS'              => 'Moderators Log', 
    'MCP_BAN'               => 'Verbanningen', 

    'BACK'                  => 'Terug', 
    'NAVIGATION'            => 'Navigatie', 
    'GO_TO_NEWS'            => 'Ga naar Nieuws', 
    'NEWS_AVAILABLE_TITLE'  => 'Momenteel is er geen nieuws', 
    'NEWS_AVAILABLE_TEXT'   => 'Probeer het op een andere datum of tijd', 

    'PIC_INVALID_YEAR'      => '%d niet bestaand jaar of er zijn geen fotos uit dat jaar',

));

?>
