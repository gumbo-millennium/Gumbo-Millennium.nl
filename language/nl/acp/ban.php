<?php
/**
*
* acp_ban [Dutch]
*
* @package language
* @version $Id: ban.php,v 1.0.0 2006/12/22 22:51:12 shs Exp $
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

// Banning
$lang = array_merge($lang, array(
	'1_HOUR'		=> '1 uur',
	'30_MINS'		=> '30 minuten',
	'6_HOURS'		=> '6 uur',

	'ACP_BAN_EXPLAIN'	=> 'Hier kun je het bannen van gebruikers per naam, IP of e-mailadres beheren. Deze methode zorgt ervoor dat de gebruiker het forum niet meer te zien krijgt. Je kunt een korte reden (maximaal 3000 tekens) voor de ban opgeven, deze wordt weergegeven in de beheerderslog. Ook de duur van de ban kan aangegeven worden. Als je de ban wilt laten eindigen op een bepaalde datum die niet als tijdsperiode is ingesteld, selecteer dan <u>Tot -></u> voor de lengte van de ban en voer een datum in het <kbd>JJJJ-MM-DD</kbd> formaat.',

	'BAN_EXCLUDE'			=> 'Uitsluiten van ban',
	'BAN_LENGTH'			=> 'Lengte van de ban',
	'BAN_REASON'			=> 'Reden voor de ban',
	'BAN_GIVE_REASON'		=> 'Reden laten zien aan de verbande',
	'BAN_UPDATE_SUCCESSFUL'	=> 'De banlijst is succesvol bijgewerkt.',
	'BANNED_UNTIL_DATE'		=> 'tot %s', // Example: "until Mon 13.Jul.2009, 14:44"
	'BANNED_UNTIL_DURATION'	=> '%1$s (tot %2$s)', // Example: "7 days (until Tue 14.Jul.2009, 14:44)"

	'EMAIL_BAN'					=> 'Ban één of meer e-mailadressen',
	'EMAIL_BAN_EXCLUDE_EXPLAIN'	=> 'Schakel dit in om de ingestelde e-mailadressen uit te sluiten van lopende bans',
	'EMAIL_BAN_EXPLAIN'			=> 'Om meerdere e-mailadressen te specificeren moet je ze elk op een aparte regel plaatsen. Om meerdere e-mailadressen in een keer te bannen gebruik je de * als wildcard, bijvoorbeeld <samp>*@hotmail.com</samp>, <samp>*@*.domain.tld</samp>, etc.',
	'EMAIL_NO_BANNED'			=> 'Geen verbannen e-mailadressen',
	'EMAIL_UNBAN'				=> 'Verwijder ban of verwijder uitgesloten e-mailadressen',
	'EMAIL_UNBAN_EXPLAIN'		=> 'Als je van meerdere e-mailadressen de ban wilt opheffen (of niet meer wilt uitsluiten), kun je dit doen door gebruik te maken van de combinatie muis en toetsenbord. Uitgesloten e-mailadressen zijn benadrukt.',

	'IP_BAN'					=> 'Ban één of meer IP’s',
	'IP_BAN_EXCLUDE_EXPLAIN'	=> 'Schakel dit in om de ingestelde IP-adressen uit te sluiten van lopende bans.',
	'IP_BAN_EXPLAIN'			=> 'Als je meerdere IP-adressen wilt specificeren, vul je ze elk op een aparte regel in. Om een reeks te specificeren gebruik je een streep (-) aan het begin en het eind. Als je een wildcard wilt specificeren gebruik je een "*".',
	'IP_HOSTNAME'				=> 'IP-adressen en hostnamen',
	'IP_NO_BANNED'				=> 'Geen verbannen IP-adressen',
	'IP_UNBAN'					=> 'Verwijder ban of verwijder uitgesloten IP-adressen.',
	'IP_UNBAN_EXPLAIN'			=> 'Als je van meerdere IP-adressen de ban wilt opheffen (of niet meer wilt uitsluiten), kun je dit doen door gebruik te maken van de combinatie muis en toetsenbord. Uitgesloten IP-adressen zijn benadrukt.',

	'LENGTH_BAN_INVALID'	=> 'De datum moet als volgt worden opgegeven: <kbd>JJJJ-MM-DD</kbd>.',

	'PERMANENT'		=> 'Permanent',

	'UNTIL'						=> 'Tot',
	'USER_BAN'					=> 'Ban één of meer gebruikersnamen',
	'USER_BAN_EXCLUDE_EXPLAIN'	=> 'Schakel dit in om de ingestelde gebruikersnamen uit te sluiten van lopende bans.',
	'USER_BAN_EXPLAIN'			=> 'Je kunt meerdere gebruikers in een keer bannen door elke op een aparte regel te zetten. Gebruik de <u>zoek een lid</u> functie om te zoeken en een of meerdere gebruikers in een keer toe te voegen.',
	'USER_NO_BANNED'			=> 'Geen verbannen gebruikersnamen',
	'USER_UNBAN'				=> 'Verwijder ban of verwijder uitgesloten gebruikersnamen',
	'USER_UNBAN_EXPLAIN'		=> 'Als je van meerdere gebruikersnamen de ban wilt opheffen (of niet meer wilt uitsluiten), kun je dit doen door gebruik te maken van de combinatie muis en toetsenbord. Uitgesloten gebruikersnamen zijn benadrukt.',
));

?>