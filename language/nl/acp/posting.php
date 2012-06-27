<?php
/**
*
* posting [Dutch]
*
* @package language
* @version $Id: posting.php,v 1.0.0 2007/01/27 18:33:26 shs Exp $
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

// BBCodes
// Note to translators: you can translate everything but what's between { and }
$lang = array_merge($lang, array(
	'ACP_BBCODES_EXPLAIN'		=> 'BBCode is een speciale toepassing van HTML om betere controle te kunnen uitoefenen over wat en hoe je iets weergeeft. Op deze pagina kun je BBCodes toevoegen, bewerken en verwijderen.',
	'ADD_BBCODE'				=> 'Nieuwe BBCode toevoegen',

	'BBCODE_DANGER'				=> 'De BBCode die je probeert toe te voegen heeft een {TEXT} variabel in een HTML attribuut. Dit is een mogelijk XSS beveiligingslek. Probeer gebruik te maken van de meer beperkte {SIMPLETEXT} of {INTTEXT} types daarvoor in de plaats. Ga enkel door als je de risico’s begrijpt en overweeg het gebruik van {TEXT} te vermijden.',
	'BBCODE_DANGER_PROCEED'		=> 'Doorgaan', //'ik begrijp het risico',

	'BBCODE_ADDED'				=> 'BBCode succesvol toegevoegd.',
	'BBCODE_EDITED'				=> 'BBCode succesvol bewerkt.',
	'BBCODE_NOT_EXIST'			=> 'De BBCode die je selecteerde bestaat niet.',
	'BBCODE_HELPLINE'			=> 'Hulplijn',
	'BBCODE_HELPLINE_EXPLAIN'	=> 'Dit veld bevat de mouse-over tekst van de BBCode.',
	'BBCODE_HELPLINE_TEXT'		=> 'Hulplijn tekst',
	'BBCODE_HELPLINE_TOO_LONG'	=> 'De ingevoerde hulplijn is te lang.',

	'BBCODE_INVALID_TAG_NAME'	=> 'De BBCode-tagnaam die je selecteerde bestaat reeds.',
	'BBCODE_INVALID'			=> 'Je BBCode is gemaakt in een ongeldig formaat.',
	'BBCODE_OPEN_ENDED_TAG'		=> 'Jouw standaard BBCode moet een open- en sluittag bevatten.',
	'BBCODE_TAG'				=> 'Tag',
	'BBCODE_TAG_TOO_LONG'		=> 'De tagnaam die je selecteerde is te lang.',
	'BBCODE_TAG_DEF_TOO_LONG'	=> 'De tagomschrijving die je invoegde is te lang, gelieve deze in te korten.',
	'BBCODE_USAGE'				=> 'BBCode gebruik',
	'BBCODE_USAGE_EXAMPLE'		=> '[highlight={COLOR}]{TEXT}[/highlight]<br /><br />[font={SIMPLETEXT1}]{SIMPLETEXT2}[/font]',
	'BBCODE_USAGE_EXPLAIN'		=> 'Hier geef je op hoe de BBCode moet worden gebruikt. Vervang de tekst en variabelen met de corresponderende variabelen (%szie hieronder%s).',

	'EXAMPLE'						=> 'Voorbeeld:',
	'EXAMPLES'						=> 'Voorbeelden:',

	'HTML_REPLACEMENT'				=> 'HTML-vervanging',
	'HTML_REPLACEMENT_EXAMPLE'		=> '<span style="background-color: {COLOR};>{TEXT}</span><br /><br /><span style="font-family: {SIMPLETEXT1};>{SIMPLETEXT2}</span>',
	'HTML_REPLACEMENT_EXPLAIN'		=> 'Hier kun je de standaard HTML-vervanging opgeven. Vergeet niet de variabele terug te plaatsen die je hierboven hebt gebruikt!',

	'TOKEN'					=> 'Variabele',
	'TOKENS'				=> 'Variabelen',
	'TOKENS_EXPLAIN'		=> 'Variabelen zijn vervangers voor gebruikersinvoer. De invoer zal enkel gevalideerd worden als deze overeenkomt met de bijhorende definitie. Indien nodig kun je ze nummeren door als laatste teken, voor het haakje, een nummer toe te voegen, vb {GEBRUIKERSNAAM1}, {GEBRUIKERSNAAM2}.<br /><br />Daarnaast kun je ook iedere taalzin uit je language-map gebruiken, zoals hier: {L_<em><TAALZINNAAM></em>} waarbij <em><TAALZINNAAM></em> de naam is van de taalzin die je wilt toevoegen. Bijvoorbeeld, {L_WROTE} zal “schreef” weergeven, of een van de taal van de gebruiker afhangende vertaling. <strong>Let op dat alleen variabelen van hieronder gebruikt kunnen worden in custom BBCodes.</strong>',
	'TOKEN_DEFINITION'		=> 'Wat kan het zijn?',
	'TOO_MANY_BBCODES'		=> 'Je kunt geen BBCodes meer aanmaken. Gelieve een of meerdere BBCodes te verwijderen en dan opnieuw te proberen.',

	'tokens'	=>	array(
		'TEXT'			=> 'Alle tekst, inclusief vreemde tekens, cijfers, ed. Je kunt deze beter niet in html tags gebruiken, gebruik hiervoor IDENTIFIER, INTTEXT of SIMPLETEXT',
		'SIMPLETEXT'	=> 'Letters van het alfabet (A-Z), cijfers, spaties, komma’s, punten, mintekens, plustekens, koppeltekens en underscores',
		'IDENTIFIER'	=> 'Letters van het alfabet (A-Z), cijfers, koppeltekens en underscores',
		'INTTEXT'		=> 'Unicode letters, cijfers, spaties, komma’s, punten, mintekens, plustekens, koppeltekens, underscores en blanco ruimtes.',
		'NUMBER'		=> 'Een reeks van willekeurige cijfers',
		'EMAIL'			=> 'Een geldig e-mailadres',
		'URL'			=> 'Een geldige URL, gebruikmakend van een willekeurig protocol (http, ftp, e.d. kunnen niet voor javascriptlekken gebruikt worden. Bij geen invoer wordt automatisch “http://” gebruikt.',
		'LOCAL_URL'		=> 'Een lokale URL die relatief moet zijn aan de onderwerppagina en geen protocol of servernaam mag bevatten',
		'COLOR'			=> 'Een HTML-kleur kan zowel in numerieke vorm, bv. #FF1234, als in een <a href="http://www.w3.org/TR/CSS21/syndata.html#value-def-color" rel="external">CSS colour keyword</a> zoals bv. fuchsia.'
	)
));

// Smilies and topic icons
$lang = array_merge($lang, array(
	'ACP_ICONS_EXPLAIN'		=> 'Op deze pagina kun je de onderwerpiconen beheren. Deze worden naast de berichttitel weergegeven in de onderwerpenlijst.',
	'ACP_SMILIES_EXPLAIN'	=> 'Smilies zijn kleine afbeeldingen die dienen om de gemoedstoestand van een gebruiker uit te drukken. Op deze pagina kun je de smilies beheren.',
	'ADD_SMILIES'			=> 'Meerdere smilies toevoegen',
	'ADD_SMILEY_CODE'		=> 'Nieuwe smiliecode toevoegen',
	'ADD_ICONS'				=> 'Meerdere iconen toevoegen',
	'AFTER_ICONS'			=> 'Na %s',
	'AFTER_SMILIES'			=> 'Na %s',

	'CODE'						=> 'Code',
	'CURRENT_ICONS'				=> 'Huidige iconen',
	'CURRENT_ICONS_EXPLAIN'		=> 'Wat te doen met de huidige geïnstalleerde iconen?',
	'CURRENT_SMILIES'			=> 'Huidige smilies',
	'CURRENT_SMILIES_EXPLAIN'	=> 'Wat te doen met de huidige geïnstalleerde smilies?',

	'DISPLAY_ON_POSTING'		=> 'Toon bij het plaatsen van een bericht',
	'DISPLAY_POSTING'			=> 'Op bericht-plaats pagina',
	'DISPLAY_POSTING_NO'		=> 'Niet op bericht-plaats pagina',



	'EDIT_ICONS'				=> 'Iconen bewerken',
	'EDIT_SMILIES'				=> 'Smilies bewerken',
	'EMOTION'					=> 'Gemoedstoestand',
	'EXPORT_ICONS'				=> 'Exporteer en download icons.pak',
	'EXPORT_ICONS_EXPLAIN'		=> '%sWanneer je deze link aanklikt, zullen de instellingen als <samp>icons.pak</samp> worden opgeslagen.%s.',
	'EXPORT_SMILIES'			=> 'Exporteer en download smilies.pak',
	'EXPORT_SMILIES_EXPLAIN'	=> '%sWanneer je deze link aanklikt, zullen de instellingen als <samp>smilies.pak</samp> worden opgeslagen.%s.',

	'FIRST'			=> 'Eerst',

	'ICONS_ADD'				=> 'Nieuw icoon toevoegen',
	'ICONS_NONE_ADDED'		=> 'Er zijn geen iconen toegevoegd.',
	'ICONS_ONE_ADDED'		=> 'Het icoon is toegevoegd.',
	'ICONS_ADDED'			=> 'De iconen zijn toegevoegd.',
	'ICONS_CONFIG'			=> 'Icooninstellingen',
	'ICONS_DELETED'			=> 'Het icoon is verwijderd.',
	'ICONS_EDIT'			=> 'Icoon bewerken',
	'ICONS_ONE_EDITED'		=> 'Het icoon is bijgewerkt.',
	'ICONS_NONE_EDITED'		=> 'Er zijn geen iconen bijgewerkt.',
	'ICONS_EDITED'			=> 'De iconen zijn bijgewerkt.',
	'ICONS_HEIGHT'			=> 'Icoonhoogte',
	'ICONS_IMAGE'			=> 'Icoonafbeelding',
	'ICONS_IMPORTED'		=> 'De icoonpakketten zijn geïnstalleerd.',
	'ICONS_IMPORT_SUCCESS'	=> 'De icoonpakketten zijn geïmporteerd.',
	'ICONS_LOCATION'		=> 'Icoonlocatie',
	'ICONS_NOT_DISPLAYED'	=> 'De volgende iconen worden niet op de berichtenpagina weergegeven',
	'ICONS_ORDER'			=> 'Icoonvolgorde',
	'ICONS_URL'				=> 'Icoonafbeeldingbestand',
	'ICONS_WIDTH'			=> 'Icoonbreedte',
	'IMPORT_ICONS'			=> 'Installeer icoonpakket',
	'IMPORT_SMILIES'		=> 'Installeer smiliespakket',

	'KEEP_ALL'			=> 'Allemaal behouden',

	'MASS_ADD_SMILIES'	=> 'Meerdere smilies toevoegen',

	'NO_ICONS_ADD'		=> 'Er zijn geen beschikbare iconen om toe te voegen.',
	'NO_ICONS_EDIT'		=> 'Er zijn geen beschikbare iconen om te wijzigen.',
	'NO_ICONS_EXPORT'	=> 'Je hebt geen iconen waarmee je een pakket kunt maken.',
	'NO_ICONS_PAK'		=> 'Geen icoonpakketten gevonden.',
	'NO_SMILIES_ADD'	=> 'Er zijn geen beschikbare smilies om toe te voegen.',
	'NO_SMILIES_EDIT'	=> 'Er zijn geen beschikbare smilies om te wijzigen.',
	'NO_SMILIES_EXPORT'	=> 'Je hebt geen smilies waarmee je een pakket kunt maken.',
	'NO_SMILIES_PAK'	=> 'Geen smiliespakketten gevonden.',

	'PAK_FILE_NOT_READABLE'		=> 'Kan het <samp>.pak</samp>-bestand niet lezen.',

	'REPLACE_MATCHES'	=> 'Vervang overeenkomstigen',

	'SELECT_PACKAGE'			=> 'Selecteer een pakketbestand',
	'SMILIES_ADD'				=> 'Nieuwe smilie toevoegen',
	'SMILIES_NONE_ADDED'		=> 'Er zijn geen smilies toegevoegd.',
	'SMILIES_ONE_ADDED'			=> 'De smilies zijn toegevoegd.',
	'SMILIES_ADDED'				=> 'De smilies zijn toegevoegd.',
	'SMILIES_CODE'				=> 'Smilie-code',
	'SMILIES_CONFIG'			=> 'Smilie-instellingen',
	'SMILIES_DELETED'			=> 'De smilie is verwijderd.',
	'SMILIES_EDIT'				=> 'Smilie bewerken',
	'SMILIE_NO_CODE'			=> 'De smilie “%s” werd genegeerd, omdat er geen code was opgegeven.',
	'SMILIE_NO_EMOTION'			=> 'De smilie “%s” werd genegeerd, omdat er geen emotie was ingevoerd.',
	'SMILIE_NO_FILE'			=> 'De smilie “%s” werd genegeerd, omdat het bestand ontbreekt.',
	'SMILIES_NONE_EDITED'		=> 'Er zijn geen smilies bewerkt.',
	'SMILIES_ONE_EDITED'		=> 'De smilie is bijgewerkt.',
	'SMILIES_EDITED'			=> 'De smilies zijn bijgewerkt.',
	'SMILIES_EMOTION'			=> 'Gemoedstoestand',
	'SMILIES_HEIGHT'			=> 'Smilie-hoogte',
	'SMILIES_IMAGE'				=> 'Smilie-afbeelding',
	'SMILIES_IMPORTED'			=> 'Het smilie-pakket is geïnstalleerd.',
	'SMILIES_IMPORT_SUCCESS'	=> 'Het smilie-pakket is geïmporteerd.',
	'SMILIES_LOCATION'			=> 'Smilie-locatie',
	'SMILIES_NOT_DISPLAYED'		=> 'De volgende smilies worden niet weergegeven op de berichtenpagina',
	'SMILIES_ORDER'				=> 'Smilie-volgorde',
	'SMILIES_URL'				=> 'Smilie-afbeeldingbestand',
	'SMILIES_WIDTH'				=> 'Smilie-breedte',

	'TOO_MANY_SMILIES'			=> 'De limiet van %d smilies is bereikt.',

	'WRONG_PAK_TYPE'	=> 'Het opgegeven pakket bevat niet de vereiste data.',
));

// Word censors
$lang = array_merge($lang, array(
	'ACP_WORDS_EXPLAIN'		=> 'Via dit paneel kun je woorden toevoegen, aanpassen en verwijderen die daarna automatisch worden gecensureerd op jouw forums. Voor personen blijft het toegestaan om zich te registreren met een gebruikersnaam die deze woorden bevatten. Wildcards (*) zijn toegestaan in het invoerveld, bijvoorbeeld *test* is gelijk aan detestable, test* is gelijk aan testing, *test is gelijk aan detest.',
	'ADD_WORD'				=> 'Nieuw woord toevoegen',

	'EDIT_WORD'		=> 'Woordcensuur bewerken',
	'ENTER_WORD'	=> 'Je moet een woord en zijn vervanger invoeren.',

	'NO_WORD'	=> 'Geen woord geselecteerd om te bewerken.',

	'REPLACEMENT'	=> 'Vervanger',

	'UPDATE_WORD'	=> 'Woordcensuur bijwerken',

	'WORD'				=> 'Woord',
	'WORD_ADDED'		=> 'Het woord is toegevoegd.',
	'WORD_REMOVED'		=> 'Het woord is verwijderd.',
	'WORD_UPDATED'		=> 'Het woord is bijgewerkt.',
));

// Ranks
$lang = array_merge($lang, array(
	'ACP_RANKS_EXPLAIN'		=> 'Van hieruit kun je de rangen beheren. Je kunt ook aangepaste rangen maken die via het gebruikersbeheer kunnen worden toegekend.',
	'ADD_RANK'				=> 'Nieuwe rang toevoegen',

	'MUST_SELECT_RANK'		=> 'Je moet een rang selecteren.',

	'NO_ASSIGNED_RANK'		=> 'Geen speciale rang toegekend.',
	'NO_RANK_TITLE'			=> 'Je hebt geen rangtitel opgegeven.',
	'NO_UPDATE_RANKS'		=> 'De rang werd succesvol verwijderd. Toch is de rang niet bij de gebruikers bijgewerkt. Je moet ze handmatig resetten bij deze gebruikers.',

	'RANK_ADDED'			=> 'De rang is toegevoegd.',
	'RANK_IMAGE'			=> 'Rang-afbeelding',
	'RANK_IMAGE_EXPLAIN'	=> 'Gebruikt om kleine afbeeldingen op te geven die samengaan met de rang. Het pad is relatief aan de phpBB-root (waar config.php / index.php / viewtopic.php / enz. staan).',
	'RANK_IMAGE_IN_USE'		=> '(In gebruik)',
	'RANK_MINIMUM'			=> 'Minimaal aantal berichten',
	'RANK_REMOVED'			=> 'De rang is verwijderd.',
	'RANK_SPECIAL'			=> 'Stel als speciale rang in',
	'RANK_TITLE'			=> 'Rangtitel',
	'RANK_UPDATED'			=> 'De rang is bijgewerkt.',
));

// Disallow Usernames
$lang = array_merge($lang, array(
	'ACP_DISALLOW_EXPLAIN'	=> 'Hier kun je aangeven welke gebruikersnamen niet zijn toegestaan. Niet-toegestane gebruikersnamen mogen gebruik maken van een wildcard (*).',
	'ADD_DISALLOW_EXPLAIN'	=> 'Je kunt een gebruikersnaam verbieden door een * te gebruiken voor een willekeurig teken.',
	'ADD_DISALLOW_TITLE'	=> 'Te weigeren gebruikersnaam toevoegen',

	'DELETE_DISALLOW_EXPLAIN'	=> 'Je kunt een geweigerde gebruikersnaam verwijderen door de naam te selecteren in deze lijst en dan te bevestigen.',
	'DELETE_DISALLOW_TITLE'		=> 'Verwijder een geweigerde gebruikersnaam',
	'DISALLOWED_ALREADY'		=> 'De ingevoerde naam wordt al geweigerd.',
	'DISALLOWED_DELETED'		=> 'De geweigerde gebruikersnaam is verwijderd.',
	'DISALLOW_SUCCESSFUL'		=> 'De geweigerde gebruikersnaam is toegevoegd.',

	'NO_DISALLOWED'				=> 'Geen geweigerde gebruikersnamen',
	'NO_USERNAME_SPECIFIED'		=> 'Je hebt geen gebruikersnaam geselecteerd of toegevoegd.',
));

// Reasons
$lang = array_merge($lang, array(
	'ACP_REASONS_EXPLAIN'	=> 'Van hieruit kun je de redenen in rapporten en de weigerberichten beheren, wanneer een bericht geweigerd wordt. Er is een standaardreden, met * gemarkeerd, die je niet kunt verwijderen.',
	'ADD_NEW_REASON'		=> 'Nieuwe reden toevoegen',
	'AVAILABLE_TITLES'		=> 'Beschikbare vertaalde redenen',

	'IS_NOT_TRANSLATED'			=> 'Reden is <strong>niet</strong> vertaald.',
	'IS_NOT_TRANSLATED_EXPLAIN'	=> 'Reden is <strong>niet</strong> vertaald. Als je een vertaalde vorm wilt aanmaken, selecteer dan de correcte key vanuit het taalbestand.',
	'IS_TRANSLATED'				=> 'Reden is vertaald.',
	'IS_TRANSLATED_EXPLAIN'		=> 'Reden is vertaald. Indien de titel die je hier invoert in het taalbestand is opgegeven, zal die zin gebruikt worden.',

	'NO_REASON'					=> 'Reden werd niet gevonden.',
	'NO_REASON_INFO'			=> 'Je moet een titel en omschrijving voor deze reden opgeven.',
	'NO_REMOVE_DEFAULT_REASON'	=> 'Je kunt de standaardreden "andere" niet verwijderen.',

	'REASON_ADD'				=> 'Rapport/weigeringsreden toevoegen',
	'REASON_ADDED'				=> 'Rapport/weigeringsreden toegevoegd.',
	'REASON_ALREADY_EXIST'		=> 'Een reden met deze titel bestaat al. Gelieve een andere titel voor deze reden op te geven.',
	'REASON_DESCRIPTION'		=> 'Reden omschrijving',
	'REASON_DESC_TRANSLATED'	=> 'Weergegeven reden omschrijving',
	'REASON_EDIT'				=> 'Rapport/weigering reden bewerken',
	'REASON_EDIT_EXPLAIN'		=> 'Hier kun je een reden toevoegen of bewerken. Indien de reden vertaald is, zal die gebruikt worden in plaats van degene die je hier opgeeft.',
	'REASON_REMOVED'			=> 'Rapport/weigering reden verwijderd.',
	'REASON_TITLE'				=> 'Reden titel',
	'REASON_TITLE_TRANSLATED'	=> 'Weergegeven reden titel',
	'REASON_UPDATED'			=> 'Rapport/weigering bijgewerkt.',

	'USED_IN_REPORTS'		=> 'Gebruikt in rapporten',
));

?>