<?php
/**
*
* posting [Dutch]
*
* @package language
* @version $Id: posting.php,v 1.0.0 2006/08/06 17:25:29 naderman Exp $
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
	'ADD_ATTACHMENT'			=> 'Bijlage toevoegen',
	'ADD_ATTACHMENT_EXPLAIN'	=> 'Als je geen bijlage aan je bericht wilt toevoegen, laat deze velden dan leeg.',
	'ADD_FILE'					=> 'Bestand toevoegen',
	'ADD_POLL'					=> 'Poll toevoegen',
	'ADD_POLL_EXPLAIN'			=> 'Als je geen poll aan je onderwerp wilt toevoegen, laat deze velden dan leeg.',
	'ALREADY_DELETED'			=> 'Dit bericht is al verwijderd.',
	'ATTACH_QUOTA_REACHED'		=> 'De bijlagequota is bereikt.',
	'ATTACH_SIG'				=> 'Voeg mijn onderschrift toe (te wijzigen via het gebruikerspaneel)',

	'BBCODE_A_HELP'				=> 'BBCode geüploade bijlage: [attachment=]bestandsnaam.ext[/attachment]',
	'BBCODE_B_HELP'				=> 'Vetgedrukte tekst: [b]tekst[/b]',
	'BBCODE_C_HELP'				=> 'Codeweergave: [code]code[/code]',
	'BBCODE_E_HELP'				=> 'Lijst: voeg lijstelement toe',
	'BBCODE_F_HELP'				=> 'Lettergrootte: [size=85]kleine tekst[/size]',
	'BBCODE_IS_OFF'				=> '%sBBCode%s staat <em>UIT</em>',
	'BBCODE_IS_ON'				=> '%sBBCode%s staat <em>AAN</em>',
	'BBCODE_I_HELP'				=> 'Cursieve tekst: [i]tekst[/i]',
	'BBCODE_L_HELP'				=> 'Lijst: [list]tekst[/list]',
	'BBCODE_LISTITEM_HELP'		=> 'Lijstpunt: [*]tekst[/*]',
	'BBCODE_O_HELP'				=> 'Geordende lijst: [list=]tekst[/list]',
	'BBCODE_P_HELP'				=> 'Afbeelding: [img]http://www.phpbb.nl/fotos/foto.jpg[/img]',
	'BBCODE_Q_HELP'				=> 'Citeer tekst: [quote]tekst[/quote]',
	'BBCODE_S_HELP'				=> 'Tekstkleur: [color=red]tekst[/color] Tip: je kunt ook dit gebruiken: #FF0000',
	'BBCODE_U_HELP'				=> 'Onderstreepte tekst: [u]tekst[/u]',
	'BBCODE_W_HELP'				=> 'URL: [url]http://url[/url] of [url=http://url]URL tekst[/url]',
	'BBCODE_D_HELP'				=> 'Flash: [flash=hoogte,breedte]http://url[/flash]',
	'BUMP_ERROR'				=> 'Je kunt dit onderwerp niet zo snel na het laatste bericht bumpen.',

	'CANNOT_DELETE_REPLIED'		=> 'Je kunt alleen berichten verwijderen waarop nog niet is gereageerd.',
	'CANNOT_EDIT_POST_LOCKED'	=> 'Dit bericht is gesloten. Je kunt het daarom niet meer bewerken.',
	'CANNOT_EDIT_TIME'			=> 'Je kunt dit bericht niet meer bewerken of verwijderen.',
	'CANNOT_POST_ANNOUNCE'		=> 'Je mag geen mededelingen plaatsen.',
	'CANNOT_POST_STICKY'		=> 'Je mag geen sticky onderwerpen plaatsen.',
	'CHANGE_TOPIC_TO'			=> 'Verander onderwerptype naar',
	'CLOSE_TAGS'				=> 'Sluit tags',
	'CURRENT_TOPIC'				=> 'Huidige onderwerp',

	'DELETE_FILE'				=> 'Verwijder bestand',
	'DELETE_MESSAGE'			=> 'Verwijder bericht',
	'DELETE_MESSAGE_CONFIRM'	=> 'Weet je zeker dat je dit bericht wilt verwijderen?',
	'DELETE_OWN_POSTS'			=> 'Je kunt alleen je eigen berichten verwijderen.',
	'DELETE_POST_CONFIRM'		=> 'Weet je zeker dat je dit bericht wilt verwijderen?',
	'DELETE_POST_WARN'			=> 'Verwijderde berichten kunnen niet meer worden hersteld.',
	'DISABLE_BBCODE'			=> 'Schakel BBCode uit',
	'DISABLE_MAGIC_URL'			=> 'URL’s niet automatisch omzetten',
	'DISABLE_SMILIES'			=> 'Smilies uitschakelen',
	'DISALLOWED_CONTENT'		=> 'De upload is afgewezen omdat het bestand als mogelijk onveilig is geïdentificeerd.',
	'DISALLOWED_EXTENSION'		=> 'De extensie %s is niet toegestaan.',
	'DRAFT_LOADED'				=> 'Het concept werd in het tekstveld geladen. Je kunt het bericht nu beëindigen en plaatsen.<br />Je concept wordt na het plaatsen van het bericht verwijderd.',
	'DRAFT_LOADED_PM'			=> 'Het concept werd in het tekstveld geladen. Je kunt het privébericht nu beëindigen en plaatsen.<br />Je concept wordt na het plaatsen van het privébericht verwijderd.',
	'DRAFT_SAVED'				=> 'Het concept is opgeslagen.',
	'DRAFT_TITLE'				=> 'Concepttitel',

	'EDIT_REASON'		=> 'Reden voor wijziging',
	'EMPTY_FILEUPLOAD'	=> 'Het geüploade bestand is leeg.',
	'EMPTY_MESSAGE'		=> 'Je hebt nog geen bericht geschreven.',
	'EMPTY_REMOTE_DATA'			=> 'Het bestand kon niet worden geüpload, probeer het nog eens handmatig te uploaden.',

	'FLASH_IS_OFF'				=> '[flash] staat <em>UIT</em>',
	'FLASH_IS_ON'				=> '[flash] staat <em>AAN</em>',
	'FLOOD_ERROR'				=> 'Je kunt niet zo snel na je laatste bericht weer een bericht plaatsen.',
	'FONT_COLOR'				=> 'Tekstkleur',
	'FONT_COLOR_HIDE'			=> 'Tekstkleur verbergen',
	'FONT_HUGE'					=> 'Extra groot',
	'FONT_LARGE'				=> 'Groot',
	'FONT_NORMAL'				=> 'Normaal',
	'FONT_SIZE'					=> 'Lettergrootte',
	'FONT_SMALL'				=> 'Klein',
	'FONT_TINY'					=> 'Extra klein',

	'GENERAL_UPLOAD_ERROR'		=> 'Je kunt geen bijlage uploaden naar %s.',

	'IMAGES_ARE_OFF'			=> '[img] staat <em>UIT</em>',
	'IMAGES_ARE_ON'				=> '[img] staat <em>AAN</em>',
	'INVALID_FILENAME'			=> '%s is een ongeldige bestandsnaam.',

	'LOAD'						=> 'Laad',
	'LOAD_DRAFT'				=> 'Laad concept',
	'LOAD_DRAFT_EXPLAIN'		=> 'Hier is het mogelijk om een concept te selecteren waarmee je verder kunt gaan. Je huidige bericht wordt geannuleerd en alle huidige berichtinhoud wordt verwijderd. Tonen, bewerken en verwijderen van concepten kan in je gebruikerspaneel.',
	'LOGIN_EXPLAIN_BUMP'		=> 'Je moet ingelogd zijn om het onderwerp te bumpen.',
	'LOGIN_EXPLAIN_DELETE'		=> 'Je moet ingelogd zijn om berichten te kunnen verwijderen.',
	'LOGIN_EXPLAIN_POST'		=> 'Je moet ingelogd zijn om berichten te kunnen plaatsen.',
	'LOGIN_EXPLAIN_QUOTE'		=> 'Je moet ingelogd zijn om te kunnen citeren.',
	'LOGIN_EXPLAIN_REPLY'		=> 'Je moet ingelogd zijn om te kunnen antwoorden.',

	'MAX_FONT_SIZE_EXCEEDED'	=> 'Je mag alleen gebruik maken van lettertypes tot grootte %1$d.',
	'MAX_FLASH_HEIGHT_EXCEEDED'	=> 'Flashbestanden mogen maximaal %1$d pixels hoog zijn.',
	'MAX_FLASH_WIDTH_EXCEEDED'	=> 'Flashbestanden mogen maximaal %1$d pixels breed zijn.',
	'MAX_IMG_HEIGHT_EXCEEDED'	=> 'Afbeeldingen mogen maximaal %1$d pixels hoog zijn.',
	'MAX_IMG_WIDTH_EXCEEDED'	=> 'Afbeeldingen mogen maximaal %1$d pixels breed zijn.',

	'MESSAGE_BODY_EXPLAIN'		=> 'Schrijf hier je bericht. Het mag maximaal <strong>%d</strong> tekens bevatten.',
	'MESSAGE_DELETED'			=> 'Je bericht is verwijderd.',
	'MORE_SMILIES'				=> 'Toon meer smilies',

	'NOTIFY_REPLY'				=> 'Breng mij op de hoogte van nieuwe reacties',
	'NOT_UPLOADED'				=> 'Het bestand kan niet worden geüpload.',
	'NO_DELETE_POLL_OPTIONS'	=> 'Je kunt de pollopties waarop al is gestemd niet meer verwijderen.',
	'NO_PM_ICON'				=> 'Geen PB-icoon',
	'NO_POLL_TITLE'				=> 'Je moet de poll een naam geven.',
	'NO_POST'					=> 'Het opgevraagde bericht bestaat niet (meer).',
	'NO_POST_MODE'				=> 'Geen berichtmodus gespecificeerd.',

	'PARTIAL_UPLOAD'			=> 'Het bestand is niet volledig geüpload.',
	'PHP_SIZE_NA'				=> 'De bestandsgrootte van de bijlage is overschreden.<br />De maximale, in php.ini gedefinieerde grootte kan niet gelezen worden.',
	'PHP_SIZE_OVERRUN'			=> 'De bestandsgrootte van de bijlage is overschreden, de maximale uploadgrootte is %1$d %2$s.<br />Hou er rekening mee dat het zo is ingesteld in php.ini en dat kan niet worden overschreven.',
	'PLACE_INLINE'				=> 'Plaats in bericht',
	'POLL_DELETE'				=> 'Verwijder poll',
	'POLL_FOR'					=> 'Poll geldig tot',
	'POLL_FOR_EXPLAIN'			=> 'Typ 0 of laat het veld leeg om de poll geen einddatum te geven.',
	'POLL_MAX_OPTIONS'			=> 'Opties per gebruiker',
	'POLL_MAX_OPTIONS_EXPLAIN'	=> 'Het aantal opties dat een gebruiker mag aanvinken als hij/zij een stem uitbrengt.',
	'POLL_OPTIONS'				=> 'Poll opties',
	'POLL_OPTIONS_EXPLAIN'		=> 'Plaats elke optie op een nieuwe regel. Je mag <strong>%d</strong> opties invoeren.',
	'POLL_OPTIONS_EDIT_EXPLAIN'	=> 'Plaats elke optie op een nieuwe regel. Je mag <strong>%d</strong> opties invoeren. Als je een optie toevoegt of verwijdert, worden alle vorige opties gereset.',
	'POLL_QUESTION'				=> 'Poll vraag',
	'POLL_TITLE_TOO_LONG'		=> 'De poll titel moet korter dan 100 tekens zijn.',
	'POLL_TITLE_COMP_TOO_LONG'	=> 'De poll-titel is te lang. Kijk of je b.v. smilies en/of BBCodes kunt verwijderen.',
	'POLL_VOTE_CHANGE'			=> 'Sta stemmen opnieuw toe',
	'POLL_VOTE_CHANGE_EXPLAIN'	=> 'Indien ingeschakeld, kunnen gebruikers hun stem herzien en opnieuw stemmen.',
	'POSTED_ATTACHMENTS'		=> 'Geplaatste bijlagen',
	'POST_APPROVAL_NOTIFY'		=> 'Je zult een bevestiging krijgen wanneer je bericht is goedgekeurd.',
	'POST_CONFIRMATION'			=> 'Bevestigen van het bericht',
	'POST_CONFIRM_EXPLAIN'		=> 'Om automatische berichten te voorkomen, vereist het forum een bevestigingscode. De code wordt in de afbeelding hieronder weergegeven. Als je kleurenblind bent of een andere reden hebt waardoor je deze code niet kunt lezen, neem dan contact op met de %sbeheerder%s.',
	'POST_DELETED'				=> 'Je bericht is verwijderd.',
	'POST_EDITED'				=> 'Je bericht is bewerkt.',
	'POST_EDITED_MOD'			=> 'Je bericht is bewerkt, maar het zal nog moeten worden goedgekeurd voordat het publiekelijk wordt weergegeven.',
	'POST_GLOBAL'				=> 'Globaal',
	'POST_ICON'					=> 'Berichticoon',
	'POST_NORMAL'				=> 'Normaal',
	'POST_REVIEW'				=> 'Onderwerp voorbeeld',
	'POST_REVIEW_EDIT'			=> 'Onderwerp voorbeeld',
	'POST_REVIEW_EDIT_EXPLAIN'	=> 'Dit bericht is door een andere gebruiker gewijzigd, terwijl jij het bewerkte. Het kan handig zijn als je het bericht eerst bekijkt voordat je aanpassingen plaatst.',
	'POST_REVIEW_EXPLAIN'		=> 'Er is een nieuw bericht geplaatst in dit onderwerp. Het is handig als je het bericht eerst bekijkt, voordat je dit bericht plaatst om dubbel plaatsen van berichten te voorkomen.',
	'POST_REVIEW_EXPLAIN'		=> 'Er is een nieuw bericht geplaatst in dit onderwerp. Het is handig als je het bericht eerst bekijkt, voordat je dit bericht plaatst om dubbel plaatsen van berichten te voorkomen.',
	'POST_STORED'				=> 'Je bericht is geplaatst.',
	'POST_STORED_MOD'			=> 'Je bericht is opgeslagen, maar het zal nog moeten worden goedgekeurd voordat het publiekelijk wordt weergegeven.',
	'POST_TOPIC_AS'				=> 'Onderwerptype',
	'PROGRESS_BAR'				=> 'Voortgangsbalk',

	'QUOTE_DEPTH_EXCEEDED'		=> 'Je mag maximaal %1$d citaten in een andere citaat hebben.',

	'SAVE'						=> 'Opslaan',
	'SAVE_DATE'					=> 'Opgeslagen op',
	'SAVE_DRAFT'				=> 'Concept bewaren',
	'SAVE_DRAFT_CONFIRM'		=> 'Houd er rekening mee dat bij het bewaren van het concept alleen de titel en het bericht worden opgeslagen. Ieder ander element wordt verwijderd. Weet je zeker dat je het concept wilt opslaan?',
	'SMILIES'					=> 'Smilies',
	'SMILIES_ARE_OFF'			=> 'Smilies staan <em>UIT</em>',
	'SMILIES_ARE_ON'			=> 'Smilies staan <em>AAN</em>',
	'STICKY_ANNOUNCE_TIME_LIMIT'=> 'Sticky/Mededeling tijdslimiet',
	'STICK_TOPIC_FOR'			=> 'Maak dit onderwerp sticky voor',
	'STICK_TOPIC_FOR_EXPLAIN'	=> 'Typ 0 in of laat het veld leeg als je de sticky/mededeling geen einddatum wilt geven. Let er op dat dit nummer gekoppeld is aan de datum van het bericht.',
	'STYLES_TIP'				=> 'Tip: opmaak kun je snel toepassen op de geselecteerde tekst.',

	'TOO_FEW_CHARS'				=> 'Je bericht bevat te weinig tekens.',
	'TOO_FEW_CHARS_LIMIT'		=> 'Je bericht bevat %1$d tekens. Een bericht moet minimaal %2$d tekens bevatten.',
	'TOO_FEW_POLL_OPTIONS'		=> 'Je moet minimaal twee poll-opties hebben ingevoerd.',
	'TOO_MANY_ATTACHMENTS'		=> 'Kan geen bijlage meer toevoegen, %d is het maximale aantal.',
	'TOO_MANY_CHARS'			=> 'Je bericht bevat teveel tekens.',
	'TOO_MANY_CHARS_POST'		=> 'Je bericht bevat %1$d tekens. Het maximaal aantal toegestane tekens is %2$d.',
	'TOO_MANY_CHARS_SIG'		=> 'Je onderschrift bevat %1$d tekens. Het maximaal aantal toegestane tekens is %2$d.',
	'TOO_MANY_POLL_OPTIONS'		=> 'Je hebt teveel poll opties opgegeven.',
	'TOO_MANY_SMILIES'			=> 'Je bericht bevat teveel smilies. Er is een maximaal aantal van %d smilies toegestaan.',
	'TOO_MANY_URLS'				=> 'Je bericht bevat teveel URL’s. Er is een maximaal aantal van %d URL’s toegestaan.',
	'TOO_MANY_USER_OPTIONS'		=> 'Je kunt niet meer keuzes per gebruiker toestaan dan het aantal opties dat de poll bevat.',
	'TOPIC_BUMPED'				=> 'Onderwerp is gebumpt.',

	'UNAUTHORISED_BBCODE'		=> 'Je kunt geen gebruik maken van de volgende BBCodes: %s.',
	'UNGLOBALISE_EXPLAIN'		=> 'Selecteer een doelforum om het onderwerp van globale mededeling naar normaal onderwerp om te schakelen.',
	'UPDATE_COMMENT'			=> 'Opmerking bijwerken',
	'URL_INVALID'				=> 'De opgegeven URL is ongeldig.',
	'URL_NOT_FOUND'				=> 'Het opgegeven bestand is niet gevonden.',
	'URL_IS_OFF'				=> '[url] staat UIT',
	'URL_IS_ON'					=> '[url] staat AAN',
	'USER_CANNOT_BUMP'			=> 'Je kunt geen onderwerpen bumpen in dit forum.',
	'USER_CANNOT_DELETE'		=> 'Je kunt geen berichten verwijderen in dit forum.',
	'USER_CANNOT_EDIT'			=> 'Je kunt geen berichten bewerken in dit forum.',
	'USER_CANNOT_REPLY'			=> 'Je kunt geen berichten beantwoorden in dit forum.',
	'USER_CANNOT_FORUM_POST'	=> 'Je hebt geen permissies om deze berichtactie uit te voeren, omdat dit forumtype dit niet ondersteunt.',

	'VIEW_MESSAGE'			=> '%sToon het geplaatste bericht%s',
	'VIEW_PRIVATE_MESSAGE'	=> '%sBekijk je verstuurde privébericht%s',

	'WRONG_FILESIZE'	=> 'Het bestand is te groot. De maximaal toegestane grootte is %1d %2s.',
	'WRONG_SIZE'		=> 'De afbeelding moet minimaal %1$d pixels breed en %2$d pixels hoog zijn en maximaal %3$d pixels breed en %4$d pixels hoog. De opgegeven afbeelding is %5$d pixels breed en %6$d pixels hoog.',
));

?>