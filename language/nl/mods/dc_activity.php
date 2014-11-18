<?php
/**
*
* @package phpBB3
* @version $Id$
* @athor: Gerco Versloot
* @date: 6 - 8 - 2012
* @license http://opensource.org/licenses/gpl-license.php GNU Public License
* @Gumbo Millennium
*/

/**
* @ignore
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


// Adding the trancelation
// user side
$lang = array_merge($lang, array(
    'MAYBE'    							=> 'Misschien',
    'AMOUNT'    						=> 'Aantal',
    'PAID'    							=> 'Betaald',
    'NOT_PAID'    						=> 'Niet betaald',
    'SAVED'    							=> 'Opgeslagen',
    'TO'                                => 'Naar',
    'DC_ACT_CHANGE_STATE'    			=> 'Verander staat',
    'DC_ACT_ALREADY_STATUS'    			=> 'De gebruiker verkeerd al in deze status.',
    'DC_ACT_INVALID_STATUS'    			=> 'Ongeldig gebruiker status',
    'DC_ACT_IN_PAST_AND_OVER'           => 'Dit evenement is al afgelopen, kijk a.u.b. naar evenementen in de toekomst',
    'DC_ACT_IN_PAST'    				=> 'Dit evenement is al geweest. Iets in het verleden kan niet worden veranderd.',
    'DC_ACT_NOT_ENROLLED'    			=> 'Gebruiker is niet aangemeld',
    'DC_ACT_NOT_ACTIVE'    				=> 'Dit evenement is niet actief',
    'DC_ACT_ERROR_NO_ROWS_ADDED'    	=> 'Geen nieuwe rijen toegevoegd',
    'DC_ACT_ERROR_TO_MANY_ROWS_ADDED'   => 'Geen nieuwe rijen toegevoegd',
    'DC_ACT_NO_ACT'   					=> 'Evenement niet gevonden',
    'DC_ACT_ERROR_LOAD'   				=> 'Fout tijdens het laden van dit evenement',
    'DC_ACT'   							=> 'Evenement',
    'DC_ACT_LANG_TILL'   				=> 'Tot',
    'DC_ACT_LANG_ENROLLS'   			=> 'Mensen die komen',
    'DC_ACT_LANG_SUBSCRIBE'   			=> 'Abonnement',
    'DC_ACT_LANG_DATE'   				=> 'Datum en tijd',
    'DC_ACT_LANG_PRICE'   				=> 'Prijs',
    'DC_ACT_LANG_LOCATION'  			=> 'Locatie',
    'DC_ACT_SAVE_COMMENT'  				=> 'Sla reactie op',
    'DC_ACT_ENROLL_NOBODY'  			=> 'Niemand heeft zich voor dit evenement aangemeld',
    'DC_ACT_ENROLL_FORCE'  				=> 'Is aanmelden vereist?',
    'DC_ACT_ENROLL_TIME'  				=> 'Open voor aanmelding tot',
    'DC_ACT_ENROLL_AMOUNT'  			=> 'Gebruikers die zich hebben aangemeld',
    'DC_ACT_ENROLL_AMOUNT_MAX'  		=> 'Het maximale aantal aangemelde gebruikers is bereikt',
    'DC_ACT_ENROLL_LEFT'  				=> 'Aanmeldingen over',
    'DC_ACT_ENROLL_UNLIMITED'  			=> 'Oneindig',
    'DC_ACT_ENROLL_DATETIME_OVER'  		=> 'De tijd om je aan te melden is over',
    'DC_ACT_ENROLL_CLOSED'  			=> 'Aanmeldingen voor dit evenement zijn gesloten',
    'DC_ACT_UNSUBSCRIBE'  				=> 'Je kunt je nog afmelden tot',
    'DC_ACT_LANG_ICAL_TITLE'            => 'Persoonlijke iCal voor je kalender',
    'DC_ACT_LANG_ICAL_URL'  			=> 'Kopieër je persoonlijke iCal link',
    'DC_ACT_LANG_ICAL_EXPLAIN'          => 'Dit is je persoonlijke iCal feed. Je kunt deze link gebruiken om automatisch je evenementen te synchroniseren met je digitale kalender. De iCal link is persoonlijk, omdat het alleen let op de voor jou zichtbare evenementen. <br /> (Login is vereist, anders zie je alleen de publieke evenementen)',
    'DC_ACT_LANG_ICAL_MORE_INFO'  		=> 'Hoe voeg je deze iCal link toe aan je Google Calendar?',
    'DC_ACT_NO_LOGIN_NEEDED'  			=> 'Dit evenement is open voor iedereen.<br />Dus je hoeft je niet aan te melden.',
    'DC_ACT_LIST'                       => 'Evenementen',
    'DC_ACT_GO_TO'                      => 'Ga naar evenement',
    'DC_ACT_USER_ENROLLED'              => 'Je gaat naar dit evenement',
    'DC_ACT_IS_NOT_ENROLLED'            => 'Je gaat niet naar dit evenement',
    'DC_ACT_EVENT_MANAGEMENT'  		    => 'Evenement beheer',
));

// management side  
$lang = array_merge($lang, array(
    'OPTIONAL_SETTINGS'                 => 'Optionele instellingen',
    'ACP_ACTIVITY_NEW'  				=> 'Voeg nieuw evenement toe',
    'ACP_ACTIVITY_NEW_EXPLAIN'  		=> 'Voeg nieuw evenemnt toe aan het systeem, en iets meer tekst',
    'ACP_DC_ACT_DESCRIPTION'  			=> 'Beschrijving',
    'ACP_DC_ACT_START_DATE'  			=> 'Begindatum',
    'ACP_DC_ACT_START_DATE_EXPLAIN'		=> 'Voer de begindatum in',
	'ACP_DC_ACT_START_TIME'  			=> 'Begintijd',
    'ACP_DC_ACT_START_TIME_EXPLAIN'		=> 'Voer de begintijd in',
	'ACP_DC_ACT_END_DATE'  				=> 'Einddatum',
    'ACP_DC_ACT_END_DATE_EXPLAIN'		=> 'Voer de einddatum in',
	'ACP_DC_ACT_END_TIME'  				=> 'Eindtijd',
    'ACP_DC_ACT_END_TIME_EXPLAIN'		=> 'Voer de eindtijd in',
    'ACP_DC_ACT_NAME'  					=> 'Geef het evenement een naam',
    'ACP_DC_ACT_NAME_EXPLAIN'  			=> 'Geef het nieuwe evenement een naam',
    'ACP_DC_ACT_ENROL'  				=> 'Neem deel aan dit evenement',
    'ACP_DC_ACT_DEENROL'  				=> 'Verlaat dit evenement',
    'ACP_DC_ACT_ENROL_EXPLAIN'  		=> 'Laat mensen zich abonneren voor dit evenement',
    'ACP_DC_ACT_LOCATION'  				=> 'Locatie',
    'ACP_DC_ACT_LOCATION_EXPLAIN'  		=> 'Voer de startlocatie in van dit evenement',
    'ACP_DC_ACT_PAY_OPTION'  			=> 'Betaling',
    'ACP_DC_ACT_COMMISSION'  			=> 'Commissie',
    'ACP_DC_ACT_COMMISSION_EXPLAIN'  	=> 'Welke commissie maakt dit evenement',
    'ACP_DC_ACT_ENROLL_DATE'  			=> 'Uiterste abonneerdatum',
    'ACP_DC_ACT_ENROLL_DATE_EXPLAIN'  	=> 'De datum dat gebruikers zich kunnen abonneren. <br />Als deze leeg blijft, zal de uiterste abonneerdatum gelijk zijn aan de begindatum',
	'ACP_DC_ACT_ENROLL_TIME'  			=> 'Uiterste abonneertijd',
    'ACP_DC_ACT_ENROLL_TIME_EXPLAIN'  	=> 'De tijd dat gebruikers zich kunnen abonneren op de uiterste abonneerdatum. <br />Als deze leeg blijft, zal de uiterst abonneertijd gelijk zijn aan de begintijd',
    'ACP_DC_ACT_ENROLL_MAX'  			=> 'Maximaal aantal gebruikers',
    'ACP_DC_ACT_ENROLL_MAX_EXPLAIN'  	=> 'Het maximale aantal gebruikers die zich kunnen abonneren voor dit evenement <br>0 is oneindig',
    'ACP_DC_ACT_PRICE'  				=> 'Prijs',
    'ACP_DC_ACT_PRICE_EXPLAIN'  		=> 'De prijs die niet-Gumbo Millennium leden moeten betalen',
	'ACP_DC_ACT_PRICE_MEMBER'  			=> 'Prijs voor Gumbo Millennium leden',
    'ACP_DC_ACT_PRICE_MEMBER_EXPLAIN'  	=> 'De prijs die Gumbo Millennium leden moeten betalen',
    'ACP_DC_ACT_ACCES'  				=> 'Toegangsinstellingen',
    'ACP_DC_ACT_ADD_GROUP_MANAGER'  			=> 'Voeg beheerdergroepen toe',
    'ACP_DC_ACT_ADD_GROUP_MANAGER_EXPLAIN'  	=> 'Voeg groepen toe die toegang tot dit evenement en dit evenement kunnen aanpassen',
	'ACP_DC_ACT_ADD_GROUP'  			=> 'Voeg zichtgroepen toe',
    'ACP_DC_ACT_ADD_GROUP_EXPLAIN'  	=> 'Voeg groepen toe die toegang hebben tot dit evenement',
    'NOT_EMPTY'  						=> 'mag niet leeg zijn',
    'NOT_PREG'  						=> 'bevat ongeldige karakters',
    'WRONG_FORMAT'  					=> 'heeft een ongeldig formaat',
    'CASH'  							=> 'Contant',
    'IDEAL'  							=> 'iDeal (nog niet ondersteund)',
    'DEACTIVE'  						=> 'Deactief',
    'STATE'  							=> 'Staat',
    'CANT_LATER'  						=> 'kan niet later zijn dan',
    'EARLYER'  							=> 'kan niet eerder zijn dan',
    'CANT_PAST'  						=> 'kan niet in het verleden zijn',
    'NOT_FOUND'  						=> 'niet gevonden',
    'UNVALID'  							=> 'is ongeldig',
    'ACP_DC_ACT_OVERVIEW'  				=> 'Evenementen overzicht',
    'ACP_DC_ACT_OVERVIEW_EXPLAIN'  		=> 'Alle toekomstige evenementen',
    'ACP_DC_ACT_EDIT'  					=> 'Pas dit evenement aan',
	'ACP_DC_ACT_EDIT_EXPLAIN'  			=> 'Als je er zin in hebt, kun je dit evenement aanpassen',
	'ACP_DC_ACT_RECYCLE'  				=> 'Recycle dit evenement',
	'ACP_DC_ACT_RECYCLE_EXPLAIN'  		=> 'Maak een nieuw evenement uit een oud evenement, zonder de oude data als begindatum en -tijd',
	'ACP_DC_ACT_PAST'  					=> 'Evenementen uit het verleden',
	'ACP_DC_ACT_PAST_EXPLAIN'  			=> 'De lijst met evenementen die al plaats hebben gevonden. Je kunt deze recyclen of een voorvertoning van dit evenement weergeven. <br />Gebruik de invoervelden om alle andere evenementen te vinden.',
	'ACP_DC_ACT_PAST_OVERVIEW_EXPLAIN'  => 'De lijst van de laatste tien evenementen die al plaats hebben gevonden. Je kunt deze recyclen, er een voorvertoning van weergeven en alle abonnees van het evenement zien.',
	'ADVANCED_SEARCH'  					=> 'Geavanceerd zoeken',
	'ACP_DC_ACT_END_DATE_UNSUBSCRIBE'  			=> 'Einddatum om je abonnement op te zeggen',
	'ACP_DC_ACT_END_DATE_UNSUBSCRIBE_EXPLAIN'  	=> 'De datum dat de gebruiker z\'n abonnement kan opzeggen. <br />Als deze leeg blijft, wordt de uiterste abonneerdatum gelijk aan de begindatum',
	'ACP_DC_ACT_END_TIME_UNSUBSCRIBE'  			=> 'Eindtijd om je abonnement op te zeggen',
	'ACP_DC_ACT_END_TIME_UNSUBSCRIBE_EXPLAIN'  	=> 'De tijd dat gebruikers hun abonnement kunnen opzeggen van dit evenement. <br />Als deze leeg blijft, wordt de uiterste abonneertijd gelijk aan de begintijd',
	'ACP_DC_ACT_CURRENT'  				=> 'Huidige evenementen',
	'ACP_DC_ACT_ACTIVE'  				=> 'Actieve evenementen',
	'ACP_DC_ACT_DEACTIVE'  				=> 'Deactieve evenementen',
	'UNVALED_EMAIL_ADDRESS'  			=> '\'%s\' is een ongeldig e-mailadres voor \'%s\'.',
	
));

// For management past activities
$lang = array_merge($lang, array(
    'ACP_DC_ACT_START_DATE_FROM'  		=> 'Begindatum van',
    'ACP_DC_ACT_START_DATE_TO'  		=> 'Begindatum tot',
	'ACP_DC_ACT_END_DATE_FROM'  		=> 'Einddatum van',
    'ACP_DC_ACT_END_DATE_TO'  			=> 'Einddatum tot',
	
	'LIST_ACTIVITYS'    				=> '%s Evenementen',
	'LIST_ACTIVITY'    					=> '1 Evenement',
	'ALL_ACTIVITY'    					=> 'Alle evenementen',
	'ACP_DC_ACT_AMOUNT_SIGNED'    		=> 'Aantal Aangemelden',
	
));

// For management enrolls/subscribe list 
$lang = array_merge($lang, array(
    'ACP_DC_ACT_ENROLL'  				=> 'Abonneerlijst',
    'ACP_DC_ACT_ENROLL_EXPLAIN'  		=> 'De lijst van alle gebruikers die zich op deze activiteit hebben geabonneerd.',
    'ACP_DC_ACT_COMMENT'  				=> 'Reageer',
    'ACP_DC_ACT_STATUS'  				=> 'Status',
    'ACP_DC_SELECT_USER'  				=> 'Selecteer een gebruiker',
    'ACP_DC_SELECT_USER_EXPLAIN'  		=> 'Selecteer een gebruiker waar je de betaling van wil aanpassen',
    'ACP_DC_ACT_PAID'  					=> 'Het bedrag dat de gebruiker heeft betaald',
    'DC_ACT_USER_NOT_ENROLLED'    		=> 'is niet geabonneerd',
    'DC_ACT_PAYMENT_DONE'    			=> 'Betaling afgerond',
    'DC_ACT_REALNAME'    				=> 'Echte naam',
	'LIST_USERS'    					=> '%s Gebruikers',
	'LIST_USER'    						=> '1 Gebruiker',
    'ACP_DC_SELECT_USERS'    			=> 'Selecteer gebruiker(s)',
    'ACP_DC_SELECT_MULTI_USER'    		=> 'Selecteer meerdere gebruikers',
    'ACP_DC_SELECT_MULTI_USER_EXPLAIN'	=> 'Voer gebruikersnamen in om het betaalde bedrag van meerdere gebruikers aan te passen. <br /> Als je een gebruikersnaam in het veld voert, zal het "Selecteer een gebruiker" veld niet gebruikt worden.',
    'ACP_DC_ACT_DISPLAY_LIMIT'    		=> 'Geef resultaten weer',
    'ACP_DC_ACT_INVALED_USERNAME'    	=> 'Ongeldige gebruiker(s)',
    'DC_ACT_INVALID_ACTION'    			=> 'Ongeldige actie',
    'ACP_DC_ACTION_OPTIONS'    			=> 'Selecteer actie',
    'ACP_DC_ACTION_OPTIONS_EXPLAIN'		=> 'Selecteer de actie die je wil uitvoeren',
    'ACP_DC_ACTION_PAY'					=> 'Verander betaling',
    'ACP_DC_ACTION_EMAIL'				=> 'Verzend e-mail',
    'ACP_DC_ACTION_SUBSCRIBE'			=> 'Abonneer gebruiker(s) (Verander status naar ja)',
    'ACP_DC_ACTION_UNSUBSCRIBE'			=> 'Zeg abonnement op van gebruiker(s) (Verander status naar nee)',
    'ACP_DC_USERS_ADDED'				=> 'Gebruikers succesvol geabonneerd op evenement',
    'ADD_USERS'							=> 'Voeg gebruiker(s) toe',
    'SELECT_USER'						=> 'Selecteer gebruiker',
    'SELECT_USERS'                      => 'Selecteer alle gebruikers',
    'ENROLLED_USERS'					=> 'Aangemelde gebruikers',
));

// For management send mail
$lang = array_merge($lang, array(
    'ACP_DC_AC_SEND_MAIL'  				=> 'E-mail',
    'ACP_DC_AC_SEND_MAIL_EXPLAIN'  		=> 'Stel een e-mail op',
	'APC_DC_SEND_MAIL_SETTINGS'			=> 'E-mail instellingen',
	'DC_ACT_EMAIL_FROM'					=> 'Verzend- en antwoord e-mailadres',
	'DC_ACT_EMAIL_FROM_EXPLAIN'			=> 'Als een e-mailadres is opgegeven, zal dit het verzend e-mailadres zijn. Ook zullen de antwoorden op dit adres worden ontvangen. <br /> Als deze leeg blijft, zal het verzend e-mailadres noreply@gumbo-millennium.nl zijn',
));

// For group list
$lang = array_merge($lang, array(
    'FIND_GROUP'  						=> 'Vind een groep',
    'NO_GROUPS'  						=> 'Geen groepen gevonden voor deze zoekcriteria.',
    'GROUPLIST'  						=> 'Groeplijst',
    'FIND_GROUPNAME_EXPLAIN'	=> 'Gebruik dit formulier om te zoeken naar specifieke groepen. Je hoeft niet alle velden in te vullen. Om gedeeltelijk overeenkomende data te vinden, kun je * gebruiken als wildcard. Gebruik de vinkjes om één of meerdere gebruikersnamen te selecteren (afhankelijk van het formulier worden sommige gebruikersnamen al geaccepteerd) en klik op de Selecteer Gemarkeerde knop om terug te gaan naar het vorige formulier.',
    'GROUPNAME'  						=> 'Groepsnaam',
    'SORT_GROUPNAME'  					=> 'Groepsnaam',
	'L_FIND_GROUP'						=> 'Vind een groep',
	'LIST_GROUP'						=> '1 Groep',
	'LIST_GROUPS'						=> '%d Groepen',
));

?>
