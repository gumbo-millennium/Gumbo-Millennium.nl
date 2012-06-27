<?php
/**
*
* acp_attachments [Dutch]
*
* @package language
* @version $Id: attachments.php,v 1.0.0 2007/01/21 18:33:45 acydburn Exp $
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
	'ACP_ATTACHMENT_SETTINGS_EXPLAIN'	=> 'Hier kun je de belangrijkste instellingen voor de bijlagen en de bijhorende categorieën instellen.',
	'ACP_EXTENSION_GROUPS_EXPLAIN'		=> 'Hier kun je extensiegroepen toevoegen, verwijderen, wijzigen of deactiveren. Verdere instellingen inclusief het toewijzen van speciale categorieën, wijzigen van het downloadmechanisme en de iconen die worden weergegeven voor de bijlagen die bij een bepaalde groep horen, aan te duiden.',
	'ACP_MANAGE_EXTENSIONS_EXPLAIN'		=> 'Hier kun je de toegestane extensies beheren. Om de extensies te activeren, moet je verwijzen naar het extensie groep beheerderspaneel. We raden sterk af scripting-extensies (zoals <code>php</code>, <code>php3</code>, <code>php4</code>, <code>phtml</code>, <code>pl</code>, <code>cgi</code>, <code>py</code>, <code>rb</code>, <code>asp</code>, <code>aspx</code>, enz.) te activeren.',
	'ACP_ORPHAN_ATTACHMENTS_EXPLAIN'	=> 'Hier kun je alle geüploade bestanden zien die nog niet aan berichten zijn toegewezen. Dit komt meestal voor doordat een gebruiker een bestand aan een bericht toevoegt, maar het bericht niet verstuurt. Je kunt de bestanden verwijderen of ze aan bestaande berichten koppelen. Voor het koppelen aan een bericht heb je een geldig bericht-ID nodig. Deze dien je zelf op te zoeken. Hierdoor zal de bijlage aan het opgegeven bericht worden toegevoegd.',
	'ADD_EXTENSION'						=> 'Voeg extensie toe',
	'ADD_EXTENSION_GROUP'				=> 'Voeg extensiegroep toe',
	'ADMIN_UPLOAD_ERROR'				=> 'Fouten tijden toevoegen bestand: "%s"',
	'ALLOWED_FORUMS'					=> 'Toegestane forums',
	'ALLOWED_FORUMS_EXPLAIN'			=> 'Mogelijkheid om de toegewezen extensies in de geselecteerde (of alle, indien allemaal geselecteerd) forums te gebruiken.',
	'ALLOWED_IN_PM_POST'				=> 'Toegestaan',
	'ALLOW_ATTACHMENTS'					=> 'Sta bijlagen toe',
	'ALLOW_ALL_FORUMS'					=> 'Toestaan in alle forums',
	'ALLOW_IN_PM'						=> 'Toegestaan in alle privéberichten',
	'ALLOW_PM_ATTACHMENTS'				=> 'Bijlagen in privéberichten toestaan',
	'ALLOW_SELECTED_FORUMS'				=> 'Alleen in onderstaande geselecteerde forums',
	'ASSIGNED_EXTENSIONS'				=> 'Toegewezen extensies',
	'ASSIGNED_GROUP'					=> 'Toegewezen extensiegroepen',
	'ATTACH_EXTENSIONS_URL'				=> 'Extensies',
	'ATTACH_EXT_GROUPS_URL'				=> 'Extensiegroepen',
	'ATTACH_ID'							=> 'ID',
	'ATTACH_MAX_FILESIZE'				=> 'Maximale bestandsgrootte',
	'ATTACH_MAX_FILESIZE_EXPLAIN'		=> 'Maximale grootte van elk bestand, 0 staat voor ongelimiteerd.',
	'ATTACH_MAX_PM_FILESIZE'			=> 'Maximale bestandsgrootte berichten',
	'ATTACH_MAX_PM_FILESIZE_EXPLAIN'	=> 'Maximale bestandsgrootte per bijlage voor privéberichten, 0 staat voor ongelimiteerd.',
	'ATTACH_ORPHAN_URL'					=> 'Berichtloze bijlagen',
	'ATTACH_POST_ID'					=> 'Bericht ID',
	'ATTACH_QUOTA'						=> 'Totale bijlagenlimiet',
	'ATTACH_QUOTA_EXPLAIN'				=> 'Maximale toegekende schijfruimte voor bijlagen voor het hele forum, 0 staat voor ongelimiteerd.',
	'ATTACH_TO_POST'					=> 'Voeg bestand aan bericht toe',

	'CAT_FLASH_FILES'			=> 'Flash-bestanden',
	'CAT_IMAGES'				=> 'Afbeeldingen',
	'CAT_QUICKTIME_FILES'		=> 'Quicktime-bestanden',
	'CAT_RM_FILES'				=> 'RealMedia-bestanden',
	'CAT_WM_FILES'				=> 'Windows Media-bestanden',
	'CHECK_CONTENT'				=> 'Controleer bijlage(n)',
	'CHECK_CONTENT_EXPLAIN'		=> 'Sommige browsers kunnen worden misleid door (bewust) onjuist opgegeven mimetypes. Deze optie zorgt er voor dat dit soort bestanden worden afgewezen.',
	'CREATE_GROUP'				=> 'Maak nieuwe groep',
	'CREATE_THUMBNAIL'			=> 'Maak thumbnail',
	'CREATE_THUMBNAIL_EXPLAIN'	=> 'Maak een thumbnail indien mogelijk.',

	'DEFINE_ALLOWED_IPS'			=> 'Bepaal toegestane IP’s/hostnamen',
	'DEFINE_DISALLOWED_IPS'			=> 'Bepaal niet-toegestane IP’s/hostnamen',
	'DOWNLOAD_ADD_IPS_EXPLAIN'		=> 'Om meerdere IP’s of hostnamen op te geven, plaats je deze telkens op een nieuwe regel. Om een IP-bereik op te geven, splits dan de start- en de eind-IP met een streepje (-), het * kun je gebruiken als wildcard.',
	'DOWNLOAD_REMOVE_IPS_EXPLAIN'	=> 'Het verwijderen (of niet langer uitsluiten) van meerdere IP-adressen in één keer, gaat door de juiste combinatie van muis en/of toetsenbord toe te passen. Uitgesloten IP’s hebben een blauwe achtergrond.',
	'DISPLAY_INLINED'				=> 'Laat inline afbeeldingen zien',
	'DISPLAY_INLINED_EXPLAIN'		=> 'Indien "nee" worden de afbeeldingen getoond als link.',
	'DISPLAY_ORDER'					=> 'Volgorde Bijlagenweergave',
	'DISPLAY_ORDER_EXPLAIN'			=> 'Toon bijlagen gesorteerd op tijd.',

	'EDIT_EXTENSION_GROUP'			=> 'Wijzig extensiegroep',
	'EXCLUDE_ENTERED_IP'			=> 'Zet dit aan om de opgegeven IP/hostnaam uit te sluiten.',
	'EXCLUDE_FROM_ALLOWED_IP'		=> 'Sluit IP uit van toegestane IP’s/hostnamen',
	'EXCLUDE_FROM_DISALLOWED_IP'	=> 'Sluit IP uit van niet-toegestane IP’s/hostnamen',
	'EXTENSIONS_UPDATED'			=> 'Extensies succesvol bijgewerkt.',
	'EXTENSION_EXIST'				=> 'De extensie %s bestaat reeds.',
	'EXTENSION_GROUP'				=> 'Extensiegroep',
	'EXTENSION_GROUPS'				=> 'Extensiegroepen',
	'EXTENSION_GROUP_DELETED'		=> 'Extensiegroep succesvol verwijderd.',
	'EXTENSION_GROUP_EXIST'			=> 'De extensiegroep %s bestaat reeds.',

	'EXT_GROUP_ARCHIVES'			=> 'Archieven',
	'EXT_GROUP_DOCUMENTS'			=> 'Documenten',
	'EXT_GROUP_DOWNLOADABLE_FILES'	=> 'Downloadbare bestanden',
	'EXT_GROUP_FLASH_FILES'			=> 'Flash bestanden',
	'EXT_GROUP_IMAGES'				=> 'Afbeeldingen',
	'EXT_GROUP_PLAIN_TEXT'			=> 'Onopgemaakte tekst',
	'EXT_GROUP_QUICKTIME_MEDIA'		=> 'Quicktime media',
	'EXT_GROUP_REAL_MEDIA'			=> 'Real Media',
	'EXT_GROUP_WINDOWS_MEDIA'		=> 'Windows media',

	'GO_TO_EXTENSIONS'		=> 'Ga naar het extensiebeheer',
	'GROUP_NAME'			=> 'Groepsnaam',

	'IMAGE_LINK_SIZE'			=> 'Afmetingen afbeelding link',
	'IMAGE_LINK_SIZE_EXPLAIN'	=> 'Laat afbeeldingen in de bijlagen zien als een link indien ze groter zijn dan de hier op te geven afmetingen. Om dit te deactiveren, zet de waardes op 0px bij 0px.',
	'IMAGICK_PATH'				=> 'Pad naar Imagemagick',
	'IMAGICK_PATH_EXPLAIN'		=> 'Volledig pad naar de imagemagick conversie applicatie, bijvoorbeeld <samp>/usr/bin/</samp>.',

	'MAX_ATTACHMENTS'				=> 'Maximaal aantal bijlagen per bericht',
	'MAX_ATTACHMENTS_PM'			=> 'Maximaal aantal bijlagen per privébericht',
	'MAX_EXTGROUP_FILESIZE'			=> 'Maximale bestandsgrootte',
	'MAX_IMAGE_SIZE'				=> 'Maximale afmetingen van afbeelding',
	'MAX_IMAGE_SIZE_EXPLAIN'		=> 'Maximale grootte van de afbeeldingen in de bijlage. Zet beide waardes op 0px bij 0px om te afmetingencontrole te deactiveren.',
	'MAX_THUMB_WIDTH'				=> 'Maximale thumbnailbreedte in pixels',
	'MAX_THUMB_WIDTH_EXPLAIN'		=> 'Een gegenereerde thumbnail zal de ingevulde breedte niet overschrijden.',
	'MIN_THUMB_FILESIZE'			=> 'Minimale thumbnailbestandsgrootte',
	'MIN_THUMB_FILESIZE_EXPLAIN'	=> 'Creëer geen thumbnail voor afbeeldingen die kleiner zijn dan dit.',
	'MODE_INLINE'					=> 'Inline',
	'MODE_PHYSICAL'					=> 'Fysiek',

	'NOT_ALLOWED_IN_PM'			=> 'Alleen in forumberichten toegestaan',
	'NOT_ALLOWED_IN_PM_POST'	=> 'Niet toegestaan',
	'NOT_ASSIGNED'				=> 'Niet toegewezen',
	'NO_EXT_GROUP'				=> 'Geen',
	'NO_EXT_GROUP_NAME'			=> 'Geen groepsnaam ingevuld',
	'NO_EXT_GROUP_SPECIFIED'	=> 'Geen extensiegroep gespecificeerd.',
	'NO_FILE_CAT'				=> 'Geen',
	'NO_IMAGE'					=> 'Geen afbeelding',
	'NO_THUMBNAIL_SUPPORT'		=> 'Thumbnail ondersteuning is uitgeschakeld. Hiervoor moet ofwel de GD-library of imagemagick geïnstalleerd zijn. Beide werden echter niet gevonden.',
	'NO_UPLOAD_DIR'				=> 'De opgegeven uploadmap bestaat niet.',
	'NO_WRITE_UPLOAD'			=> 'De opgegeven uploadmap is niet beschrijfbaar. Zet de permissies op de webserver zo, dat er wel naar geschreven kan worden.',

	'ONLY_ALLOWED_IN_PM'	=> 'Alleen toegestaan in privéberichten',
	'ORDER_ALLOW_DENY'		=> 'Toestaan',
	'ORDER_DENY_ALLOW'		=> 'Niet toestaan',

	'REMOVE_ALLOWED_IPS'		=> 'Verwijder of sluit de <em>toegestane</em> IP’s/hostnamen niet langer uit',
	'REMOVE_DISALLOWED_IPS'		=> 'Verwijder of sluit de <em>niet-toegestane</em> IP’s/hostnamen niet langer uit',

	'SEARCH_IMAGICK'				=> 'Zoek naar Imagemagick',
	'SECURE_ALLOW_DENY'				=> 'Sta wel/niet toe lijst',
	'SECURE_ALLOW_DENY_EXPLAIN'		=> 'Wijzig de standaardkeuze, wanneer veilige downloads ingeschakeld zijn, van de toelaten/weigeren lijst naar dat van een <strong>whitelist</strong> (toelaten) of een <strong>blacklist</strong> (weigeren).',
	'SECURE_DOWNLOADS'				=> 'Veilige downloads inschakelen',
	'SECURE_DOWNLOADS_EXPLAIN'		=> 'Indien deze optie ingeschakeld is, zijn downloads gelimiteerd tot de opgegeven IP’s/hostnamen.',
	'SECURE_DOWNLOAD_NOTICE'		=> 'Veilige downloads is uitgeschakeld. De onderstaande instellingen worden pas toegepast als veilige downloads staat ingeschakeld.',
	'SECURE_DOWNLOAD_UPDATE_SUCCESS'=> 'De IP-lijst is succesvol bijgewerkt',
	'SECURE_EMPTY_REFERRER'			=> 'Sta lege verwijzingen toe',
	'SECURE_EMPTY_REFERRER_EXPLAIN'	=> 'Veilige downloads zijn gebaseerd op verwijzingen. Wil je downloads zonder verwijzing(en) toestaan?',
	'SETTINGS_CAT_IMAGES'			=> 'Afbeeldingcategorie instellingen',
	'SPECIAL_CATEGORY'				=> 'Speciale categorie',
	'SPECIAL_CATEGORY_EXPLAIN'		=> 'Speciale categorieën verschillen van wijze waarop ze in berichten worden weergegeven.',
	'SUCCESSFULLY_UPLOADED'			=> 'Succesvol geüpload.',
	'SUCCESS_EXTENSION_GROUP_ADD'	=> 'Extensiegroep succesvol toegevoegd.',
	'SUCCESS_EXTENSION_GROUP_EDIT'	=> 'Extensiegroep succesvol bijgewerkt.',

	'UPLOADING_FILES'				=> 'Bestanden uploaden',
	'UPLOADING_FILE_TO'				=> 'Bestand "%1$s" uploaden naar het bericht met ID %2$d…',
	'UPLOAD_DENIED_FORUM'			=> 'Je hebt geen permissies om bestanden te uploaden naar het forum "%s".',
	'UPLOAD_DIR'					=> 'Uploadmap',
	'UPLOAD_DIR_EXPLAIN'			=> 'Uploadmap voor bijlagen. Indien je deze map wijzigt als er reeds bestanden geüpload zijn, moet je de bestanden handmatig naar de nieuwe map verplaatsen.',
	'UPLOAD_ICON'					=> 'Upload icoon',
	'UPLOAD_NOT_DIR'				=> 'De opgegeven uploadlocatie is geen (geldige) map.',
));

?>