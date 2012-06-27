<?php
/**
*
* acp_modules [Dutch]
*
* @package language
* @version $Id: modules.php,v 1.0.0 2007/01/26 16:09:16 acydburn Exp $
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
	'ACP_MODULE_MANAGEMENT_EXPLAIN'	=> 'Hier worden de verschillende modules beheerd. Let erop dat het beheerderspaneel een 3-level-structuur heeft (categorie -> categorie -> module). De anderen hebben een 2-level-structuur (categorie -> module) welke dient te worden behouden. Let op: Wanneer je de modules van het module management verwijdert of uitschakelt, dat je jezelf ook uitsluit.',
	'ADD_MODULE'					=> 'Module toevoegen',
	'ADD_MODULE_CONFIRM'			=> 'Weet je zeker dat je de geselecteerde module op deze wijze wilt toevoegen?',
	'ADD_MODULE_TITLE'				=> 'Voeg een module toe',

	'CANNOT_REMOVE_MODULE'	=> 'De module kan niet worden verwijderd, omdat andere module(s) hiervan afhankelijk zijn. Verwijder de afhankelijke module(s) eerst en probeer het daarna nogmaals.',
	'CATEGORY'				=> 'Categorie',
	'CHOOSE_MODE'			=> 'Module-methode kiezen',
	'CHOOSE_MODE_EXPLAIN'	=> 'Kies de modules die worden gebruikt.',
	'CHOOSE_MODULE'			=> 'Kies module',
	'CHOOSE_MODULE_EXPLAIN'	=> 'Kies het bestand dat bij deze module hoort.',
	'CREATE_MODULE'			=> 'Maak een nieuwe module',

	'DEACTIVATED_MODULE'	=> 'Deactiveer module',
	'DELETE_MODULE'			=> 'Verwijder module',
	'DELETE_MODULE_CONFIRM'	=> 'Weet je zeker dat je deze module wilt verwijderen?',

	'EDIT_MODULE'			=> 'Bewerk module',
	'EDIT_MODULE_EXPLAIN'	=> 'Hier kun je de instellingen van de module naar wens aanpassen.',

	'HIDDEN_MODULE'			=> 'Verborgen module',

	'MODULE'					=> 'Module',
	'MODULE_ADDED'				=> 'Module succesvol toegevoegd.',
	'MODULE_DELETED'			=> 'Module succesvol verwijderd.',
	'MODULE_DISPLAYED'			=> 'Modules getoond',
	'MODULE_DISPLAYED_EXPLAIN'	=> 'Als je niet wilt dat deze module zichtbaar is, maar wel wordt gebruikt, stel deze dan op "nee" in.',
	'MODULE_EDITED'				=> 'Module succesvol gewijzigd.',
	'MODULE_ENABLED'			=> 'Module ingeschakeld',
	'MODULE_LANGNAME'			=> 'Module taalnaam',
	'MODULE_LANGNAME_EXPLAIN'	=> 'Voer de modulenaam in. Gebruik de taal altijd als de naam uit een taalbestand komt.',
	'MODULE_TYPE'				=> 'Module type',

	'NO_CATEGORY_TO_MODULE'	=> 'Het is niet mogelijk om de categorie om te zetten in een module. Verwijder of verplaats eerst alle afhankelijke modules voordat je deze actie voortzet.',
	'NO_MODULE'				=> 'Geen module gevonden.',
	'NO_MODULE_ID'			=> 'Geen module-ID is gespecificeerd.',
	'NO_MODULE_LANGNAME'	=> 'Geen module taalnaam is gespecificeerd.',
	'NO_PARENT'				=> 'Geen hoofdmodule',

	'PARENT'				=> 'Hoofdmodule',
	'PARENT_NO_EXIST'		=> 'Hoofdmodule bestaat niet.',

	'SELECT_MODULE'			=> 'Selecteer een module.',
));

?>