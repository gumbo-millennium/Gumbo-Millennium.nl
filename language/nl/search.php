<?php
/**
*
* search [Dutch]
*
* @package language
* @version $Id: search.php,v 1.0.0 2006/07/27 19:02:47 naderman Exp $
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

$lang = array_merge($lang, array(
	'ALL_AVAILABLE'			=> 'Alle beschikbare',
	'ALL_RESULTS'			=> 'Alle resultaten',

	'DISPLAY_RESULTS'		=> 'Toon resultaten als',

	'FOUND_SEARCH_MATCH'		=> 'Er voldeed %d resultaat aan de zoekterm',
	'FOUND_SEARCH_MATCHES'		=> 'Er voldeden %d resultaten aan de zoekterm',
	'FOUND_MORE_SEARCH_MATCHES'	=> 'Er voldeden meer dan %d resultaten aan de zoekterm',

	'GLOBAL'				=> 'Globale mededeling',

	'IGNORED_TERMS'			=> 'genegeerd',
	'IGNORED_TERMS_EXPLAIN'	=> 'De volgende woorden uit je zoekterm werden genegeerd omdat ze teveel voorkomen: <strong>%s</strong>',

	'JUMP_TO_POST'			=> 'Spring naar bericht',

	'LOGIN_EXPLAIN_EGOSEARCH'	=> 'Het forum vereist dat je geregistreerd en ingelogd bent om je eigen berichten te bekijken.',
	'LOGIN_EXPLAIN_UNREADSEARCH'=> 'Het forum vereist dat je geregistreerd en ingelogd bent om je ongelezen berichten te bekijken.',
	'LOGIN_EXPLAIN_NEWPOSTS'	=> 'Het forum vereist dat je geregistreerd en ingelogd bent om de nieuwe berichten sinds je laatste bezoek te bekijken.',

	'MAX_NUM_SEARCH_KEYWORDS_REFINE'	=> 'Je gebruikt te veel zoekwoorden. Gebruik niet meer dan %1$d woorden.',

	'NO_KEYWORDS'			=> 'Je moet minimaal 1 woord als zoekterm opgeven. Ieder woord moet minimaal %d tekens bevatten en maximaal %d tekens lang zijn, exclusief jokertekens.',
	'NO_RECENT_SEARCHES'	=> 'Er zijn geen recentelijk uitgevoerde zoekopdrachten.',
	'NO_SEARCH'				=> 'Je beschikt niet over de juiste permissies om gebruik te mogen maken van de zoekfunctie.',
	'NO_SEARCH_RESULTS'		=> 'Er zijn geen zoekresultaten.',
	'NO_SEARCH_TIME'		=> 'Je kunt de zoekfunctie op dit moment niet gebruiken. Probeer het over enkele minuten nogmaals.',
	'NO_SEARCH_UNREADS'		=> 'Sorry maar zoeken naar ongelezen berichten is uitgeschakeld op dit forum.',
	'WORD_IN_NO_POST'		=> 'Het woord %s kon niet worden gevonden.',
	'WORDS_IN_NO_POST'		=> 'De woorden %s zijn niet gevonden.',

	'POST_CHARACTERS'		=> 'tekens van de berichten',

	'RECENT_SEARCHES'		=> 'Recente zoekopdrachten',
	'RESULT_DAYS'			=> 'Zoek in berichten van afgelopen:',
	'RESULT_SORT'			=> 'Sorteer resultaten volgens',
	'RETURN_FIRST'			=> 'Toon alleen de eerste',
	'RETURN_TO_SEARCH_ADV'	=> 'Keer terug naar uitgebreid zoeken',

	'SEARCHED_FOR'				=> 'Gebruikte zoekterm',
	'SEARCHED_TOPIC'			=> 'Doorzocht onderwerp',
	'SEARCH_ALL_TERMS'			=> 'Zoek naar elke term afzonderlijk, of gebruik de opdracht zoals opgegeven',
	'SEARCH_ANY_TERMS'			=> 'Zoek naar één van de woorden',
	'SEARCH_AUTHOR'				=> 'Zoek volgens auteur',
	'SEARCH_AUTHOR_EXPLAIN'		=> 'Gebruik het jokerteken * voor gedeeltelijke overeenkomsten.',
	'SEARCH_FIRST_POST'			=> 'Eerste berichten',
	'SEARCH_FORUMS'				=> 'Doorzoek forums',
	'SEARCH_FORUMS_EXPLAIN'		=> 'Selecteer de forums waarin je wenst te zoeken. Subforums worden automatisch meegenomen. Als je dit niet wilt, selecteer je alleen het forum en schakel je de optie “doorzoek subforums“ uit.',
	'SEARCH_IN_RESULTS'			=> 'Doorzoek de resultaten',
	'SEARCH_KEYWORDS_EXPLAIN'	=> 'Plaats een <strong>+</strong> voor woorden die moeten voorkomen en een <strong>-</strong> voor woorden die niet mogen voorkomen. Een lijst woorden waarvan slechts één woord moet voorkomen plaats je tussen haakjes met een <strong>|</strong> tussen de woorden. Gebruik het jokerteken * voor gedeeltelijke overeenkomsten.',
	'SEARCH_MSG_ONLY'			=> 'Berichten',
	'SEARCH_OPTIONS'			=> 'Zoekopties',
	'SEARCH_QUERY'				=> 'Zoekopdracht',
	'SEARCH_SUBFORUMS'			=> 'Doorzoek subforums',
	'SEARCH_TITLE_MSG'			=> 'Onderwerp en berichten',
	'SEARCH_TITLE_ONLY'			=> 'Onderwerpen',
	'SEARCH_WITHIN'				=> 'Doorzoek alleen',
	'SORT_ASCENDING'			=> 'Oplopend',
	'SORT_AUTHOR'				=> 'Auteur',
	'SORT_DESCENDING'			=> 'Aflopend',
	'SORT_FORUM'				=> 'Forum',
	'SORT_POST_SUBJECT'			=> 'Onderwerp bericht',
	'SORT_TIME'					=> 'Tijdstip bericht',

	'TOO_FEW_AUTHOR_CHARS'	=> 'Je moet minimaal %d tekens van de naam van de auteur opgeven.',
));

?>