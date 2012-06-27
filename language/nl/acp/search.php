<?php
/**
*
* acp_search [Dutch]
*
* @package language
* @version $Id: search.php,v 1.0.0 2007/01/27 17:38:45 naderman Exp $
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
	'ACP_SEARCH_INDEX_EXPLAIN'				=> 'Hier kun je de zoekindex methodes beheren. Omdat je onder normale omstandigheden slechts één methode gebruikt, kun je beter alle ongebruikte indexen verwijderen. Na het wijzigen van de zoekinstellingen (zoals het minimum-/maximaal aantal tekens), is het heropbouwen van de zoekindex aan te raden zodat deze de wijzigingen bevat.',
	'ACP_SEARCH_SETTINGS_EXPLAIN'			=> 'Hier kun je opgeven welke zoekmethode gebruikt moet worden voor het indexeren van de berichten en het uitvoeren van zoekopdrachten. Je kunt verschillende opties instellen die mede de verwerking van deze acties bepalen. Sommige instellingen zijn voor alle zoekmethodes gelijk.',

	'COMMON_WORD_THRESHOLD'					=> 'Frequente woordendrempel',
	'COMMON_WORD_THRESHOLD_EXPLAIN'			=> 'Woorden die in een groot percentage berichten voorkomen, worden als frequent beschouwd. Deze frequente woorden worden genegeerd bij zoekopdrachten. Indien je nul opgeeft, wordt de functie uitgeschakeld. Deze functie werkt echter alleen indien er meer dan 100 berichten zijn. Wanneer je wilt dat de woorden die momenteel worden gezien als frequent alsnog worden opgenomen, zul je de zoekindex opnieuw moeten opbouwen.',
	'CONFIRM_SEARCH_BACKEND'				=> 'Weet je zeker dat je op een andere zoekmethode wilt overschakelen? Nadat je deze hebt gewijzigd, zul je een nieuwe index voor de methode moeten opbouwen. Als je niet van plan bent om de oude methode ooit nog te gebruiken, kun je de oude index beter verwijderen om zo schijfruimte vrij te maken.',
	'CONTINUE_DELETING_INDEX'				=> 'Ga verder met het vorige index verwijderproces',
	'CONTINUE_DELETING_INDEX_EXPLAIN'		=> 'Het index verwijderproces is reeds gestart. Om de zoekindex pagina te kunnen openen moet je dit proces eerst afronden of annuleren.',
	'CONTINUE_INDEXING'						=> 'Ga door met het vorige indexeringsproces',
	'CONTINUE_INDEXING_EXPLAIN'				=> 'Het indexeringsproces is reeds gestart. Om de zoekindex pagina te kunnen openen moet je dit proces eerst afronden of annuleren.',
	'CREATE_INDEX'							=> 'Index creëren',

	'DELETE_INDEX'							=> 'Index verwijderen',
	'DELETING_INDEX_IN_PROGRESS'			=> 'Bezig met het verwijderen van de index',
	'DELETING_INDEX_IN_PROGRESS_EXPLAIN'	=> 'De zoekmethode is bezig met het legen van de index. Dit kan enkele minuten duren.',

	'FULLTEXT_MYSQL_INCOMPATIBLE_VERSION'	=> 'De MySQL fulltext methode kan alleen vanaf MySQL4 worden gebruikt.',
	'FULLTEXT_MYSQL_NOT_MYISAM'				=> 'MySQL fulltext indexen kunnen alleen bij MyISAM-tabellen worden gebruikt.',
	'FULLTEXT_MYSQL_TOTAL_POSTS'			=> 'Totaal aantal geïndexeerde berichten',
	'FULLTEXT_MYSQL_MBSTRING'				=> 'Ondersteuning voor niet-Latijnse UTF-8 tekens gebruikmakend van mbstring:',
	'FULLTEXT_MYSQL_PCRE'					=> 'Ondersteuning voor niet-Latijnse UTF-8 tekens gebruikmakend van PCRE:',
	'FULLTEXT_MYSQL_MBSTRING_EXPLAIN'		=> 'Indien PCRE de unicode opties niet bevat, zal de zoekindex methode de reguliere expressies van mbstring proberen te gebruiken.',
	'FULLTEXT_MYSQL_PCRE_EXPLAIN'			=> 'Deze zoekindex methode vereist de PCRE unicode opties, die alleen aanwezig zijn in PHP 4.4, 5.1 en hoger, indien je wilt zoeken naar niet-Latijnse karakters.',
	'FULLTEXT_MYSQL_MIN_SEARCH_CHARS_EXPLAIN'	=> 'Woorden met tenminste dit aantal karakters wordt geïndexeerd voor zoeken. Jij of jouw hosting aanbieder kunnen deze instelling alleen aanpassen via de mysql configuratie.',
	'FULLTEXT_MYSQL_MAX_SEARCH_CHARS_EXPLAIN'	=> 'Woorden met niet meer dan dit aantal karakters wordt geïndexeerd voor zoeken. Jij of jouw hosting aanbieder kunnen deze instelling alleen aanpassen via de mysql configuratie.',

	'GENERAL_SEARCH_SETTINGS'				=> 'Algemene zoekinstellingen',
	'GO_TO_SEARCH_INDEX'					=> 'Ga naar de zoekindex pagina',

	'INDEX_STATS'							=> 'Index statistieken',
	'INDEXING_IN_PROGRESS'					=> 'Bezig met indexeren',
	'INDEXING_IN_PROGRESS_EXPLAIN'			=> 'De zoekmachine is bezig met het indexeren van alle berichten op het forum. Dit kan een aantal minuten tot uren duren, afhankelijk van het aantal berichten op het forum.',

	'LIMIT_SEARCH_LOAD'						=> 'Systeembelastingslimiet zoekpagina',
	'LIMIT_SEARCH_LOAD_EXPLAIN'				=> 'Als de systeembelasting gedurende 1 minuut deze waarde overschrijdt, zal de zoekpagina offline gaan. 1.0 is gelijk aan het verbruik van ~100% van één processor. Dit werkt alleen op UNIX gebaseerde servers.',

	'MAX_SEARCH_CHARS'						=> 'Maximaal aantal geïndexeerde karakters',
	'MAX_SEARCH_CHARS_EXPLAIN'				=> 'Alleen woorden met minder dan dit aantal karakters zullen geïndexeerd worden.',
	'MAX_NUM_SEARCH_KEYWORDS'				=> 'Maximaal aantal toegestane sleutelwoorden',
	'MAX_NUM_SEARCH_KEYWORDS_EXPLAIN'		=> 'Maximaal aantal woorden die een gebruiker kan invoeren om te zoeken. Een waarde van 0 staat voor een onbeperkt aantal woorden.',
	'MIN_SEARCH_CHARS'						=> 'Minimaal aantal geïndexeerde tekens',
	'MIN_SEARCH_CHARS_EXPLAIN'				=> 'Alleen woorden met minimaal dit aantal karakters zullen worden geïndexeerd.',
	'MIN_SEARCH_AUTHOR_CHARS'				=> 'Minimaal aantal karakters auteur',
	'MIN_SEARCH_AUTHOR_CHARS_EXPLAIN'		=> 'Gebruikers moeten minimaal dit aantal karakters van de gebruikersnaam opgeven als ze met behulp van het jokerteken op auteur willen zoeken. Indien de gebruikersnaam van de auteur korter is dan dit aantal karakters, kunnen zij alsnog zoeken door de gebruikersnaam volledig op te geven.',

	'PROGRESS_BAR'							=> 'Voortgangsbalk',

	'SEARCH_GUEST_INTERVAL'					=> 'Minimale interval tussen zoekopdrachten van gasten',
	'SEARCH_GUEST_INTERVAL_EXPLAIN'			=> 'Het aantal seconden dat gasten moeten wachten, voordat ze een nieuwe zoekopdracht kunnen uitvoeren. Indien één gast een zoekopdracht heeft uitgevoerd, zullen de anderen moeten wachten tot deze tijd is verstreken.',
	'SEARCH_INDEX_CREATE_REDIRECT'			=> 'Alle berichten tot en met bericht id %1$d zijn geïndexeerd, waarvan %2$d berichten in deze stap.<br />De huidige indexeringssnelheid is gemiddeld %3$.1f berichten per seconde.<br />Bezig met indexeren…',
	'SEARCH_INDEX_DELETE_REDIRECT'			=> 'Alle berichten tot en met bericht id %1$d werden van de zoekindex verwijderd.<br />Bezig met verwijderen…',
	'SEARCH_INDEX_CREATED'					=> 'Alle forumberichten uit de database zijn succesvol geïndexeerd.',
	'SEARCH_INDEX_REMOVED'					=> 'De zoekindex van deze methode is succesvol verwijderd.',
	'SEARCH_INTERVAL'						=> 'Minimale interval tussen zoekopdrachten van gebruikers',
	'SEARCH_INTERVAL_EXPLAIN'				=> 'Het aantal seconden dat gebruikers moeten wachten, voordat ze een nieuwe zoekopdracht kunnen uitvoeren. Dit wordt per gebruiker gecontroleerd.',
	'SEARCH_STORE_RESULTS'					=> 'Buffertijd zoekresultaten',
	'SEARCH_STORE_RESULTS_EXPLAIN'			=> 'Gebufferde zoekresultaten zullen na deze tijd (in seconden) verlopen. Stel dit in op nul als je de zoekresultaten niet wilt bufferen.',
	'SEARCH_TYPE'							=> 'Zoekmethode',
	'SEARCH_TYPE_EXPLAIN'					=> 'Met phpBB is het mogelijk de zoekmethode die gebruikt wordt om berichten te doorzoeken, in te stellen. Standaard zal de zoekfunctie de eigen fulltext methode gebruiken.',
	'SWITCHED_SEARCH_BACKEND'				=> 'Je hebt de gebruikte zoekmethode gewijzigd. Om deze nieuwe methode te gebruiken, moet je ervoor zorgen dat er een bijhorende index is.',

	'TOTAL_WORDS'							=> 'Totaal aantal geïndexeerde woorden',
	'TOTAL_MATCHES'							=> 'Totaal aantal geïndexeerde relaties tussen woorden en berichten',

	'YES_SEARCH'							=> 'Zoekfunctie inschakelen',
	'YES_SEARCH_EXPLAIN'					=> 'Schakelt de zoekfunctie voor gebruikers in, inclusief zoeken naar gebruikers.',
	'YES_SEARCH_UPDATE'						=> 'Schakel fulltext updaten in',
	'YES_SEARCH_UPDATE_EXPLAIN'				=> 'Fulltext index updaten bij het plaatsen van berichten. Wordt overschreven indien de zoekfunctie uitgeschakeld is.',
));

?>