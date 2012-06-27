<?php
/**
*
* captcha_qa [Dutch]
*
* @package language
* @version $Id: captcha_qa.php 9902 2009-08-01 11:07:48Z acydburn $
* @copyright (c) 2009 phpBB Group modified by phpBB.nl (vertaalteam@phpbb.nl) in 2009
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
	'CAPTCHA_QA'				=> 'V&amp;A',
	'CONFIRM_QUESTION_EXPLAIN'	=> 'Deze vraag is bedoeld om automatische registraties te voorkomen.',
	'CONFIRM_QUESTION_WRONG'	=> 'Je hebt een onjuist antwoord gegeven op de vraag.',

	'QUESTION_ANSWERS'			=> 'Antwoorden',
	'ANSWERS_EXPLAIN'			=> 'Vul hier de antwoorden op de vraag in, één antwoord per regel.',
	'CONFIRM_QUESTION'			=> 'Vraag',

	'ANSWER'					=> 'Antwoord',
	'EDIT_QUESTION'				=> 'Bewerk vraag',
	'QUESTIONS'					=> 'Vragen',
	'QUESTIONS_EXPLAIN'			=> 'Bij elke registratie zal een van de door jou hier opgegeven vragen worden gevraagd als je de V&A plug-in hebt ingeschakeld. Je moet minimaal één vraag in de standaardtaal van het forum opgeven om deze plug-in te gebruiken. De vragen moeten simpel zijn voor je doelpubliek, maar buiten de mogelijkheden van Google™ vallen. Vergeet ook niet regelmatig de vragen aan te passen. Schakel de strikte controle in, indien je vraag afhankelijk is van zowel hoofdletters als kleine, interpunctie of spaties.',
	'QUESTION_DELETED'			=> 'Vraag verwijderd',
	'QUESTION_LANG'				=> 'Taal',
	'QUESTION_LANG_EXPLAIN'		=> 'De taal waarin deze vraag en het antwoord zijn geschreven.',
	'QUESTION_STRICT'			=> 'Strikte controle',
	'QUESTION_STRICT_EXPLAIN'	=> 'Schakel in om de controle hoofdletter-, interpunctie- en spatiegevoelig te laten zijn.',

	'QUESTION_TEXT'				=> 'Vraag',
	'QUESTION_TEXT_EXPLAIN'		=> 'De vraag die gesteld zal worden aan de gebruiker.',

	'QA_ERROR_MSG'				=> 'Vul alle velden in en minimaal één antwoord.',
	'QA_LAST_QUESTION'			=> 'Je kunt niet alle vragen verwijderen terwijl de plug-in actief is.',

	));

?>