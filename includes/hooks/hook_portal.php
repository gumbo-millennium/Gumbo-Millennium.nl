<?php


/**
* Setup gumbo overlay
*
* Sets some template constants
*/

// include gumbo functions  

function add_protal_lang()
{
  global  $user;


	$user->add_lang('mods/portal');
}

$phpbb_hook->add_hook("add_protal_lang"); // This is a non standard hook, add this one without having to edit the core hooks file
$phpbb_hook->register('phpbb_user_session_handler', "add_protal_lang"); // Tell hook to perform my_user_delete directly when the function user_delete is called
?>