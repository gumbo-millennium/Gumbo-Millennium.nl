<?php
/**
* DO NOT CHANGE
*/
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
// Adding new category

// Adding new category

// Adding the permissions
$lang = array_merge($lang, array(
    'acl_a_edit_activity'    => array('lang' => 'Can edit an event', 'cat' => 'activity'),
    'acl_a_new_activity'    => array('lang' => 'Can create a new event', 'cat' => 'activity'),
    'acl_a_overview_activity'    => array('lang' => 'Can get an overview of all events', 'cat' => 'activity'),
    'acl_a_recyle_activity'    => array('lang' => 'Can reclycle a event', 'cat' => 'activity'),
    'acl_u_view_activity'    => array('lang' => 'Can view events', 'cat' => 'activity'),
    'acl_u_list_activities'    => array('lang' => 'Can overview coming events', 'cat' => 'activity'),
    'acl_u_view_grouplist'    => array('lang' => 'Can view the grouplist', 'cat' => 'misc'),
));


?>