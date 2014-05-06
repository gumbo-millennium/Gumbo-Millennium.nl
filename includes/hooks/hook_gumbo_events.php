<?php


/**
* Setup gumbo overlay
*
* Sets some template constants
*/

// include gumbo functions  

function add_gumbo_events_hander()
{
  global $phpbb_root_path, $phpEx, $activities_handler;

	require($phpbb_root_path . 'dc/dc_activities_handler.' . $phpEx);
	$activities_handler = new activities_handler();
  
}




$phpbb_hook->add_hook("add_gumbo_events_hander"); // This is a non standard hook, add this one without having to edit the core hooks file
$phpbb_hook->register('phpbb_user_session_handler', "add_gumbo_events_hander"); // Tell hook to perform my_user_delete directly when the function user_delete is called
?>