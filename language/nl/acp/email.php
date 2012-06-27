<?php
/**
*
* acp_email [Dutch]
*
* @package language
* @version $Id: email.php,v 1.0.0 2007/01/26 16:09:16 acydburn Exp $
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

// Email settings
$lang = array_merge($lang, array(
	'ACP_MASS_EMAIL_EXPLAIN'		=> 'Hier kun je een e-mail naar alle gebruikers of de leden van een specifieke groep, <strong>die de ontvangst van massa e-mails toelaten</strong> sturen. Hiervoor wordt een e-mail met alle ontvangers als onzichtbaar (bcc) ingesteld, naar het beheerders e-mailadres gestuurd. Bij de standaard instellingen wordt de e-mail naar 50 mensen per pakket gestuurd. Indien er meer dan 50 ontvangers zijn, wordt de e-mail via meerdere pakketten verzonden. Indien je een e-mail naar een grote groep stuurt, wees dan geduldig en stop de pagina niet halverwege. Het is normaal dat het versturen van massa e-mails enige tijd in beslag neemt. Je wordt ervan op de hoogte gebracht zodra het script klaar is.',
	'ALL_USERS'						=> 'Alle gebruikers',

	'COMPOSE'				=> 'Opstellen',

	'EMAIL_SEND_ERROR'		=> 'Er zijn een of meerdere fouten opgetreden tijdens het verzenden. Controleer het %sfouten logboek%s voor een uitgebreide beschrijving.',
	'EMAIL_SENT'			=> 'Het bericht is verzonden.',
	'EMAIL_SENT_QUEUE'		=> 'Het bericht staat in de wachtrij om verstuurd te worden.',

	'LOG_SESSION'			=> 'Sessie opslaan',

	'SEND_IMMEDIATELY'		=> 'Verstuur direct',
	'SEND_TO_GROUP'			=> 'Verstuur naar groep',
	'SEND_TO_USERS'			=> 'Verstuur naar gebruikers',
	'SEND_TO_USERS_EXPLAIN'	=> 'Door het invullen van namen worden de hierboven geselecteerde groepen genegeerd. Elke gebruikersnaam moet op een nieuwe regel staan.',
	
	'MAIL_BANNED'			=> 'Mail verbannen gebruikers',
	'MAIL_BANNED_EXPLAIN'	=> 'Geef aan bij het versturen naar een groep of de verbannen gebruikers deze e-mail ook moeten ontvangen.',

	'MAIL_HIGH_PRIORITY'	=> 'Hoog',
	'MAIL_LOW_PRIORITY'		=> 'Laag',
	'MAIL_NORMAL_PRIORITY'	=> 'Normaal',
	'MAIL_PRIORITY'			=> 'Mail prioriteit',
	'MASS_MESSAGE'			=> 'Je bericht',
	'MASS_MESSAGE_EXPLAIN'	=> 'Het bericht wordt verzonden zonder tekst-opmaak. Alle opmaak wordt voor het verzenden verwijderd.',

	'NO_EMAIL_MESSAGE'		=> 'Het berichtveld is nog leeg.',
	'NO_EMAIL_SUBJECT'		=> 'Je hebt geen onderwerp opgegeven.',
));

?>