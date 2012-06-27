<?php
/**
*
* acp_groups [Dutch]
*
* @package language
* @version $Id: groups.php,v 1.0.0 2007/01/24 11:29:56 acydburn Exp $
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
	'ACP_GROUPS_MANAGE_EXPLAIN'		=> 'Via dit paneel kun je alle gebruikersgroepen beheren en je bestaande groepen wijzigen en/of verwijderen. Verder kun je groepsleiders kiezen, switchen tussen statussen (open/verborgen/gesloten) voor een groep en de groepsbeschrijving en -naam aanpassen.',
	'ADD_USERS'						=> 'Voeg gebruikers toe',
	'ADD_USERS_EXPLAIN'				=> 'Hier kun je gebruikers aan een groep toevoegen. Je kunt ook kiezen of dit de standaard groep moet worden voor de geselecteerde gebruiker(s). Bovendien kun je hen groepsleider maken. Zet elke gebruikersnaam op een nieuwe regel.',

	'COPY_PERMISSIONS'				=> 'Permissies kopiëren van',
	'COPY_PERMISSIONS_EXPLAIN'		=> 'Eenmaal aangemaakt, zal de groep de permissies van de geselecteerde groep(en) krijgen.',
	'CREATE_GROUP'					=> 'Nieuwe groep maken',

	'GROUPS_NO_MEMBERS'				=> 'Deze groep heeft geen leden',
	'GROUPS_NO_MODS'				=> 'Geen groepsleiders aangewezen',

	'GROUP_APPROVE'					=> 'Lid goedkeuren',
	'GROUP_APPROVED'				=> 'Goedgekeurde leden',
	'GROUP_AVATAR'					=> 'Groepsavatar',
	'GROUP_AVATAR_EXPLAIN'			=> 'Deze afbeelding laten zien in het groepscontrolepaneel.',
	'GROUP_CLOSED'					=> 'Gesloten',
	'GROUP_COLOR'					=> 'Groepskleur',
	'GROUP_COLOR_EXPLAIN'			=> 'Wijzigt de kleuren waarin de gebruikersnamen worden weergegeven. Laat deze leeg voor de gebruikersstandaard.',
	'GROUP_CONFIRM_ADD_USER'		=> 'Weet je zeker dat je de gebruiker %1$s aan deze groep wil toevoegen?',
	'GROUP_CONFIRM_ADD_USERS'		=> 'Weet je zeker dat je de gebruikers %1$s aan deze groep wil toevoegen?',
	'GROUP_CREATED'					=> 'Groep succesvol aangemaakt.',
	'GROUP_DEFAULT'					=> 'Maak groep standaard voor lid',
	'GROUP_DEFS_UPDATED'			=> 'Standaard groep gemaakt voor geselecteerde leden.',
	'GROUP_DELETE'					=> 'Verwijder lid uit groep',
	'GROUP_DELETED'					=> 'Groep verwijderd en gebruikers standaardgroep succesvol gewijzigd.',
	'GROUP_DEMOTE'					=> 'Degradeer groepsleider',
	'GROUP_DESC'					=> 'Groepsbeschrijving',
	'GROUP_DETAILS'					=> 'Groep details',
	'GROUP_EDIT_EXPLAIN'			=> 'Hier kun je bestaande groepen bewerken.',
	'GROUP_ERR_USERS_EXIST'			=> 'De geselecteerde gebruikers zijn al lid van deze groep.',
	'GROUP_FOUNDER_MANAGE'			=> 'Alleen beheer door eigenaar',
	'GROUP_FOUNDER_MANAGE_EXPLAIN'	=> 'Beperk het beheer van deze groep tot eigenaren. Groepsleiders zullen nog steeds in staat zijn om deze groep met de groepsleden te kunnen bekijken.', 
	'GROUP_HIDDEN'					=> 'Verborgen',
	'GROUP_LANG'					=> 'Groepstaal',
	'GROUP_LEAD'					=> 'Groepsleiders',
	'GROUP_LEADERS_ADDED'			=> 'Nieuwe leider(s) succesvol aan de groep toegevoegd.',
	'GROUP_LEGEND'					=> 'Groep in legenda weergeven',
	'GROUP_LIST'					=> 'Huidige leden',
	'GROUP_LIST_EXPLAIN'			=> 'Dit is een complete lijst van leden die lid zijn van deze groep. Je kunt leden verwijderen (behalve van bepaalde speciale groepen) of nieuwe leden toevoegen.',
	'GROUP_MEMBERS'					=> 'Groepsleden',
	'GROUP_MEMBERS_EXPLAIN'			=> 'Dit is een volledige lijst van alle leden in deze gebruikersgroep.',
	'GROUP_MESSAGE_LIMIT'			=> 'Groep privéberichten-limiet per map',
	'GROUP_MESSAGE_LIMIT_EXPLAIN'	=> 'Deze instelling overschrijft de normale gebruikers- en maplimieten. Een waarde van 0 betekent dat de gebruikers standaardlimiet zal worden gebruikt.',
	'GROUP_MODS_ADDED'				=> 'Nieuwe groepsleiders succesvol toegevoegd.',
	'GROUP_MODS_DEMOTED'			=> 'Groepsleiders succesvol gedegradeerd.',
	'GROUP_MODS_PROMOTED'			=> 'Groepsleden succesvol gepromoveerd.',
	'GROUP_NAME'					=> 'Groepsnaam',
	'GROUP_NAME_TAKEN'				=> 'De opgegeven groepsnaam is al in gebruik, selecteer een alternatief.',
	'GROUP_OPEN'					=> 'Open',
	'GROUP_PENDING'					=> 'Wachtende leden',
	'GROUP_MAX_RECIPIENTS'			=> 'Maximaal aantal ontvangers per privébericht.',
	'GROUP_MAX_RECIPIENTS_EXPLAIN'	=> 'Het maximaal aantal ontvangers per privébericht. Als 0 is ingevuld, worden de globale instellingen gebruikt.',
	'GROUP_OPTIONS_SAVE'			=> 'Groepsbrede opties',
	'GROUP_PROMOTE'					=> 'Promoveer naar groepsleider',
	'GROUP_RANK'					=> 'Groepsrang',
	'GROUP_RECEIVE_PM'				=> 'Groep kan privéberichten ontvangen',
	'GROUP_RECEIVE_PM_EXPLAIN'		=> 'Onthoud dat verborgen groepen nooit privéberichten kunnen ontvangen, dus ook niet als dit wel ingesteld staat.',
	'GROUP_REQUEST'					=> 'Aanvraag',
	'GROUP_SETTINGS_SAVE'			=> 'Groepsinstellingen',
	'GROUP_SKIP_AUTH'				=> 'Groepsleider vrijstellen van permissies',
	'GROUP_SKIP_AUTH_EXPLAIN'		=> 'Indien ingeschakeld zal de groepsleider niet meer de permissies van de groep krijgen.',
	'GROUP_TYPE'					=> 'Groepstype',
	'GROUP_TYPE_EXPLAIN'			=> 'Dit bepaalt welke gebruikers de groep kunnen bekijken of lid van kunnen worden.',
	'GROUP_UPDATED'					=> 'Groepsinstellingen succesvol bijgewerkt.',

	'GROUP_USERS_ADDED'				=> 'Gebruikers succesvol aan de groep toegevoegd.',
	'GROUP_USERS_EXIST'				=> 'De geselecteerde gebruikers zijn al lid van deze groep.',
	'GROUP_USERS_REMOVE'			=> 'Gebruikers succesvol verwijderd van de groep en nieuwe/standaard instellingen voor die gebruikers ingesteld.',

	'MAKE_DEFAULT_FOR_ALL'	=> 'Maak standaard groep voor elk lid',
	'MEMBERS'				=> 'Leden',

	'NO_GROUP'					=> 'Geen groep opgegeven.',
	'NO_GROUPS_CREATED'			=> 'Nog geen groepen aangemaakt.',
	'NO_PERMISSIONS'			=> 'Permissies niet kopieren',
	'NO_USERS'					=> 'Je hebt geen gebruikers ingevuld.',
	'NO_USERS_ADDED'			=> 'Geen gebruikers toegevoegd aan groep.',
	'NO_VALID_USERS'			=> 'Je hebt geen bestaande gebruiker ingevuld voor deze actie.',

	'SPECIAL_GROUPS'			=> 'Voorgedefinieerde groepen',
	'SPECIAL_GROUPS_EXPLAIN'	=> 'Voorgedefinieerde groepen zijn speciale groepen. Ze kunnen niet verwijderd of rechtstreeks worden gewijzigd, maar je kunt nog wel gebruikers toevoegen en de basis-instellingen wijzigen.',

	'TOTAL_MEMBERS'				=> 'Totaal aantal leden',

	'USERS_APPROVED'				=> 'Gebruikers succesvol goedgekeurd.',
	'USER_DEFAULT'					=> 'Gebruikersstandaard',
	'USER_DEF_GROUPS'				=> 'Gebruikersgedefinieerde groepen',
	'USER_DEF_GROUPS_EXPLAIN'		=> 'Deze groepen zijn door jou of een andere beheerder aangemaakt. Je kunt lidmaatschappen beheren, evenals de groepsinstellingen en/of zelfs de groep verwijderen.',
	'USER_GROUP_DEFAULT'			=> 'Maak standaard groep',
	'USER_GROUP_DEFAULT_EXPLAIN'	=> 'Als je deze op "ja" instelt, zal dit de standaard groep voor alle groepsleden worden.',
	'USER_GROUP_LEADER'				=> 'Maak groepsleider',
));

?>