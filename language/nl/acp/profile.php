<?php
/**
*
* acp_profile [Dutch]
*
* @package language
* @version $Id: profile.php,v 1.0.0 2007/01/17 18:40:29 acydburn Exp $
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

// Custom profile fields
$lang = array_merge($lang, array(
	'ADDED_PROFILE_FIELD'	=> 'Profielveld succesvol toegevoegd.',
	'ALPHA_ONLY'			=> 'Alleen cijfers en letters',
	'ALPHA_SPACERS'			=> 'Cijfers, letters en spaties',
	'ALWAYS_TODAY'			=> 'Altijd de huidige tijd',

	'BOOL_ENTRIES_EXPLAIN'	=> 'Vul nu de keuzes in',
	'BOOL_TYPE_EXPLAIN'		=> 'Definieer het type: checkbox of radiobuttons. Een checkbox zal alleen worden weergegeven als het is aangegeven voor een gebruiker. In dat geval zal de tweede taaloptie gebruikt worden. Radiobuttons weergave wordt alleen bepaalt door de waarde.',

	'CHANGED_PROFILE_FIELD'		=> 'Profielveld succesvol gewijzigd.',
	'CHARS_ANY'					=> 'Ieder teken',
	'CHECKBOX'					=> 'Checkbox',
	'COLUMNS'					=> 'Kolommen',
	'CP_LANG_DEFAULT_VALUE'		=> 'Standaardwaarde',
	'CP_LANG_EXPLAIN'			=> 'Veld omschrijving',
	'CP_LANG_EXPLAIN_EXPLAIN'	=> 'De uitleg van het veld zoals getoond aan de gebruiker.',
	'CP_LANG_NAME'				=> 'Naam/titel van het veld zoals getoond aan de gebruiker',
	'CP_LANG_OPTIONS'			=> 'Keuzes',
	'CREATE_NEW_FIELD'			=> 'Voeg nieuw veld toe',
	'CUSTOM_FIELDS_NOT_TRANSLATED'	=> 'Tenminste één profielveld is nog niet vertaald. Vul de benodigde info in door te klikken op de "vertaal" link.',

	'DEFAULT_ISO_LANGUAGE'			=> 'Standaardtaal [%s]',
	'DEFAULT_LANGUAGE_NOT_FILLED'	=> 'De taalzinnen van de standaard taal bevinden zich niet in dit profielveld.',
	'DEFAULT_VALUE'					=> 'Standaardwaarde',
	'DELETE_PROFILE_FIELD'			=> 'Verwijder profielveld',
	'DELETE_PROFILE_FIELD_CONFIRM'	=> 'Weet je zeker dat je dit profielveld wilt verwijderen?',
	'DISPLAY_AT_PROFILE'			=> 'Weergeven in het gebruikerspaneel',
	'DISPLAY_AT_PROFILE_EXPLAIN'	=> 'De gebruiker kan het profielveld binnenin het gebruikerspaneel wijzigen.',
	'DISPLAY_AT_REGISTER'			=> 'Weergeven op de registratiepagina',
	'DISPLAY_AT_REGISTER_EXPLAIN'	=> 'Wanneer deze optie is ingeschakeld, zal het veld worden weergegeven tijdens het registreren.',
	'DISPLAY_ON_VT'					=> 'Bekijk in `bekijk onderwerp´ scherm',
	'DISPLAY_ON_VT_EXPLAIN'			=> 'Als deze optie is ingeschakeld, zal het veld worden getoond in het miniprofiel bij een onderwerp.',
	'DISPLAY_PROFILE_FIELD'			=> 'Profielveld publiek weergeven',
	'DISPLAY_PROFILE_FIELD_EXPLAIN'	=> 'De profielvelden zullen worden getoond op alle locaties aangegeven in de serverprestatie instellingen. Indien je voor "nee" hebt gekozen, zal het veld van onderwerppagina’s, profielen en de ledenlijst niet worden getoond.',
	'DROPDOWN_ENTRIES_EXPLAIN'		=> 'Vul hier de keuzes in, elke keuze op een nieuwe regel.',

	'EDIT_DROPDOWN_LANG_EXPLAIN'	=> 'Je kunt je instellingen altijd aanpassen. We adviseren om je aanpassingen eerst te testen, alvorens deze weer te wijzigen. Globale instellingen staan altijd boven gebruikers-gedefinieerde instellingen.',
	'EMPTY_FIELD_IDENT'				=> 'Leeg veld identificatie',
	'EMPTY_USER_FIELD_NAME'			=> 'Vul een veldnaam in',
	'ENTRIES'						=> 'Regels',
	'EVERYTHING_OK'					=> 'Alles oké',

	'FIELD_BOOL'				=> 'Boolean (ja/nee)',
	'FIELD_DATE'				=> 'Datum',
	'FIELD_DESCRIPTION'			=> 'Veld omschrijving',
	'FIELD_DESCRIPTION_EXPLAIN'	=> 'De uitleg van het veld zoals getoond aan de gebruiker.',
	'FIELD_DROPDOWN'			=> 'Dropdown box',
	'FIELD_IDENT'				=> 'Veld identificatie',
	'FIELD_IDENT_ALREADY_EXIST'	=> 'De gekozen identificatie voor het veld bestaat al. Kies een andere naam a.u.b.',
	'FIELD_IDENT_EXPLAIN'		=> 'De veldnaam wordt gebruikt om het profielveld zowel in de database als in de templates te herkennen.',
	'FIELD_INT'					=> 'Nummers',
	'FIELD_LENGTH'				=> 'Lengte van het veld',
	'FIELD_NOT_FOUND'			=> 'Profielveld werd niet gevonden.',
	'FIELD_STRING'				=> 'Enkel tekstveld',
	'FIELD_TEXT'				=> 'Tekstruimte',
	'FIELD_TYPE'				=> 'Veldtype',
	'FIELD_TYPE_EXPLAIN'		=> 'Het achteraf aanpassen van het veldtype is niet mogelijk.',
	'FIELD_VALIDATION'			=> 'Veldvalidatie',
	'FIRST_OPTION'				=> 'Eerste keuze',

	'HIDE_PROFILE_FIELD'			=> 'Verberg profielveld',
	'HIDE_PROFILE_FIELD_EXPLAIN'	=> 'Verberg het profielveld voor alle andere gebruikers, behalve voor de gebruiker, beheerders en moderators, waarvoor dit veld standaard zichtbaar is. Indien de optie `tonen in gebruikerspaneel´ is uitgeschakeld, kan de gebruiker dit veld niet meer zien of wijzigen en kan dit veld alleen nog worden aangepast door een beheerder.',

	'INVALID_CHARS_FIELD_IDENT'	=> 'Veld identificatie mag alleen kleine letters en _ bevatten',
	'INVALID_FIELD_IDENT_LEN'	=> 'Veld identificatie mag maximaal 17 tekens lang zijn.',
	'ISO_LANGUAGE'				=> 'Taal [%s]',

	'LANG_SPECIFIC_OPTIONS'		=> 'Specifieke taalkeuzes [<strong>%s</strong>]',

	'MAX_FIELD_CHARS'		=> 'Maximaal aantal karakters',
	'MAX_FIELD_NUMBER'		=> 'Hoogst toegestane',
	'MIN_FIELD_CHARS'		=> 'Minimaal aantal karakters',
	'MIN_FIELD_NUMBER'		=> 'Minst toegestane',

	'NO_FIELD_ENTRIES'			=> 'Geen ingevulde waarden',
	'NO_FIELD_ID'				=> 'Geen veld-ID opgegeven.',
	'NO_FIELD_TYPE'				=> 'Geen veldtype opgegeven.',
	'NO_VALUE_OPTION'			=> 'Keuze gelijk aan de niet ingevulde waarde',
	'NO_VALUE_OPTION_EXPLAIN'	=> 'Waarde voor een niet ingevuld veld. Als het veld vereist is zal de gebruiker een foutmelding krijgen.',
	'NUMBERS_ONLY'				=> 'Alleen cijfers (0-9)',

	'PROFILE_BASIC_OPTIONS'		=> 'Basiskeuzes',
	'PROFILE_FIELD_ACTIVATED'	=> 'Profielveld succesvol geactiveerd.',
	'PROFILE_FIELD_DEACTIVATED'	=> 'Profielveld succesvol gedeactiveerd.',
	'PROFILE_LANG_OPTIONS'		=> 'Specifieke taalkeuzes',
	'PROFILE_TYPE_OPTIONS'		=> 'Specifieke profieltype keuzes',

	'RADIO_BUTTONS'				=> 'Radiobuttons',
	'REMOVED_PROFILE_FIELD'		=> 'Profielveld succesvol verwijderd.',
	'REQUIRED_FIELD'			=> 'Vereist veld',
	'REQUIRED_FIELD_EXPLAIN'	=> 'Dit is een verplicht veld. Indien dit veld voor de gebruiker niet beschikbaar was tijdens de registratie, zal dit veld verplicht zijn op het moment dat de gebruiker zijn/haar profiel aanpast.',
	'ROWS'						=> 'Regels',

	'SAVE'							=> 'Bewaar',
	'SECOND_OPTION'					=> 'Tweede keuze',
	'STEP_1_EXPLAIN_CREATE'			=> 'Je kunt hier de eerste basisparameters invullen van je nieuwe profielveld. Deze info is nodig in de tweede stap, waar je de overige opties kunt instellen.',
	'STEP_1_EXPLAIN_EDIT'			=> 'Hier kun je de basisparameters van je profielveld wijzigen. De relevante opties worden in de tweede stap berekend.',
	'STEP_1_TITLE_CREATE'			=> 'Voeg profielveld toe',
	'STEP_1_TITLE_EDIT'				=> 'Wijzig profielveld',
	'STEP_2_EXPLAIN_CREATE'			=> 'Hier kun je wijzigingen aanbrengen in de standaardinstellingen.',
	'STEP_2_EXPLAIN_EDIT'			=> 'Hier kun je enkele standaardinstellingen wijzigen.<br /><strong>Deze wijzigingen hebben geen invloed op reeds gewijzigde instellingen door de gebruikers</strong>.',
	'STEP_2_TITLE_CREATE'			=> 'Specifieke keuzes m.b.t. profieltype',
	'STEP_2_TITLE_EDIT'				=> 'Specifieke keuzes m.b.t. profieltype',
	'STEP_3_EXPLAIN_CREATE'			=> 'Indien je meer dan 1 taal gebruikt, zul je de overige taalbestanden ook moeten bijwerken. Het profielveld zal standaard de hoofdtaal gebruiken.',
	'STEP_3_EXPLAIN_EDIT'			=> 'Indien je meer dan 1 taal gebruikt, kun je nu ook de resterende taalbestanden toevoegen of wijzigen. Het profielveld zal standaard werken met de hoofdtaal.',
	'STEP_3_TITLE_CREATE'			=> 'Resterende taaldefinities',
	'STEP_3_TITLE_EDIT'				=> 'Taaldefinities',
	'STRING_DEFAULT_VALUE_EXPLAIN'	=> 'Vul een standaardzin in om weer te geven. Laat het leeg als er niets hoeft te worden weergegeven.',

	'TEXT_DEFAULT_VALUE_EXPLAIN'	=> 'Vul een standaardtekst in om weer te geven. Laat het leeg als er niets hoeft te worden weergegeven.',
	'TRANSLATE'						=> 'Vertaal',

	'USER_FIELD_NAME'	=> 'Veldnaam (titel) zoals getoond wordt aan de gebruiker',

	'VISIBILITY_OPTION'				=> 'Weergave instellingen',
));

?>