<?php
/**
*
* acp_board [Dutch]
*
* @package language
* @version $Id: board.php,v 1.0.0 2007/01/21 18:33:45 acydburn Exp $
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

// Board Settings
$lang = array_merge($lang, array(
	'ACP_BOARD_SETTINGS_EXPLAIN'	=> 'Hier kun je de basiswerking van het forum instellen, een passende naam en omschrijving kiezen, de standaard tijdzone, taal en andere zaken wijzigen.',
	'CUSTOM_DATEFORMAT'				=> 'Aangepast',
	'DEFAULT_DATE_FORMAT'			=> 'Datumweergave',
	'DEFAULT_DATE_FORMAT_EXPLAIN'	=> 'De datumweergave is gelijk aan de PHP <code>datum</code> functie.',
	'DEFAULT_LANGUAGE'				=> 'Standaardtaal',
	'DEFAULT_STYLE'					=> 'Standaardstijl',
	'DISABLE_BOARD'					=> 'Forum uitschakelen',
	'DISABLE_BOARD_EXPLAIN'			=> 'Dit zal het forum onbereikbaar maken voor gebruikers. Als je wilt, kun je ook een kleine boodschap (max. 255 tekens) invoeren.',
	'OVERRIDE_STYLE'				=> 'Negeer gebruikersstijl',
	'OVERRIDE_STYLE_EXPLAIN'		=> 'Negeer de gebruikersstijl door de standaard stijl.',
	'SITE_DESC'						=> 'Omschrijving van de site',
	'SITE_NAME'						=> 'Naam van de site',
	'SYSTEM_DST'					=> 'Zomertijd toepassen',
	'SYSTEM_TIMEZONE'				=> 'Tijdzone voor gasten',
	'SYSTEM_TIMEZONE_EXPLAIN'		=> 'Tijdzone die wordt weergegeven aan gebruikers die niet ingelogd zijn(gasten, bots). Ingelogde gebruikers stellen hun tijdzone in bij de registratie en kunnen dit aanpassen in hun gebruikerspaneel.',
	'WARNINGS_EXPIRE'				=> 'Duur van de waarschuwing',
	'WARNINGS_EXPIRE_EXPLAIN'		=> 'Aantal dagen waarna een waarschuwing automatisch voor de gebruiker vervalt.',
));

// Board Features
$lang = array_merge($lang, array(
	'ACP_BOARD_FEATURES_EXPLAIN'	=> 'Hier kun je verschillende forumeigenschappen inschakelen/uitschakelen.',

	'ALLOW_ATTACHMENTS'			=> 'Bijlagen toestaan',
	'ALLOW_BIRTHDAYS'			=> 'Verjaardagen toestaan',
	'ALLOW_BIRTHDAYS_EXPLAIN'	=> 'Toestaan om verjaardagen in te vullen en de leeftijd te laten weergeven bij profielen. Let er op dat de verjaardagslijst op het forumoverzicht kan worden ingesteld onder Instellingen Serverprestatie.',
	'ALLOW_BOOKMARKS'			=> 'Onderwerpen toevoegen aan favorieten toestaan',
	'ALLOW_BOOKMARKS_EXPLAIN'	=> 'De gebruiker heeft de mogelijkheid om persoonlijke favorieten op te slaan.',
	'ALLOW_BBCODE'				=> 'BBCode toestaan',
	'ALLOW_FORUM_NOTIFY'		=> 'Abonneren op forums toestaan',
	'ALLOW_NAME_CHANGE'			=> 'Wijzigen van gebruikersnaam toestaan',
	'ALLOW_NO_CENSORS'			=> 'Uitschakelen van woordcensuur toestaan',
	'ALLOW_NO_CENSORS_EXPLAIN'	=> 'Gebruikers kunnen er voor kiezen om automatische woordcensuur uit te schakelen voor berichten en privéberichten.',
	'ALLOW_PM_ATTACHMENTS'		=> 'Bijlagen in privéberichten toestaan',
	'ALLOW_PM_REPORT'			=> 'Het melden van privéberichten toestaan voor gebruikers',
	'ALLOW_PM_REPORT_EXPLAIN'	=> 'Als deze instelling is ingeschakeld, zullen gebruikers de mogelijkheid krijgen om privéberichten te melden die zij hebben ontvangen of verzonden naar de forum moderators. Deze privéberichten worden zichtbaar in het moderatorpaneel.',
	'ALLOW_QUICK_REPLY'			=> 'Snel reageren toestaan',
	'ALLOW_QUICK_REPLY_EXPLAIN'	=> 'Met deze optie kun je globaal snel reageren uitschakelen. Als het is ingeschakeld ligt het aan de aparte foruminstellingen om te bepalen of snel reageren wordt getoond in de individuele forums.',
	'ALLOW_QUICK_REPLY_BUTTON'	=> 'Bevestig wijzigingen en schakel snel reageren in, in alle forums',
	'ALLOW_SIG'					=> 'Onderschriften toestaan',
	'ALLOW_SIG_BBCODE'			=> 'BBCode in onderschriften toestaan',
	'ALLOW_SIG_FLASH'			=> 'Het gebruik van <code>[FLASH]</code> BBCode in onderschriften toestaan',
	'ALLOW_SIG_IMG'				=> 'Het gebruik van <code>[IMG]</code> BBCode in onderschriften toestaan',
	'ALLOW_SIG_LINKS'			=> 'Het gebruik van links in onderschriften toestaan',
	'ALLOW_SIG_LINKS_EXPLAIN'	=> 'Indien niet toegestaan, worden <code>[URL]</code> BBCode en automatisch URL’s uitgeschakeld',
	'ALLOW_SIG_SMILIES'			=> 'Het gebruik van smilies in onderschriften toestaan',
	'ALLOW_SMILIES'				=> 'Smilies toestaan',
	'ALLOW_TOPIC_NOTIFY'		=> 'Het abonneren op onderwerpen toestaan',
	'BOARD_PM'					=> 'Privéberichten sturen',
	'BOARD_PM_EXPLAIN'			=> 'Privéberichten inschakelen voor alle gebruikers.',
));

// Avatar Settings
$lang = array_merge($lang, array(
	'ACP_AVATAR_SETTINGS_EXPLAIN'	=> 'Avatars zijn over het algemeen kleine, unieke afbeeldingen waarmee een gebruiker zich kan associëren. Afhankelijk van de stijl worden zij meestal onder de gebruikersnaam weergegeven bij hun berichten. Hier kun je instellen hoe de gebruikers hun avatars kunnen opgeven. Houd er rekening mee dat je wel een map moet hebben gemaakt met de naam die je hieronder hebt opgegeven en dat ernaar geschreven kan worden. Houd er ook rekening mee dat de bestandsgrootte alleen van toepassing is op geüploade avatars. Dit is dus niet van toepassing op externe afbeeldingen.',

	'ALLOW_AVATARS'					=> 'Avatars inschakelen',
	'ALLOW_AVATARS_EXPLAIN'			=> 'Algemeen gebruik van avatars toestaan;<br />Als je algemeen gebruik van avatars uitschakelt (of alleen van een bepaalt type), dan zullen de uitgeschakelde avatars niet langer op het forum worden getoond, maar gebruikers kunnen nog wel hun eigen avatars downloaden via het gebruikerspaneel.',
	'ALLOW_LOCAL'					=> 'Galerij avatars toestaan',
	'ALLOW_REMOTE'					=> 'Externe avatars toestaan',
	'ALLOW_REMOTE_EXPLAIN'			=> 'Avatars gelinkt van andere websites.',
	'ALLOW_REMOTE_UPLOAD'			=> 'Avatar van andere website uploaden',
	'ALLOW_REMOTE_UPLOAD_EXPLAIN'	=> 'Uploaden van avatars van een andere website toestaan.',
	'ALLOW_UPLOAD'					=> 'Avatar uploaden toestaan',
	'AVATAR_GALLERY_PATH'			=> 'Avatar galerijpad',
	'AVATAR_GALLERY_PATH_EXPLAIN'	=> 'Het pad onder je phpBB-rootmap voor standaard afbeeldingen, vb: <samp>images/avatars/gallery</samp>.',
	'AVATAR_STORAGE_PATH'			=> 'Avatar opslagpad',
	'AVATAR_STORAGE_PATH_EXPLAIN'	=> 'Het pad onder je phpBB-rootmap, vb: <samp>images/avatars/upload</samp>.',
	'MAX_AVATAR_SIZE'				=> 'Maximale avatargrootte',
	'MAX_AVATAR_SIZE_EXPLAIN'		=> 'Breedte x hoogte in pixels.',
	'MAX_FILESIZE'					=> 'Maximale avatarbestandsgrootte',
	'MAX_FILESIZE_EXPLAIN'			=> 'Voor geüploade avatars.',
	'MIN_AVATAR_SIZE'				=> 'Minimale avatargrootte',
	'MIN_AVATAR_SIZE_EXPLAIN'		=> 'Breedte x hoogte in pixels.',
));

// Message Settings
$lang = array_merge($lang, array(
	'ACP_MESSAGE_SETTINGS_EXPLAIN'		=> 'Hier kun je alle standaard instellingen voor je privéberichten opgeven.',

	'ALLOW_BBCODE_PM'			=> 'BBCode toestaan in privéberichten',
	'ALLOW_FLASH_PM'			=> 'Het gebruik van de <code>[FLASH]</code> BBCode toestaan',
	'ALLOW_FLASH_PM_EXPLAIN'	=> 'Bedenk wel dat de mogelijkheid om Flash te gebruiken in privéberichten na inschakeling ook afhankelijk is van de gebruikerspermissies.',
	'ALLOW_FORWARD_PM'			=> 'Doorsturen van privéberichten toestaan',
	'ALLOW_IMG_PM'				=> 'Het gebruik van de <code>[IMG]</code> BBCode toestaan',
	'ALLOW_MASS_PM'				=> 'Het versturen van privéberichten naar meerdere gebruikers en groepen toestaan',
	'ALLOW_MASS_PM_EXPLAIN'		=> 'Het verzenden naar groepen kan per groep worden aangepast bij de groepsinstellingen.',
	'ALLOW_PRINT_PM'			=> 'Voorbeeldweergave in privéberichten toestaan',
	'ALLOW_QUOTE_PM'			=> 'Citaten in privéberichten toestaan',
	'ALLOW_SIG_PM'				=> 'Onderschriften toestaan in privéberichten',
	'ALLOW_SMILIES_PM'			=> 'Smilies in privéberichten toestaan',
	'BOXES_LIMIT'				=> 'Maximaal aantal privéberichten per map',
	'BOXES_LIMIT_EXPLAIN'		=> 'Gebruikers kunnen niet meer dan dit aantal berichten ontvangen in elk van hun persoonlijke berichtenmappen. Zet deze waarde op 0 om een onbeperkt aantal berichten toe te staan.',
	'BOXES_MAX'					=> 'Maximaal aantal mappen voor privéberichten',
	'BOXES_MAX_EXPLAIN'			=> 'Het aantal mappen die gebruikers kunnen aanmaken voor hun privéberichten.',
	'ENABLE_PM_ICONS'			=> 'Het gebruik van onderwerpiconen in privéberichten toestaan',
	'FULL_FOLDER_ACTION'		=> 'Standaardactie bij een volle map',
	'FULL_FOLDER_ACTION_EXPLAIN'=> 'Standaard te ondernemen actie als een berichtenmap vol is (er van uitgaande dat de gebruikerskeuze (als die keuze al is gemaakt) niet uit te voeren is). De enige uitzondering is de "verzonden berichten" map, waar het verwijderen van oude berichten de standaardactie is.',
	'HOLD_NEW_MESSAGES'			=> 'Nieuwe berichten bewaren',
	'PM_EDIT_TIME'				=> 'Aanpassingstijdslimiet',
	'PM_EDIT_TIME_EXPLAIN'		=> 'Limiteert de beschikbare tijd om een niet verzonden bericht aan te passen. Door de waarde op 0 te zetten, schakel je deze optie uit.',
	'PM_MAX_RECIPIENTS'			=> 'Maximaal aantal toegestane ontvangers',
	'PM_MAX_RECIPIENTS_EXPLAIN'	=> 'Het maximale aantal toegestane ontvangers van een privébericht. Als 0 is ingevoerd, is een onbeperkt aantal ontvangers toegestaan. Deze instelling kan worden aangepast voor elke groep bij de groepsinstellingen.',
));

// Post Settings
$lang = array_merge($lang, array(
	'ACP_POST_SETTINGS_EXPLAIN'			=> 'Hier kun je alle standaardinstellingen opgeven voor het plaatsen van berichten.',
	'ALLOW_POST_LINKS'					=> 'Links toestaan in (persoonlijke) berichten',
	'ALLOW_POST_LINKS_EXPLAIN'			=> 'Indien niet toegestaan, worden <code>[URL]</code> BBCode en automatisch URL’s uitgeschakeld.',
	'ALLOW_POST_FLASH'					=> 'Sta het gebruik van <code>[FLASH]</code> BBCode toe in berichten',
	'ALLOW_POST_FLASH_EXPLAIN'			=> 'Indien niet toegestaan, wordt de <code>[FLASH]</code> BBCode uitgeschakeld in berichten. In andere gevallen zal het permissiesysteem bepalen welke gebruikers de <code>[FLASH]</code> BBCode kunnen gebruiken.',

	'BUMP_INTERVAL'					=> 'Bump interval',
	'BUMP_INTERVAL_EXPLAIN'			=> 'Het aantal minuten, uren of dagen tussen jouw laatste bericht in een onderwerp en de mogelijkheid dit onderwerp te "bumpen". Door deze waarde op 0 te zetten schakel je bumpen geheel uit.',
	'CHAR_LIMIT'					=> 'Maximaal aantal tekens per bericht/privébericht',
	'CHAR_LIMIT_EXPLAIN'			=> 'Het aantal tekens dat wordt toegestaan in een (privé)bericht. Stel in op 0 voor een onbeperkt aantal tekens.',
	'DELETE_TIME'					=> 'Beperk verwijdertijd',
	'DELETE_TIME_EXPLAIN'			=> 'Beperk de beschikbare tijd om een nieuw bericht te verwijderen. Door deze waarde op 0 te zetten schakel je deze optie uit.',
	'DISPLAY_LAST_EDITED'			=> 'Laatst gewijzigde tijdsinformatie laten zien',
	'DISPLAY_LAST_EDITED_EXPLAIN'	=> 'Bepaal of je de laatst gewijzigde informatie wilt laten zien in berichten.',
	'EDIT_TIME'						=> 'Beperk wijzigingstijd',
	'EDIT_TIME_EXPLAIN'				=> 'Beperk de beschikbare tijd om een nieuw bericht te wijzigen. Door deze waarde op 0 te zetten schakel je deze optie uit.',
	'FLOOD_INTERVAL'				=> 'Tijd tussen berichten',
	'FLOOD_INTERVAL_EXPLAIN'		=> 'Aantal seconden dat gebruikers dienen te wachten tussen het plaatsen van berichten. Om dit voor bepaalde gebruikers te omzeilen, dien je de permissies hiervoor aan te passen.',
	'HOT_THRESHOLD'					=> 'Populaire berichten-minimum',
	'HOT_THRESHOLD_EXPLAIN'			=> 'Aantal berichten in een onderwerp alvorens deze als populair wordt gemarkeerd. Stel in op 0 om uit te schakelen.',
	'MAX_POLL_OPTIONS'				=> 'Maximaal aantal poll-opties',
	'MAX_POST_FONT_SIZE'			=> 'Maximale grootte lettertype per bericht',
	'MAX_POST_FONT_SIZE_EXPLAIN'	=> 'Maximale grootte lettertype toegestaan in een bericht. Stel in op 0 voor onbeperkte grootte.',
	'MAX_POST_IMG_HEIGHT'			=> 'Maximale afbeeldinggrootte per bericht',
	'MAX_POST_IMG_HEIGHT_EXPLAIN'	=> 'Maximale hoogte van een afbeelding/flashbestand in berichten. Stel in op 0 voor onbeperkt.',
	'MAX_POST_IMG_WIDTH'			=> 'Maximale afbeeldingbreedte per bericht',
	'MAX_POST_IMG_WIDTH_EXPLAIN'	=> 'Maximale breedte van een afbeelding/flashbestand in berichten. Stel in op 0 voor onbeperkt.',
	'MAX_POST_URLS'					=> 'Maximaal aantal links per bericht',
	'MAX_POST_URLS_EXPLAIN'			=> 'Maximaal aantal URL’s in een bericht. Stel in op 0 voor onbeperkt.',
	'MIN_CHAR_LIMIT'				=> 'Minimaal aantal tekens per (privé)bericht',
	'MIN_CHAR_LIMIT_EXPLAIN'		=> 'Het minimale aantal tekens dat vereist is in een (privé)bericht.',
	'POSTING'						=> 'Berichtenplaatsing',
	'POSTS_PER_PAGE'				=> 'Berichten per pagina',
	'QUOTE_DEPTH_LIMIT'				=> 'Maximaal aantal geneste citaten per bericht',
	'QUOTE_DEPTH_LIMIT_EXPLAIN'		=> 'Het maximale aantal geneste citaten in een bericht. Stel in op 0 voor onbeperkt.',
	'SMILIES_LIMIT'					=> 'Maximaal aantal smilies per bericht',
	'SMILIES_LIMIT_EXPLAIN'			=> 'Het maximale aantal smilies in een bericht. Stel in op 0 voor onbeperkt.',
	'SMILIES_PER_PAGE'				=> 'Smilies per pagina',
	'TOPICS_PER_PAGE'				=> 'Onderwerpen per pagina',
));

// Signature Settings
$lang = array_merge($lang, array(
	'ACP_SIGNATURE_SETTINGS_EXPLAIN'	=> 'Hier kun je alle standaardinstellingen opgeven voor onderschriften.',

	'MAX_SIG_FONT_SIZE'				=> 'Maximale grootte lettertype onderschrift',
	'MAX_SIG_FONT_SIZE_EXPLAIN'		=> 'Maximale grootte lettertype toegestaan in onderschriften. Stel in op 0 voor onbeperkte grootte.',
	'MAX_SIG_IMG_HEIGHT'			=> 'Maximale afbeeldinghoogte in een onderschrift',
	'MAX_SIG_IMG_HEIGHT_EXPLAIN'	=> 'Maximale hoogte van een afbeelding/flashbestand in onderschriften. Stel in op 0 voor onbeperkte hoogte.',
	'MAX_SIG_IMG_WIDTH'				=> 'Maximale afbeeldingbreedte onderschrift',
	'MAX_SIG_IMG_WIDTH_EXPLAIN'		=> 'Maximale breedte van een afbeelding/flashbestand in onderschriften. Stel in op 0 voor onbeperkte breedte.',
	'MAX_SIG_LENGTH'				=> 'Maximalelengte onderschriften',
	'MAX_SIG_LENGTH_EXPLAIN'		=> 'Maximaal aantal tekens in een onderschrift.',
	'MAX_SIG_SMILIES'				=> 'Maximaal aantal smilies per onderschrift',
	'MAX_SIG_SMILIES_EXPLAIN'		=> 'Maximaal aantal smilies toegestaan in een onderschrift. Stel in op 0 voor onbeperkt aantal smilies.',
	'MAX_SIG_URLS'					=> 'Maximaal aantal links onderschrift',
	'MAX_SIG_URLS_EXPLAIN'			=> 'Maximaal aantal links in een onderschrift. Stel in op 0 voor onbeperkt.',
));

// Registration Settings
$lang = array_merge($lang, array(
	'ACP_REGISTER_SETTINGS_EXPLAIN'		=> 'Hier kun je registratie- en profielgerelateerde instellingen opgeven.',

	'ACC_ACTIVATION'				=> 'Account activatie',
	'ACC_ACTIVATION_EXPLAIN'		=> 'Dit bepaalt of gebruikers direct toegang hebben tot het forum, of dat een bevestiging vereist is. Je kan nieuwe registraties ook geheel uitschakelen. E-mail moet aanstaan op het forum om activatie door middel van gebruiker of beheerder te kunnen gebruiken',
	'NEW_MEMBER_POST_LIMIT'			=> 'Nieuw lid - Min. berichtenlimiet',
	'NEW_MEMBER_POST_LIMIT_EXPLAIN'	=> 'Nieuwe leden bevinden zich in de <em>Nieuw geregistreerde gebruikersgroep</em> totdat zij dit aantal berichten hebben geplaatst. Je kunt deze groep gebruiken om te voorkomen dat ze het PB systeem gebruiken, of om hun berichten te controleren. <strong>De waarde 0 schakelt deze optie uit.</strong>',
	'NEW_MEMBER_GROUP_DEFAULT'		=> 'Stel de Nieuw geregistreerde gebruikersgroep in als standaard',
	'NEW_MEMBER_GROUP_DEFAULT_EXPLAIN'	=> 'Indien Ja is ingesteld en voor een nieuw lid een berichtenlimiet is ingesteld, zullen nieuwe leden niet alleen toegevoegd worden aan de <em>Nieuw geregistreerde gebruikersgroep</em>, maar deze groep zal hun standaard groep zijn. Dit kan handig zijn als je een standaard groepsrang en/of avatar wilt toewijzen. Dan krijgen de gebruikers in die groep deze automatisch.',

	'ACC_ADMIN'					=> 'Door beheerder',
	'ACC_DISABLE'				=> 'Uitschakelen registratie',
	'ACC_NONE'					=> 'Geen activatie (onmiddelijk toegang)',
	'ACC_USER'					=> 'Door gebruiker (e-mailverificatie)',
//	'ACC_USER_ADMIN'			=> 'Gebruiker + Beheerder',
	'ALLOW_EMAIL_REUSE'			=> 'Hergebruik e-mailadres toestaan',
	'ALLOW_EMAIL_REUSE_EXPLAIN'	=> 'Meerdere gebruikersaccounts kunnen worden geregistreerd met hetzelfde e-mailadres.',
	'COPPA'						=> 'COPPA',
	'COPPA_FAX'					=> 'COPPA-faxnummer',
	'COPPA_MAIL'				=> 'COPPA-adres',
	'COPPA_MAIL_EXPLAIN'		=> 'Dit is het adres waar ouders het COPPA-registratieformulier naartoe moeten sturen.',
	'ENABLE_COPPA'				=> 'Schakel COPPA in',
	'ENABLE_COPPA_EXPLAIN'		=> 'Dit vereist van de gebruikers om aan te geven of ze ouder zijn dan 13.',
	'MAX_CHARS'					=> 'Max',
	'MIN_CHARS'					=> 'Min',
	'NO_AUTH_PLUGIN'			=> 'Geen geschikte permissie plug-in aangetroffen',
	'PASSWORD_LENGTH'			=> 'Wachtwoordlengte',
	'PASSWORD_LENGTH_EXPLAIN'	=> 'Minimum- en maximaal aantal tekens in wachtwoorden.',
	'REG_LIMIT'					=> 'Registratiepogingen',
	'REG_LIMIT_EXPLAIN'			=> 'Het maximaal aantal pogingen dat gebruikers hebben om de anti-spambot opdracht op te lossen. Daarna wordt de sessie vergrendeld.',
	'USERNAME_ALPHA_ONLY'		=> 'Alleen alfanumeriek',
	'USERNAME_ALPHA_SPACERS'	=> 'Alleen alfanumeriek en spaties',
	'USERNAME_ASCII'			=> 'ASCII (geen internationale unicode)',
	'USERNAME_LETTER_NUM'		=> 'Alleen letters en cijfers',
	'USERNAME_LETTER_NUM_SPACERS'	=> 'Alleen letters, cijfers en spaties',
	'USERNAME_CHARS'			=> 'Beperk aantal speciale tekens in gebruikersnaam',
	'USERNAME_CHARS_ANY'		=> 'Elk teken',
	'USERNAME_CHARS_EXPLAIN'	=> 'Beperk de tekens die in een gebruikersnaam gebruikt mogen worden tot: spaties, -, +, _, [ en ].',
	'USERNAME_LENGTH'			=> 'Gebruikersnaam lengte',
	'USERNAME_LENGTH_EXPLAIN'	=> 'Minimum- en maximaal aantal tekens bij gebruikersnamen.',
));

// Feeds
$lang = array_merge($lang, array(
	'ACP_FEED_MANAGEMENT'				=> 'Algemene feed syndicaten instellingen',
	'ACP_FEED_MANAGEMENT_EXPLAIN'		=> 'Deze module zorgt ervoor dat ATOM feeds beschikbaar worden, inclusief de BBCode voor gebruik met externe feeds.',

	'ACP_FEED_GENERAL'					=> 'Algemene feed instellingen',
	'ACP_FEED_POST_BASED'				=> 'Bericht gebaseerde feed instellingen',
	'ACP_FEED_TOPIC_BASED'				=> 'Onderwerp gebaseerde feed instellingen',
	'ACP_FEED_SETTINGS_OTHER'			=> 'Andere feeds en instellingen',

	'ACP_FEED_ENABLE'					=> 'Feeds inschakelen',
	'ACP_FEED_ENABLE_EXPLAIN'			=> 'Zet ATOM feeds aan of uit voor het gehele forum.<br />Het uitschakelen van deze schakels geldt voor alle feeds, het maakt niet uit hoe de opties hieronder worden ingesteld.',
	'ACP_FEED_LIMIT'					=> 'Aantal onderwerpen',
	'ACP_FEED_LIMIT_EXPLAIN'			=> 'Het maximaal aantal te tonen feed onderwerpen.',

	'ACP_FEED_OVERALL'					=> 'Forumbreed feeds inschakelen',
	'ACP_FEED_OVERALL_EXPLAIN'			=> 'Forumbreed nieuwe berichten.',
	'ACP_FEED_FORUM'					=> 'Per forum feeds inschakelen',
	'ACP_FEED_FORUM_EXPLAIN'			=> 'Enkel forum nieuwe berichten.',
	'ACP_FEED_TOPIC'					=> 'Per onderwerp feeds inschakelen',
	'ACP_FEED_TOPIC_EXPLAIN'			=> 'Enkel onderwerp nieuwe berichten.',

	'ACP_FEED_TOPICS_NEW'				=> 'Nieuwe onderwerpen feed inschakelen',
	'ACP_FEED_TOPICS_NEW_EXPLAIN'		=> 'Schakelt het “Nieuwe onderwerpen” feed in, welke de laatst aangemaakte onderwerpen toont inclusief het eerste bericht.',
	'ACP_FEED_TOPICS_ACTIVE'			=> 'Actieve onderwerpen feed inschakelen',
	'ACP_FEED_TOPICS_ACTIVE_EXPLAIN'	=> 'Schakelt het “Actieve onderwerpen” feed in, welke de laatste actieve onderwerpen toont inclusief het laatste bericht.',
	'ACP_FEED_NEWS'						=> 'Nieuws Feeds',
	'ACP_FEED_NEWS_EXPLAIN'				=> 'Haalt het eerste bericht op van deze forums. Selecteer geen forums om nieuws feeds uit te schakelen.<br />Selecteer meerdere forums door <samp>CTRL</samp> ingedrukt te houden en forums aan te klikken.',

	'ACP_FEED_OVERALL_FORUMS'			=> 'Forumfeeds inschakelen',
	'ACP_FEED_OVERALL_FORUMS_EXPLAIN'	=> 'Het “Alle forums” feed inschakelen, wat een lijst van forums toont.',

	'ACP_FEED_HTTP_AUTH'				=> 'HTTP Authenticatie toestaan',
	'ACP_FEED_HTTP_AUTH_EXPLAIN'		=> 'Schakelt de HTTP authenticatie in, wat gebruikers toestaat om content te ontvangen wat verborgen is voor gasten, door het toevoegen van de <samp>auth=http</samp> parameter in de feed URL. Let er op dat bepaalde PHP installaties een optionele aanpassing nodig hebben in het .htaccess-bestand. Instructies kunnen in dat bestand worden gevonden.',
	'ACP_FEED_ITEM_STATISTICS'			=> 'Onderwerp statistieken',
	'ACP_FEED_ITEM_STATISTICS_EXPLAIN'	=> 'Toon individuele statistieken onder feed onderwerpen<br />(Geplaatst door, datum en tijd, reacties, bekeken)',
	'ACP_FEED_EXCLUDE_ID'				=> 'Sluit deze forums uit',
	'ACP_FEED_EXCLUDE_ID_EXPLAIN'		=> 'Gegevens van deze forums zullen <strong>niet worden opgenomen in feeds</strong>. Selecteer geen forum om gegevens van alle forums op te halen.<br />Selecteer/Deselecteer meerdere forums door <samp>CTRL</samp> ingedrukt te houden en forums aan te klikken.',
));

// Visual Confirmation Settings
$lang = array_merge($lang, array(
	'ACP_VC_SETTINGS_EXPLAIN'				=> 'Hier kun je plug-ins selecteren en configureren, welke zijn ontworpen om geautomatiseerde acties door spambots te voorkomen.',
	'AVAILABLE_CAPTCHAS'					=> 'Beschikbare plug-ins',
	'CAPTCHA_UNAVAILABLE'					=> 'Deze plug-in kan niet worden geselecteerd, omdat de benodigdheden op dit systeem niet beschikbaar zijn.',
	'CAPTCHA_GD'							=> 'GD afbeelding',
	'CAPTCHA_GD_3D'							=> 'GD 3D afbeelding',
	'CAPTCHA_GD_FOREGROUND_NOISE'			=> 'Voorgrondverstoring',
	'CAPTCHA_GD_EXPLAIN'					=> 'Gebruikt GD voor een geavanceerdere anti-spambot afbeelding.',
	'CAPTCHA_GD_FOREGROUND_NOISE_EXPLAIN'	=> 'Gebruik de voorgrondverstoring om de afbeelding moeilijker leesbaar te maken.',
	'CAPTCHA_GD_X_GRID'						=> 'X-as achtergrondverstoring',
	'CAPTCHA_GD_X_GRID_EXPLAIN'				=> 'Gebruik lagere instellingen om de afbeelding moeilijker leesbaar te maken. 0 zal de x-as achtergrondverstoring uitschakelen.',
	'CAPTCHA_GD_Y_GRID'						=> 'Y-as achtergrondverstoring',
	'CAPTCHA_GD_Y_GRID_EXPLAIN'				=> 'Gebruik lagere instellingen om de afbeelding moeilijker leesbaar te maken. 0 zal de y-as achtergrondverstoring uitschakelen.',
	'CAPTCHA_GD_WAVE'						=> 'Golfvervorming',
	'CAPTCHA_GD_WAVE_EXPLAIN'				=> 'Dit past een golfvervorming toe aan de afbeelding.',
	'CAPTCHA_GD_3D_NOISE'					=> 'Voeg 3D-verstoringsobjecten toe',
	'CAPTCHA_GD_3D_NOISE_EXPLAIN'			=> 'Dit voegt extra objecten over de letters heen toe.',
	'CAPTCHA_GD_FONTS'						=> 'Gebruik verschillende lettertypes',
	'CAPTCHA_GD_FONTS_EXPLAIN'				=> 'Deze instelling bepaalt hoeveel lettervormen er worden gebruikt. Je kunt de standaard vormen gebruiken of extra letters. Toevoegen van kleine letters is ook mogelijk.',
	'CAPTCHA_FONT_DEFAULT'					=> 'Standaard',
	'CAPTCHA_FONT_NEW'						=> 'Nieuwe vormen',
	'CAPTCHA_FONT_LOWER'					=> 'Gebruik ook kleine letters',
	'CAPTCHA_NO_GD'							=> 'Simpele afbeelding',
	'CAPTCHA_PREVIEW_MSG'					=> 'Je wijzigingen zijn nog niet opgeslagen. Dit is slechts een voorbeeld.',
	'CAPTCHA_PREVIEW_EXPLAIN'				=> 'De plug-in zoals deze eruit zal zien bij het gebruik van de huidige instellingen.',

	'CAPTCHA_SELECT'						=> 'Geïnstalleerde plug-ins',
	'CAPTCHA_SELECT_EXPLAIN'				=> 'In dit menu staan de beschikbare plug-ins. De grijze opties zijn op dit moment niet beschikbaar en moeten mogelijk eerst geconfigureerd worden.',
	'CAPTCHA_CONFIGURE'						=> 'Configureer plug-ins',
	'CAPTCHA_CONFIGURE_EXPLAIN'				=> 'Pas de instellingen aan voor de geselecteerde plug-in.',
	'CONFIGURE'								=> 'Configureren',
	'CAPTCHA_NO_OPTIONS'					=> 'Deze plug-in heeft geen configuratieopties.',

	'VISUAL_CONFIRM_POST'					=> 'Schakel spambot-preventie voor gastberichten in',
	'VISUAL_CONFIRM_POST_EXPLAIN'			=> 'Verplicht anonieme gebruikers om de anti-spambot opdracht op te lossen, om geautomatiseerd geplaatste berichten te voorkomen.',
	'VISUAL_CONFIRM_REG'					=> 'Schakel spambot-preventie in voor registraties',
	'VISUAL_CONFIRM_REG_EXPLAIN'			=> 'Verplicht gebruikers om bij de registratie de anti-spambot opdracht op te lossen, om geautomatiseerde registratie te voorkomen.',
	'VISUAL_CONFIRM_REFRESH'				=> 'Sta gebruikers toe om de anti-spambot opdracht te vernieuwen',
	'VISUAL_CONFIRM_REFRESH_EXPLAIN'		=> 'Geeft gebruikers de mogelijkheid om een nieuwe anti-spambot opdracht te vragen als ze niet in staat zijn om de huidige op te lossen tijdens het registreren. Sommige plug-ins ondersteunen deze optie mogelijk niet.',
));

// Cookie Settings
$lang = array_merge($lang, array(
	'ACP_COOKIE_SETTINGS_EXPLAIN'		=> 'Deze details specificeren de data die wordt gebruikt voor het verzenden van cookies naar de browsers van de gebruikers. In de meeste gevallen zijn de standaardwaardes voldoende. Wijzig dit alleen indien je hier kennis van hebt. Onjuiste instellingen kunnen ervoor zorgen dat de gebruikers niet meer kunnen inloggen.',

	'COOKIE_DOMAIN'				=> 'Cookie domein',
	'COOKIE_NAME'				=> 'Cookie naam',
	'COOKIE_PATH'				=> 'Cookie pad',
	'COOKIE_SECURE'				=> 'Cookie secure [ https ]',
	'COOKIE_SECURE_EXPLAIN'		=> 'Zet deze optie alleen aan als je server gebruik maakt van SSL. Indien dit aan staat en SSL niet ondersteund wordt, ontstaan er fouten bij het doorsturen naar pagina’s.',
	'ONLINE_LENGTH'				=> 'Toon als online tijdsduur',
	'ONLINE_LENGTH_EXPLAIN'		=> 'Het aantal minuten waarna inactieve gebruikers niet langer in de "wie is er online" lijst staan. Hoe hoger deze waarde, hoe meer gegevens er verwerkt moeten worden voor deze lijst.',
	'SESSION_LENGTH'			=> 'Sessieduur',
	'SESSION_LENGTH_EXPLAIN'	=> 'De sessie zal na deze tijd verstrijken.',
));

// Load Settings
$lang = array_merge($lang, array(
	'ACP_LOAD_SETTINGS_EXPLAIN'	=> 'Hier kun je bepaalde forumfuncties aan/uit zetten om het aantal serverprocessen te verminderen. Op de meeste servers is het niet nodig om een functie uit te schakelen, hoewel op bepaalde systemen of op gedeelde hostingomgevingen het nuttig kan zijn om functies die je niet nodig hebt, uit te schakelen. Je kunt ook limieten opgeven voor de systeembelasting en het aantal actieve sessies, waarna het forum offline gaat.',

	'CUSTOM_PROFILE_FIELDS'			=> 'Aangepaste profielvelden',
	'LIMIT_LOAD'					=> 'Limiteer de systeembelasting',
	'LIMIT_LOAD_EXPLAIN'			=> 'Als de gemiddelde systeembelasting van 1 minuut deze waarde overschrijdt, wordt het forum uitgeschakeld. Dit werkt alleen op UNIX-servers waarop deze functie beschikbaar is. Deze waarde zal zichzelf terug naar 0 instellen wanneer phpBB de systeembelastingslimiet niet kon ophalen.',
	'LIMIT_SESSIONS'				=> 'Limiteer sessies',
	'LIMIT_SESSIONS_EXPLAIN'		=> 'Als het aantal sessies gedurende 1 minuut boven deze waarde komt, zal het forum offline gaan. Stel in op 0 voor een onbeperkt aantal sessies.',
	'LOAD_CPF_MEMBERLIST'			=> 'Geef eigen profielvelden in de ledenlijst weer',
	'LOAD_CPF_VIEWPROFILE'			=> 'Geef eigen profielvelden in de gebruikersprofielen weer',
	'LOAD_CPF_VIEWTOPIC'			=> 'Geef eigen profielvelden op de berichtenpagina weer',
	'LOAD_USER_ACTIVITY'			=> 'Laat gebruikersactiviteiten zien',
	'LOAD_USER_ACTIVITY_EXPLAIN'	=> 'Laat actieve onderwerpen in gebruikersprofielen en gebruikersconfiguratiescherm zien. Het wordt aangeraden om dit uit te schakelen bij een forum met meer dan één miljoen berichten.',
	'RECOMPILE_STYLES'				=> 'Hercompileer oude stijlcomponenten',
	'RECOMPILE_STYLES_EXPLAIN'		=> 'Controleer op gewijzigde stijlcomponenten op het systeem en hercompileer deze.',
	'YES_ANON_READ_MARKING'			=> 'Markeer berichten bij gasten',
	'YES_ANON_READ_MARKING_EXPLAIN'	=> 'Houd gelezen/ongelezen berichten van gasten bij. Als het is uitgeschakeld, worden ze altijd als gelezen gemarkeerd voor gasten.',
	'YES_BIRTHDAYS'					=> 'Verjaardagslijst inschakelen',
	'YES_BIRTHDAYS_EXPLAIN'			=> 'Als de verjaardagslijst is ingeschakeld wordt dit niet langer weergegeven. Om deze instelling te activeren, moet je de verjaardagslijst weergave ook bij de serverprestatie instellingen inschakelen.',
	'YES_JUMPBOX'					=> 'Laat jumpbox zien',
	'YES_MODERATORS'				=> 'Moderators laten zien',
	'YES_ONLINE'					=> 'Online gebruikerslijst inschakelen',
	'YES_ONLINE_EXPLAIN'			=> 'Laat de online gebruikersinformatie op het forumoverzicht en op de (forumspecifieke) onderwerppagina’s zien.',
	'YES_ONLINE_GUESTS'				=> 'Geef gasten in de online gebruikerslijst weer',
	'YES_ONLINE_GUESTS_EXPLAIN'		=> 'Geef gasteninformatie weer bij online gebruikers',
	'YES_ONLINE_TRACK'				=> 'Geef online/offline informatie weer',
	'YES_ONLINE_TRACK_EXPLAIN'		=> 'Geeft online/offline informatie weer in profielen en berichtenpagina’s',
	'YES_POST_MARKING'				=> 'Sta gestipte berichten toe',
	'YES_POST_MARKING_EXPLAIN'		=> 'Laat zien of een gebruiker een bericht heeft geplaatst in een onderwerp.',
	'YES_READ_MARKING'				=> 'Schakel onderwerpmarkering via de server in',
	'YES_READ_MARKING_EXPLAIN'		=> 'Gebruik de server i.p.v. cookies om aan te geven of berichten gelezen zijn.',
	'YES_UNREAD_SEARCH'				=> 'Zoeken naar ongelezen berichten inschakelen',
));

// Auth settings
$lang = array_merge($lang, array(
	'ACP_AUTH_SETTINGS_EXPLAIN'	=> 'phpBB ondersteunt verificatie plug-ins of modules. Deze maken het mogelijk om te bepalen hoe gebruikers zich verifiëren zodra ze zich aanmelden op het forum. Standaard zijn er drie plug-ins aanwezig; DB, LDAP en Apache. Niet alle methodes hebben extra informatie nodig. Vul daarom alleen de relevante velden in voor de geselecteerde methode.',

	'AUTH_METHOD'				=> 'Selecteer een verificatiemethode',

	'APACHE_SETUP_BEFORE_USE'	=> 'Je dient de Apache-verificatie eerst te activeren alvorens je deze door phpBB laat gebruiken. Onthoud dat de gebruikersnaam die je voor de Apache-verificatie gebruikt, dezelfde moet zijn als je phpBB-gebruikersnaam. Apache-verificatie kan alleen gebruikt worden met mod_php (niet de CGI versie) en als safe_mode is uitgeschakeld.',

	'LDAP_DN'						=> 'LDAP-base <var>dn</var>',
	'LDAP_DN_EXPLAIN'				=> 'Dit is de Distinguished Name, wat de gebruikersinformatie lokaliseert, vb: <samp>o=My Company,c=US</samp>.',
	'LDAP_EMAIL'					=> 'LDAP-e-mailattribuut',
	'LDAP_EMAIL_EXPLAIN'			=> 'Stel dit in naargelang de gebruiker zijn e-mail attribuut (mits aanwezig) om automatisch het e-mailadres in te stellen van een nieuwe gebruiker. Door deze leeg te laten, zal het resulteren in een leeg e-mailadres voor gebruikers die de eerste leer inloggen.',
	'LDAP_INCORRECT_USER_PASSWORD'	=> 'Verbinden met de LDAP server mislukt met de opgegeven gebruikersnaam en wachtwoord.',
	'LDAP_NO_EMAIL'					=> 'Het gespecificeerde e-mail attribuut bestaat niet.',
	'LDAP_NO_IDENTITY'				=> 'Kon geen login identificatie vinden voor %s.',
	'LDAP_PASSWORD'					=> 'LDAP-wachtwoord',
	'LDAP_PASSWORD_EXPLAIN'			=> 'Laat dit leeg voor anonieme toegang, vul anders het wachtwoord voor de bovenstaande gebruiker in. Vereist voor active directory servers. <br /><em><strong>Waarschuwing:</strong> Dit wachtwoord zal als platte tekst worden opgeslagen en is zichtbaar voor iedereen die database toegang heeft of die dit configuratiebestand kan zien.</em>',
	'LDAP_PORT'						=> 'LDAP server poort',
	'LDAP_PORT_EXPLAIN'				=> 'Optioneel kun je de poort opgeven waarmee de LDAP server verbinding moet maken, indien deze anders is dan de standaard poort 389.',
	'LDAP_SERVER'					=> 'LDAP-servernaam',
	'LDAP_SERVER_EXPLAIN'			=> 'Wanneer LDAP wordt gebruikt is dit de hostnaam of het IP-adres van de server. Je kunt eventueel ook een specifieke url opgeven zoals ldap://hostnaam:poort/',
	'LDAP_UID'						=> 'LDAP-<var>uid</var>',
	'LDAP_UID_EXPLAIN'				=> 'Deze code is gekoppeld aan de gebruiker.',
	'LDAP_USER'						=> 'LDAP-gebruiker dn',
	'LDAP_USER_EXPLAIN'				=> 'Laat leeg om anoniem toegang te krijgen. Als dit is ingevuld zal phpBB de opgegeven voorkeursnaam gebruiken voor de login-pogingen om de juiste gebruiker te vinden, v.b. <samp>uid=Username,ou=MyUnit,o=MyCompany,c=US</samp>. Vereist voor active directory servers.',
	'LDAP_USER_FILTER'				=> 'LDAP gebruikersfilter',
	'LDAP_USER_FILTER_EXPLAIN'		=> 'Optioneel kun je de gevonden objecten beperken met behulp van filters. Bijvoorbeeld <samp>objectClass=posixGroup</samp> zal resulteren in het gebruik van <samp>(&amp;(uid=$username)(objectClass=posixGroup))</samp>',
));

// Server Settings
$lang = array_merge($lang, array(
	'ACP_SERVER_SETTINGS_EXPLAIN'	=> 'Hier bepaal je server- en domeinafhankelijke instellingen. Zorg ervoor dat je de juiste gegevens invult, anders ontstaan er fouten in e-mails met onjuiste informatie. Zorg ervoor dat je het domein invult met het voorvoegsel http:// of een ander protocol. Vul alleen het poortnummer in als je server een andere waarde heeft. Poort 80 is in de meeste gevallen correct.',

	'ENABLE_GZIP'				=> 'GZip compressie gebruiken',
	'ENABLE_GZIP_EXPLAIN'		=> 'Gegenereerde inhoud zal eerst gecomprimeerd worden voordat deze verzonden wordt. Dit vermindert het dataverkeer, maar zal het CPU-gebruik van zowel de server als de cliënt verhogen. De zlib PHP extensie moet hiervoor aanwezig zijn.',
	'FORCE_SERVER_VARS'			=> 'Forceer server URL-instellingen',
	'FORCE_SERVER_VARS_EXPLAIN'	=> 'Indien ingeschakeld zal de server de instellingen die hier gegeven worden, bij voorkeur op de automatisch ingestelde waardes gebruiken.',
	'ICONS_PATH'				=> 'Icoon opslagpad',
	'ICONS_PATH_EXPLAIN'		=> 'Pad onder je phpBB-rootmap, vb: <samp>images/icons</samp>.',
	'PATH_SETTINGS'				=> 'Pad instellingen',
	'RANKS_PATH'				=> 'Rangafbeeldingenpad',
	'RANKS_PATH_EXPLAIN'		=> 'Pad in je phpBB-root, vb: <samp>images/ranks</samp>.',
	'SCRIPT_PATH'				=> 'Scriptpad',
	'SCRIPT_PATH_EXPLAIN'		=> 'Het pad waar phpBB staat, afhankelijk van je domein.',
	'SERVER_NAME'				=> 'Domeinnaam',
	'SERVER_NAME_EXPLAIN'		=> 'De domeinnaam waar dit forum op draait (bijvoorbeeld: <samp>www.voorbeeld.nl</samp>).',
	'SERVER_PORT'				=> 'Serverpoort',
	'SERVER_PORT_EXPLAIN'		=> 'De poort waar je server op draait, normaal 80, alleen veranderen indien nodig.',
	'SERVER_PROTOCOL'			=> 'Serverprotocol',
	'SERVER_PROTOCOL_EXPLAIN'	=> 'Het protocol dat geforceerd gebruikt moet worden. Indien niet ingesteld, wordt het protocol bepaalt aan de hand van je cookie veiligheidsinstellingen (<samp>http://</samp> en <samp>https://</samp>).',
	'SERVER_URL_SETTINGS'		=> 'Server URL-instellingen',
	'SMILIES_PATH'				=> 'Smilies opslagpad',
	'SMILIES_PATH_EXPLAIN'		=> 'Pad onder je phpBB-rootmap, vb: <samp>images/smilies</samp>.',
	'UPLOAD_ICONS_PATH'			=> 'Opslagpad icoongroep extensies',
	'UPLOAD_ICONS_PATH_EXPLAIN'	=> 'Pad onder je phpBB-rootmap, vb: <samp>images/upload_icons</samp>.',
));

// Security Settings
$lang = array_merge($lang, array(
	'ACP_SECURITY_SETTINGS_EXPLAIN'	=> 'Hier kun je sessie- en login gerelateerde instellingen bepalen.',

	'ALL'							=> 'Alle',
	'ALLOW_AUTOLOGIN'				=> 'Auto-login toestaan',
	'ALLOW_AUTOLOGIN_EXPLAIN'		=> 'Bepaalt of gebruikers automatisch kunnen inloggen wanneer ze het forum bezoeken.',
	'AUTOLOGIN_LENGTH'				=> 'Auto-login sleutel vernieuwen (in dagen)',
	'AUTOLOGIN_LENGTH_EXPLAIN'		=> 'Aantal dagen nadat auto-login sleutels verwijderd zullen worden of nul voor uitschakelen.',
	'BROWSER_VALID'					=> 'Valideer browser',
	'BROWSER_VALID_EXPLAIN'			=> 'Schakelt browservalidatie voor elke sessie in om de beveiliging te verbeteren.',
	'CHECK_DNSBL'					=> 'Controleer IP in de DNS Blackhole List',
	'CHECK_DNSBL_EXPLAIN'			=> 'Indien ingeschakeld, wordt het gebruikers-IP gecontroleerd op registraties en het plaatsen van berichten bij de volgende DNSBL diensten: <a href="http://spamcop.net">spamcop.net</a> en <a href="http://www.spamhaus.org">www.spamhaus.org</a>. Het opzoeken hiervan kan even duren, afhankelijk van de serverconfiguratie. Indien je teveel vertraging of onterecht positieve antwoorden krijgt, kan je dit beter uitschakelen.',
	'CLASS_B'						=> 'A.B',
	'CLASS_C'						=> 'A.B.C',
	'EMAIL_CHECK_MX'				=> 'Controleer e-maildomein op geldig MX-record',
	'EMAIL_CHECK_MX_EXPLAIN'		=> 'Indien ingeschakeld zal het opgegeven e-maildomein bij de registratie en aanpassen van het profiel gecontroleerd worden op een geldig MX-record.',
	'FORCE_PASS_CHANGE'				=> 'Forceer wachtwoordwijziging',
	'FORCE_PASS_CHANGE_EXPLAIN'		=> 'Verplicht de gebruikers hun wachtwoord te wijzigen na een bepaalt aantal dagen. Stel in op 0 om deze optie uit te schakelen.',
	'FORM_TIME_MAX'					=> 'Maximale tijd om een formulier te versturen',
	'FORM_TIME_MAX_EXPLAIN'			=> 'De tijd dat een gebruiker heeft om een formulier te versturen. Gebruik -1 om dit uit te schakelen. Let erop dat een formulier ongeldig kan worden als de sessie vervalt, onafhankelijk van deze instelling.',
	'FORM_SID_GUESTS'				=> 'Link formulieren aan sessies gasten',
	'FORM_SID_GUESTS_EXPLAIN'		=> 'Indien ingeschakeld zal de formuliervariabele die aan gasten wordt toegewezen, sessie-exclusief zijn. Dit kan mogelijk problemen opleveren met enkele internet providers.',
	'FORWARDED_FOR_VALID'			=> 'Valideer <var>X_FORWARDED_FOR</var> header',
	'FORWARDED_FOR_VALID_EXPLAIN'	=> 'Sessies worden alleen voortgezet als de verzonden <var>X_FORWARDED_FOR</var> header gelijk is aan die van de vorige aanvraag. Bans worden ook gecontroleerd op IP-adressen in de <var>X_FORWARDED_FOR</var> header',
	'IP_VALID'						=> 'Sessie IP-validatie',
	'IP_VALID_EXPLAIN'				=> 'Bepaalt welk deel van de gebruiker zijn IP gebruikt wordt om een sessie te valideren; <samp>alle</samp> vergelijkt het volledige adres, <samp>A.B.C</samp> de eerste x.x.x, <samp>A.B</samp> de eerste x.x, <samp>geen</samp> schakelt de controle uit. Bij een IPv6 adres vergelijkt <samp>A.B.C</samp> de eerste 4 delen en <samp>A.B</samp> de eerste 3 delen.',
	'IP_LOGIN_LIMIT_MAX'			=> 'Maximaal aantal inlogpogingen per IP-adres',
	'IP_LOGIN_LIMIT_MAX_EXPLAIN'	=> 'Na dit aantal mislukte inlogpogingen moet de gebruiker een anti-spambot opdracht oplossen. Stel in op 0 om deze optie uit te schakelen.',
	'IP_LOGIN_LIMIT_TIME'			=> 'Vervaltijd inlogpogingen per IP-adres',
	'IP_LOGIN_LIMIT_TIME_EXPLAIN'	=> 'Het aantal inlogpogingen verloopt na deze periode.',
	'IP_LOGIN_LIMIT_USE_FORWARDED'	=> 'Limiteer inlogpogingen op <var>X_FORWARDED_FOR</var> header',
	'IP_LOGIN_LIMIT_USE_FORWARDED_EXPLAIN'	=> 'In plaats van het limiteren van inlogpogingen op IP-adres wordt er gekeken naar de <var>X_FORWARDED_FOR</var> waardes. <br /><em><strong>Waarschuwing:</strong> Stel dit alleen in als je gebruik maakt van een proxyserver die de <var>X_FORWARDED_FOR</var> waardes betrouwbaar instelt.</em>',
	'MAX_LOGIN_ATTEMPTS'			=> 'Maximaal aantal inlogpogingen per gebruikersnaam',
	'MAX_LOGIN_ATTEMPTS_EXPLAIN'	=> 'Na dit aantal mislukte inlogpogingen op één enkel gebruikersaccount moet er een anti-spambot opdracht worden opgelost. Stel de waarde in op 0 om de anti-spambot opdracht uit te schakelen voor alle gebruikersaccounts.',
	'NO_IP_VALIDATION'				=> 'Geen',
	'NO_REF_VALIDATION'				=> 'Geen',
	'PASSWORD_TYPE'					=> 'Wachtwoord moeilijkheidsgraad',
	'PASSWORD_TYPE_EXPLAIN'			=> 'Bepaalt hoe een wachtwoord samengesteld moet zijn wanneer deze wordt ingesteld of gewijzigd',
	'PASS_TYPE_ALPHA'				=> 'Moet letters en cijfers bevatten',
	'PASS_TYPE_ANY'					=> 'Geen vereisten',
	'PASS_TYPE_CASE'				=> 'Hoofdletters en normale letters moeten gemixt zijn',
	'PASS_TYPE_SYMBOL'				=> 'Dient symbolen te bevatten',
	'REF_HOST'						=> 'Alleen geldige host',
	'REF_PATH'						=> 'Ook geldig pad',
	'REFERER_VALID'					=> 'Controleer verwijzing',
	'REFERER_VALID_EXPLAIN'			=> 'Indien ingeschakeld zal de verwijzing of het POST-verzoek gecontroleerd worden op de host/script pad instellingen. Dit kan problemen veroorzaken bij het gebruik van meerdere domeinnamen en externe logins.',
	'TPL_ALLOW_PHP'					=> 'Sta PHP toe in templates',
	'TPL_ALLOW_PHP_EXPLAIN'			=> 'Indien deze optie ingeschakeld is, zullen de <code>PHP</code> en <code>INCLUDEPHP</code> blokken in templates herkend en vervangen worden.',
));

// Email Settings
$lang = array_merge($lang, array(
	'ACP_EMAIL_SETTINGS_EXPLAIN'	=> 'Deze informatie wordt gebruikt wanneer het forum een e-mail stuurt naar jouw gebruikers. Wees er zeker van, dat het opgegeven e-mailadres geldig is; alle geweigerde of niet-geleverde berichten zullen naar dit adres worden verzonden. Indien je host geen lokale (PHP gebaseerde) e-mailservice aanbiedt, kun je SMTP gebruiken om e-mails te sturen. Deze heeft het adres van een dergelijke server nodig (vraag eventueel aan je hostingbedrijf). Als de server verificatie nodig heeft, voer dan hieronder de benodigde gebruikersnaam en het wachtwoord in. Let op het feit dat alleen basisverificatie wordt aangeboden. Andere verificaties worden momenteel niet ondersteund.',

	'ADMIN_EMAIL'					=> 'Antwoord e-mailadres',
	'ADMIN_EMAIL_EXPLAIN'			=> 'Dit e-mailadres zal worden gebruikt als afzender van alle e-mails (het technische contact e-mailadres). Dit adres zal altijd worden gebruikt als <samp>antwoordpad</samp> en <samp>afzender</samp> in de e-mails.',
	'BOARD_EMAIL_FORM'				=> 'Gebruikers versturen e-mail via het forum',
	'BOARD_EMAIL_FORM_EXPLAIN'		=> 'De gebruikers kunnen elkaar e-mails versturen via het forum, zonder dat hun e-mailadressen zichtbaar zullen zijn.',
	'BOARD_HIDE_EMAILS'				=> 'Verwijder e-mailadressen',
	'BOARD_HIDE_EMAILS_EXPLAIN'		=> 'Deze functie houdt e-mailadressen privé.',
	'CONTACT_EMAIL'					=> 'Contact e-mailadres',
	'CONTACT_EMAIL_EXPLAIN'			=> 'Dit adres wordt gebruikt voor contact met de beheerder',
	'EMAIL_FUNCTION_NAME'			=> 'Naam e-mail functie',
	'EMAIL_FUNCTION_NAME_EXPLAIN'	=> 'De e-mail functie die wordt gebruikt om via PHP e-mails te versturen.',
	'EMAIL_PACKAGE_SIZE'			=> 'E-mail pakketgrootte',
	'EMAIL_PACKAGE_SIZE_EXPLAIN'	=> 'Dit zijn het aantal e-mails die per pakket worden verzonden.',
	'EMAIL_SIG'						=> 'E-mail handtekening',
	'EMAIL_SIG_EXPLAIN'				=> 'Deze tekst zal worden toegevoegd aan alle e-mails die het forum verstuurt.',
	'ENABLE_EMAIL'					=> 'Sta e-mails toe op het forum',
	'ENABLE_EMAIL_EXPLAIN'			=> 'Indien uitgeschakeld, worden er helemaal geen e-mails verzonden via het forum. <em>Let erop dat voor de gebruiker- en beheerderactivatie instellingen, deze optie ingeschakeld moet zijn als je momenteel gebruik maakt van “gebruiker” of “beheerder” activatie in de activatie instelling. Indien je deze optie uitschakelt, wordt tevens de activatie uitgeschakeld en worden nieuwe leden vanaf dat moment automatisch geactiveerd.</em>',
	'SMTP_AUTH_METHOD'				=> 'Verificatiemethode voor SMTP',
	'SMTP_AUTH_METHOD_EXPLAIN'		=> 'Wordt alleen gebruikt indien je een gebruikersnaam/wachtwoord hebt ingesteld. Neem contact op met je hostingbedrijf als je niet zeker weet welke methode je moet gebruiken.',
	'SMTP_CRAM_MD5'					=> 'CRAM-MD5',
	'SMTP_DIGEST_MD5'				=> 'DIGEST-MD5',
	'SMTP_LOGIN'					=> 'LOGIN',
	'SMTP_PASSWORD'					=> 'SMTP-wachtwoord',
	'SMTP_PASSWORD_EXPLAIN'			=> 'Voer alleen een wachtwoord in als dit nodig is voor je SMTP-server. <br /><em><strong>Waarschuwing:</strong> Dit wachtwoord wordt als platte tekst worden opgeslagen en is zichtbaar voor iedereen die database toegang heeft of die dit configuratiebestand kan zien.</em>',
	'SMTP_PLAIN'					=> 'PLAIN',
	'SMTP_POP_BEFORE_SMTP'			=> 'POP-BEFORE-SMTP',
	'SMTP_PORT'						=> 'SMTP-serverpoort',
	'SMTP_PORT_EXPLAIN'				=> 'Wijzig dit alleen als jouw SMTP-server gebruik maakt van een andere poort.',
	'SMTP_SERVER'					=> 'SMTP-serveradres',
	'SMTP_SETTINGS'					=> 'SMTP-instellingen',
	'SMTP_USERNAME'					=> 'SMTP-gebruikersnaam',
	'SMTP_USERNAME_EXPLAIN'			=> 'Voer alleen een gebruikersnaam in als je SMTP-server dit vereist.',
	'USE_SMTP'						=> 'Gebruik SMTP-server voor e-mail',
	'USE_SMTP_EXPLAIN'				=> 'Selecteer "ja" als je e-mails via de opgegeven SMTP-server in plaats van met de lokale mailfunctie wilt of moet versturen.',
));

// Jabber settings
$lang = array_merge($lang, array(
	'ACP_JABBER_SETTINGS_EXPLAIN'	=> 'Hier kun je het gebruik van Jabber, voor chatberichten en forummeldingen, inschakelen en beheren. Jabber is een open bron protocol en dus voor iedereen beschikbaar. Sommige Jabber-servers hebben gateways of transporteermethodes die ervoor zorgen dat je gebruikers op andere netwerken kan contacteren. Niet alle servers ondersteunen alle transporteermethodes of veranderingen in het protocol en zullen deze voorkomen. Wees er zeker van dat je een geregistreerd account invult - phpBB zal de gegevens gebruiken die je hier hebt ingevuld.',

	'JAB_ENABLE'				=> 'Schakel Jabber in',
	'JAB_ENABLE_EXPLAIN'		=> 'Schakelt Jabber in voor berichten en notificaties.',
	'JAB_GTALK_NOTE'			=> 'Merk op dat GTalk niet zal werken, omdat de <samp>dns_get_record</samp> functie niet werd gevonden. Deze functie is niet aanwezig in PHP4 en werd tevens niet opgenomen in Windows systemen. Momenteel werkt het ook nog niet op BSD-gebaseerde systemen, inclusief Mac OS.',
	'JAB_PACKAGE_SIZE'			=> 'Jabber-pakketgrootte',
	'JAB_PACKAGE_SIZE_EXPLAIN'	=> 'Dit zijn het aantal berichten dat in een pakket wordt verzonden. 0 om uit te schakelen en direct te verzenden.',
	'JAB_PASSWORD'				=> 'Jabber-wachtwoord',
	'JAB_PASSWORD_EXPLAIN'		=> '<em><strong>Waarschuwing:</strong> Dit wachtwoord wordt als platte tekst worden opgeslagen en is zichtbaar voor iedereen die database toegang heeft of die dit configuratiebestand kan zien..</em>',
	'JAB_PORT'					=> 'Jabber-poort',
	'JAB_PORT_EXPLAIN'			=> 'Laat dit veld leeg, tenzij er een andere poort dan 5222 wordt gebruikt.',
	'JAB_SERVER'				=> 'Jabber-server',
	'JAB_SERVER_EXPLAIN'		=> 'Controleer %sjabber.org%s voor een lijst met servers.',
	'JAB_SETTINGS_CHANGED'		=> 'Jabber-instellingen succesvol gewijzigd.',
	'JAB_USE_SSL'				=> 'Gebruik SSL om te verbinden',
	'JAB_USE_SSL_EXPLAIN'		=> 'Indien ingeschakeld, wordt er geprobeerd een veilige verbinding te krijgen. De Jabber-poort zal gewijzigd worden naar 5223 als poort 5222 al is ingevuld.',
	'JAB_USERNAME'				=> 'Jabber gebruikersnaam of JID',
	'JAB_USERNAME_EXPLAIN'		=> 'Geef een geregistreerde gebruikersnaam of een geldig JID op. De gebruikersnaam wordt niet gecontroleerd op correctheid. Als je alleen een gebruikersnaam opgeeft, zal je JID je gebruikersnaam en de server zijn die je hierboven hebt opgegeven. Anders dien je een geldig JID in te vullen, bijvoorbeeld: gebruiker@jabber.org',
));

?>