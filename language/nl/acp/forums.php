<?php
/**
*
* acp_forums [Dutch]
*
* @package language
* @version $Id: forums.php,v 1.0.0 2007/01/21 18:33:45 acydburn Exp $
* @copyright (c) 2005 phpBB Group modified by phpBB.nl (vertaalteam@phpbb.nl) in 2007
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

// Forum Admin
$lang = array_merge($lang, array(
	'AUTO_PRUNE_DAYS'			=> 'Berichtleeftijd bij automatisch opruimen',
	'AUTO_PRUNE_DAYS_EXPLAIN'	=> 'Aantal dagen vanaf het laatste bericht wanneer een onderwerp verwijderd wordt.',
	'AUTO_PRUNE_FREQ'			=> 'Frequentie van automatisch opruimen',
	'AUTO_PRUNE_FREQ_EXPLAIN'	=> 'Tijd in dagen tussen de automatische opruiming van evenementen.',
	'AUTO_PRUNE_VIEWED'			=> 'Leeftijd berichtweergave bij automatisch opruimen',
	'AUTO_PRUNE_VIEWED_EXPLAIN'	=> 'Aantal dagen dat een onderwerp niet meer bezocht is, voordat het verwijderd wordt.',

	'CONTINUE'						=> 'Doorgaan',
	'COPY_PERMISSIONS'				=> 'Kopieer permissies van',
	'COPY_PERMISSIONS_EXPLAIN'		=> 'Om het instellen van permissies voor je nieuwe forum eenvoudiger te maken, kun je de permissies van een bestaand forum kopiëren.',
	'COPY_PERMISSIONS_ADD_EXPLAIN'	=> 'Eenmaal aangemaakt, heeft het forum dezelfde permissies als het forum dat je geselecteerd hebt. Als er geen forum geselecteerd is, wordt het nieuwe forum niet zichtbaar totdat de permissies ingesteld zijn.',
	'COPY_PERMISSIONS_EDIT_EXPLAIN'	=> 'Als je kopieerpermissies geselecteerd hebt, krijgt het forum dezelfde permissies als het geselecteerde forum. Dit overschrijft alle eventueel hiervoor geselecteerde permissies. Als je geen forum geselecteerd hebt, worden de huidige permissies bewaard.',
	'COPY_TO_ACL'					=> 'Als alternatief kun je ook %snieuwe permissies instellen%s voor dit forum.',
	'CREATE_FORUM'					=> 'Creëer nieuw forum',

	'DECIDE_MOVE_DELETE_CONTENT'		=> 'Verwijder inhoud of verplaats naar forum',
	'DECIDE_MOVE_DELETE_SUBFORUMS'		=> 'Verwijder subforums of verplaats naar forum',
	'DEFAULT_STYLE'						=> 'Standaard stijl',
	'DELETE_ALL_POSTS'					=> 'Verwijder berichten',
	'DELETE_SUBFORUMS'					=> 'Verwijder subforums en de berichten',
	'DISPLAY_ACTIVE_TOPICS'				=> 'Schakel actieve onderwerpen in',
	'DISPLAY_ACTIVE_TOPICS_EXPLAIN'		=> 'Als "ja" is ingesteld, worden de actieve onderwerpen in de geselecteerde subforums onder deze categorie getoond.',

	'EDIT_FORUM'					=> 'Bewerk forum',
	'ENABLE_INDEXING'				=> 'Schakel zoekindexering in',
	'ENABLE_INDEXING_EXPLAIN'		=> 'Als dit op "ja" is ingesteld, worden de berichten in dit forum geïndexeerd om het zoeken te vereenvoudigen.',
	'ENABLE_POST_REVIEW'			=> 'Schakel berichtcontrole in',
	'ENABLE_POST_REVIEW_EXPLAIN'	=> 'Als dit op "ja" is ingesteld, kunnen de gebruikers voor het plaatsen van hun bericht controleren of er ondertussen nog andere berichten geplaatst zijn. Dit voorkomt chat-gesprekken in het forum.',
	'ENABLE_QUICK_REPLY'			=> 'Snel reageren inschakelen',
	'ENABLE_QUICK_REPLY_EXPLAIN'	=> 'Schakelt snel reageren in op dit forum. Deze optie is niet van toepassing als snel reageren globaal is uitgeschakeld. Snel reageren word enkel getoont bij gebruikers die de rechten hebben om berichten te plaatsen in dit forum.',
	'ENABLE_RECENT'					=> 'Toon actieve onderwerpen',
	'ENABLE_RECENT_EXPLAIN'			=> 'Als dit op "ja" is ingesteld, worden de gemaakte onderwerpen in dit forum getoond in de actieve onderwerpenlijst.',
	'ENABLE_TOPIC_ICONS'			=> 'Schakel onderwerp-iconen in',

	'FORUM_ADMIN'						=> 'Forumbeheer',
	'FORUM_ADMIN_EXPLAIN'				=> 'In phpBB3 zijn er geen categorieën, alles is forumgebaseerd. Elk forum kan een onbeperkt aantal subforums bevatten en je kunt aangeven waar wel in gepost mag worden en waar niet (het werkt hetzelfde als een oude categorie). Hier kun je toevoegen, bewerken, verwijderen, sluiten en heropenen van individuele forums en toegevoegde opties instellen. Als je berichten en onderwerpen niet meer synchroon zijn, kun je het forum synchroniseren. <strong>Je moet permissies gekopieerd of ingesteld hebben om nieuw aangemaakte forums te kunnen zien.</strong>',
	'FORUM_AUTO_PRUNE'					=> 'Schakel automatisch opruimen in',
	'FORUM_AUTO_PRUNE_EXPLAIN'			=> 'Om forums automatisch op te ruimen, stel je de frequentie- en leeftijdparameters hieronder in.',
	'FORUM_CREATED'						=> 'Forum is succesvol aangemaakt.',
	'FORUM_DATA_NEGATIVE'				=> 'Opruimparameters mogen niet negatief zijn.',
	'FORUM_DESC_TOO_LONG'				=> 'De forum-omschrijving is te lang, deze moet korter dan 4000 karakters zijn.',
	'FORUM_DELETE'						=> 'Verwijder forum',
	'FORUM_DELETE_EXPLAIN'				=> 'Met het formulier hieronder kun je een forum verwijderen. Als een forum berichten en/of onderwerpen bevat, kun je kiezen wat er met de berichten moet gebeuren.',
	'FORUM_DELETED'						=> 'Forum succesvol verwijderd.',
	'FORUM_DESC'						=> 'Beschrijving',
	'FORUM_DESC_EXPLAIN'				=> 'Alle hierin opgegeven HTML-opmaak wordt weergegeven.',
	'FORUM_EDIT_EXPLAIN'				=> 'Met het formulier hieronder kun je het forum instellen. Wees je ervan bewust dat moderatie en berichtenaantallen ingesteld worden via de forumpermissies voor iedere gebruiker en gebruikersgroep.',
	'FORUM_IMAGE'						=> 'Forum-afbeelding',
	'FORUM_IMAGE_EXPLAIN'				=> 'De locatie van de afbeelding die je aan dit forum wilt koppelen, bv. \root\images\forumimages\voorbeeld.gif.',
	'FORUM_IMAGE_NO_EXIST'				=> 'De gespecificeerde forum-afbeelding bestaat niet',
	'FORUM_LINK_EXPLAIN'				=> 'Volledige URL (inclusief het protocol, voorbeeld <samp>http://</samp>) voor de locatie waar de gebruiker d.m.v. een muisklik naar toegaat, bv: <samp>http://www.phpbb.nl</samp>.',
	'FORUM_LINK_TRACK'					=> 'Houd het aantal link-verwijzingen bij',
	'FORUM_LINK_TRACK_EXPLAIN'			=> 'Onthoud het aantal keer dat er op een forumlink wordt geklikt.',
	'FORUM_NAME'						=> 'Forumnaam',
	'FORUM_NAME_EMPTY'					=> 'Je moet een naam opgeven voor dit forum.',
	'FORUM_PARENT'						=> 'Hoofdforum',
	'FORUM_PASSWORD'					=> 'Forum wachtwoord',
	'FORUM_PASSWORD_CONFIRM'			=> 'Bevestig forum wachtwoord',
	'FORUM_PASSWORD_CONFIRM_EXPLAIN'	=> 'Alleen nodig indien een wachtwoord is opgegeven.',
	'FORUM_PASSWORD_EXPLAIN'			=> 'Definieer een wachtwoord voor dit forum en gebruik bij voorkeur het permissiesysteem.',
	'FORUM_PASSWORD_UNSET'				=> 'Verwijder forum wachtwoord',
	'FORUM_PASSWORD_UNSET_EXPLAIN'		=> 'Vink dit aan indien je het forum wachtwoord wil verwijderen.',
	'FORUM_PASSWORD_OLD'				=> 'Het forum wachtwoord maakt gebruik van een oude hash methode en zou gewijzigd moeten worden.',
	'FORUM_PASSWORD_MISMATCH'			=> 'De wachtwoorden die je hebt opgegeven komen niet met elkaar overeen.',
	'FORUM_PRUNE_SETTINGS'				=> 'Automatische forum-opruim instellingen',
	'FORUM_RESYNCED'					=> 'Forum "%s" is succesvol gesynchroniseerd',
	'FORUM_RULES_EXPLAIN'				=> 'Forumregels worden weergegeven op elke pagina van het desbetreffende forum.',
	'FORUM_RULES_LINK'					=> 'Link naar de forumregels',
	'FORUM_RULES_LINK_EXPLAIN'			=> 'Je kunt hier de URL naar het bericht of de pagina met de forumregels geven. Dit overschrijft wel de tekstuele forumregels.',
	'FORUM_RULES_PREVIEW'				=> 'Forumregels voorbeeld',
	'FORUM_RULES_TOO_LONG'				=> 'De forumregels moeten korter zijn dan 4000 tekens.',
	'FORUM_SETTINGS'					=> 'Foruminstellingen',
	'FORUM_STATUS'						=> 'Forumstatus',
	'FORUM_STYLE'						=> 'Forumstijl',
	'FORUM_TOPICS_PAGE'					=> 'Onderwerpen per pagina',
	'FORUM_TOPICS_PAGE_EXPLAIN'			=> 'Als dit niet nul is, wordt het standaard aantal onderwerpen per pagina hierdoor overschreven.',
	'FORUM_TYPE'						=> 'Forum type',
	'FORUM_UPDATED'						=> 'Forum informatie is succesvol bijgewerkt.',

	'FORUM_WITH_SUBFORUMS_NOT_TO_LINK'		=> 'Je wilt een forum met subforums veranderen in een link. Verplaats alle subforums uit dit forum voordat je verder gaat, omdat na een verandering naar een link je niet langer de mogelijkheid hebt de forums te bekijken die onder dit forum vallen.',

	'GENERAL_FORUM_SETTINGS'	=> 'Algemene forum instellingen',

	'LINK'						=> 'Link',
	'LIST_INDEX'				=> 'Toon de subforums in de legenda van het hoofdforum',
	'LIST_INDEX_EXPLAIN'		=> 'Toont dit forum als een link, op het forumoverzicht en in de legenda van het hoofdforum als de optie “Toon de subforums in het hoofdforum” is ingeschakeld.',
	'LIST_SUBFORUMS'			=> 'Toon de subforums in de legenda',
	'LIST_SUBFORUMS_EXPLAIN'	=> 'Toont de subforums van dit hoofdforum op de index en overal als een link in de legenda als daar de optie “Toon de subforums in de legenda” is ingeschakeld.',
	'LOCKED'					=> 'Gesloten',

	'MOVE_POSTS_NO_POSTABLE_FORUM'	=> 'In het geselecteerde forum kunnen geen berichten worden geplaatst. Selecteer een forum waarbij dit wel mogelijk is.',
	'MOVE_POSTS_TO'					=> 'Verplaats alle berichten naar',
	'MOVE_SUBFORUMS_TO'				=> 'Verplaats subforums naar',

	'NO_DESTINATION_FORUM'			=> 'Je hebt geen forum gespecificeerd waarnaar de inhoud moet worden verplaatst.',
	'NO_FORUM_ACTION'				=> 'Geen actie opgegeven voor wat er met de foruminhoud moet gebeuren.',
	'NO_PARENT'						=> 'Geen bovenliggend item',
	'NO_PERMISSIONS'				=> 'Kopieer de permissies niet',
	'NO_PERMISSION_FORUM_ADD'		=> 'Je hebt niet de benodigde permissies om forums toe te voegen.',
	'NO_PERMISSION_FORUM_DELETE'	=> 'Je hebt niet de benodigde permissies om forums te verwijderen.',

	'PARENT_IS_LINK_FORUM'		=> 'Het opgegeven hoofdforum is een forum-link. Deze forums kunnen geen andere forums bevatten. Specificeer een categorie of forum als hoofdforum.',
	'PARENT_NOT_EXIST'			=> 'Hoofdforum bestaat niet.',
	'PRUNE_ANNOUNCEMENTS'		=> 'Mededelingen automatisch opruimen',
	'PRUNE_STICKY'				=> 'Stickies automatisch opruimen',
	'PRUNE_OLD_POLLS'			=> 'Oude polls automatisch opruimen',
	'PRUNE_OLD_POLLS_EXPLAIN'	=> 'Verwijder onderwerpen met polls waarin niet is gestemd na.',

	'REDIRECT_ACL'	=> 'Je kunt nu de %spermissies instellen%s voor dit forum.',

	'SYNC_IN_PROGRESS'			=> 'Synchroniseer forum',
	'SYNC_IN_PROGRESS_EXPLAIN'	=> 'Huidige voortgang van onderwerp synchronisatie %1$d/%2$d.',

	'TYPE_CAT'			=> 'Categorie',
	'TYPE_FORUM'		=> 'Forum',
	'TYPE_LINK'			=> 'Link',

	'UNLOCKED'			=> 'Open',
));

?>