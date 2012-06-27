<?php
/**
*
* acp_users [Dutch]
*
* @package language
* @version $Id: users.php,v 1.0.0 2007/01/24 11:29:56 acydburn Exp $
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
	'ADMIN_SIG_PREVIEW'		=> 'Voorbeeld onderschrift.',
	'AT_LEAST_ONE_FOUNDER'	=> 'Het is niet toegestaan om de eigenaar te wijzigen naar een normale gebruiker. Er moet tenminste één eigenaar zijn ingesteld voor dit forum. Als je de status van deze eigenaar wilt aanpassen, promoveer dan eerst een andere gebruiker tot eigenaar.',

	'BAN_ALREADY_ENTERED'	=> 'De ban was reeds ingevoerd. De banlijst is niet bijgewerkt.',
	'BAN_SUCCESSFUL'		=> 'Ban succesvol ingevoerd.',

	'CANNOT_BAN_ANONYMOUS'			=> 'Je mag niet het annonieme account bannen. Permissies voor annonieme gebruikers kunnen worden ingesteld via het permissies tabblad.',
	'CANNOT_BAN_FOUNDER'			=> 'Je kunt geen eigenaar-accounts bannen.',
	'CANNOT_BAN_YOURSELF'			=> 'Je kunt jezelf niet bannen.',
	'CANNOT_DEACTIVATE_BOT'			=> 'Je kunt geen bot-accounts uitschakelen. Deactiveer in plaats daarvan de bot via de bots pagina.',
	'CANNOT_DEACTIVATE_FOUNDER'		=> 'Je kunt geen eigenaar-accounts deactiveren.',
	'CANNOT_DEACTIVATE_YOURSELF'	=> 'Je kunt je eigen account niet deactiveren.',
	'CANNOT_FORCE_REACT_BOT'		=> 'Je kunt geen bot-accounts verplichten om opnieuw te activeren. Activeer in plaats daarvan de bot via de bots pagina.',
	'CANNOT_FORCE_REACT_FOUNDER'	=> 'Je kunt geen eigenaar-accounts verplichten om opnieuw te activeren.',
	'CANNOT_FORCE_REACT_YOURSELF'	=> 'Je kunt jezelf niet verplichten om opnieuw te activeren.',
	'CANNOT_REMOVE_ANONYMOUS'		=> 'Het is niet mogelijk om gast-accounts te verwijderen.',
	'CANNOT_REMOVE_YOURSELF'		=> 'Je kunt je eigen gebruikersaccount niet verwijderen.',
	'CANNOT_SET_FOUNDER_IGNORED'	=> 'Genegeerde gebruikers kunnen niet worden gepromoot naar eigenaar.',
	'CANNOT_SET_FOUNDER_INACTIVE'	=> 'Je dient gebruikers eerst te activeren, voordat je ze tot eigenaar kunt promoten. Alleen geactiveerde gebruikers kunnen worden gepromoot.',
	'CONFIRM_EMAIL_EXPLAIN'			=> 'Je hoeft deze alleen op te geven indien je je e-mailadres wijzigt.',

	'DELETE_POSTS'			=> 'Verwijder berichten',
	'DELETE_USER'			=> 'Verwijder gebruiker',
	'DELETE_USER_EXPLAIN'	=> 'Let op, het verwijderen van een gebruiker is definitief, dit kan niet ongedaan worden gemaakt.',

	'FORCE_REACTIVATION_SUCCESS'	=> 'Succesvol verplicht om opnieuw te activeren.',
	'FOUNDER'						=> 'Eigenaar',
	'FOUNDER_EXPLAIN'				=> 'Eigenaren hebben alle beheerrechten en kunnen nooit worden verbannen, verwijderd of gewijzigd worden door andere gebruikers.',

	'GROUP_APPROVE'					=> 'Keur gebruiker goed',
	'GROUP_DEFAULT'					=> 'Maak groep standaard voor lid',
	'GROUP_DELETE'					=> 'Verwijder lid uit groep',
	'GROUP_DEMOTE'					=> 'Degradeer groepleider',
	'GROUP_PROMOTE'					=> 'Promoveer tot groepsleider',

	'IP_WHOIS_FOR'			=> 'IP-whois voor %s',

	'LAST_ACTIVE'			=> 'Laatst actief',

	'MOVE_POSTS_EXPLAIN'	=> 'Selecteer het forum waarnaar alle berichten die de gebruiker heeft gepost naar moeten worden verplaatst.',

	'NO_SPECIAL_RANK'		=> 'Geen speciale rang aangegeven',
	'NO_WARNINGS'			=> 'Geen waarschuwingen.',
	'NOT_MANAGE_FOUNDER'	=> 'Je probeert een gebruiker met eigenaar-status te bewerken. Alleen eigenaren hebben de rechten om andere eigenaren te bewerken.',

	'QUICK_TOOLS'			=> 'Snel gereedschap',

	'REGISTERED'			=> 'Geregistreerd',
	'REGISTERED_IP'			=> 'Geregistreerd op IP',
	'RETAIN_POSTS'			=> 'Laat berichten staan',

	'SELECT_FORM'			=> 'Selecteer formulier',
	'SELECT_USER'			=> 'Selecteer gebruiker',

	'USER_ADMIN'					=> 'Gebruikersbeheer',
	'USER_ADMIN_ACTIVATE'			=> 'Activeer account',
	'USER_ADMIN_ACTIVATED'			=> 'Gebruiker succesvol geactiveerd.',
	'USER_ADMIN_AVATAR_REMOVED'		=> 'Avatar succesvol verwijderd van het gebruikersaccount.',
	'USER_ADMIN_BAN_EMAIL'			=> 'Ban volgens e-mail',
	'USER_ADMIN_BAN_EMAIL_REASON'	=> 'E-mailadres verbannen via gebruikersbeheer',
	'USER_ADMIN_BAN_IP'				=> 'Ban volgens IP',
	'USER_ADMIN_BAN_IP_REASON'		=> 'IP verbannen via gebruikersbeheer',
	'USER_ADMIN_BAN_NAME_REASON'	=> 'Gebruikersnaam verbannen via gebruikersbeheer',
	'USER_ADMIN_BAN_USER'			=> 'Ban volgens gebruikersnaam',
	'USER_ADMIN_DEACTIVATE'			=> 'Deactiveer account',
	'USER_ADMIN_DEACTIVED'			=> 'Gebruiker succesvol gedeactiveerd.',
	'USER_ADMIN_DEL_ATTACH'			=> 'Verwijder alle bijlagen',
	'USER_ADMIN_DEL_AVATAR'			=> 'Verwijder avatar',
	'USER_ADMIN_DEL_OUTBOX'			=> 'Leeg PB folder postvak uit',
	'USER_ADMIN_DEL_POSTS'			=> 'Verwijder alle berichten',
	'USER_ADMIN_DEL_SIG'			=> 'Verwijder onderschrift',
	'USER_ADMIN_EXPLAIN'			=> 'Hier kun je de gebruikersinformatie wijzigen en bepaalde opties specificeren. Gebruik het gebruikers- en groepenpermissies systeem om de gebruikerspermissies in te stellen.',
	'USER_ADMIN_FORCE'				=> 'Verplicht om opnieuw te activeren',
	'USER_ADMIN_LEAVE_NR'			=> 'Verwijder van nieuw geregistreerd',
	'USER_ADMIN_MOVE_POSTS'			=> 'Verplaats alle berichten',
	'USER_ADMIN_SIG_REMOVED'		=> 'Onderschrift succesvol verwijderd.',
	'USER_ATTACHMENTS_REMOVED'		=> 'Alle bijlagen van deze gebruiker zijn succesvol verwijderd.',
	'USER_AVATAR_NOT_ALLOWED'		=> 'De avatar kan niet worden getoond, omdat avatars niet zijn toegestaan.',
	'USER_AVATAR_UPDATED'			=> 'De avatar van deze gebruiker is succesvol bijgewerkt.',
	'USER_AVATAR_TYPE_NOT_ALLOWED'	=> 'De huidige avatar kan niet worden getoond omdat dit type niet is toegestaan.',
	'USER_CUSTOM_PROFILE_FIELDS'	=> 'Aangepaste profielvelden',
	'USER_DELETED'					=> 'Gebruiker succesvol verwijderd.',
	'USER_GROUP_ADD'				=> 'Voeg gebruiker toe aan groep.',
	'USER_GROUP_NORMAL'				=> 'Gebruikers-gedefinieerde groep. Gebruiker is lid van',
	'USER_GROUP_PENDING'			=> 'Groepsgebruiker staat in de wachtrij',
	'USER_GROUP_SPECIAL'			=> 'Speciale groepsgebruiker is lid van',
	'USER_LIFTED_NR'				=> 'Nieuw geregistreerde status van gebruiker succesvol verwijderd.',
	'USER_NO_ATTACHMENTS'			=> 'Er zijn geen bijgevoegde bestanden om te laten zien.',
	'USER_OUTBOX_EMPTIED'			=> 'Privéberichten postvak uit van gebruiker succesvol geleegd.',
	'USER_OUTBOX_EMPTY'				=> 'De privéberichten postvak uit was al leeg.',
	'USER_OVERVIEW_UPDATED'			=> 'Gebruikersdetails bijgewerkt.',
	'USER_POSTS_DELETED'			=> 'Alle berichten die door deze gebruiker zijn geplaatst, zijn verwijderd.',
	'USER_POSTS_MOVED'				=> 'Alle berichten van de gebruiker zijn verplaatst naar het geselecteerde forum.',
	'USER_PREFS_UPDATED'			=> 'Voorkeuren van gebruiker bijgewerkt.',
	'USER_PROFILE'					=> 'Gebruikersprofiel',
	'USER_PROFILE_UPDATED'			=> 'Gebruikersprofiel bijgewerkt.',
	'USER_RANK'						=> 'Gebruikersrang',
	'USER_RANK_UPDATED'				=> 'Gebruikersrang bijgewerkt.',
	'USER_SIG_UPDATED'				=> 'Gebruikersonderschrift succesvol bijgewerkt.',
	'USER_WARNING_LOG_DELETED'		=> 'Geen informatie beschikbaar. Mogelijk is de log regel verwijderd.',
	'USER_TOOLS'					=> 'Basisgereedschap',
));

?>