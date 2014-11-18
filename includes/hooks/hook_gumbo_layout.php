<?php


/**
* Setup gumbo overlay
*
* Sets some template constants
*/

// include gumbo functions  

function add_gumbo_layout()
{
	// HOOK detection
	if (defined("HOOK_GUMBO_LAYOUT")) {
		return;
  	}
  	define("HOOK_GUMBO_LAYOUT", true);
	
  global $phpbb_root_path, $phpEx, $template, $user, $auth;
 	

  	require($phpbb_root_path . 'gumbo/includes/functions.' . $phpEx);
	require($phpbb_root_path . 'gumbo/includes/Mobile_Detect.' . $phpEx);

	// Set up common template variables, mainly used in the navigation  
	$user->add_lang('mods/dc_gumbo_layout');

	$template->assign_vars(array(
		'L_GUMBO_MEMBERS'			=> $user->lang['GUMBO_MEMBERS'],
		'U_PLAZACAM'			=> append_sid("{$phpbb_root_path}gumbo/plazacam.$phpEx"),
		'L_PLAZACAM'			=> $user->lang['PLAZACAM'],
		'NON-MEMBERS'			=> $user->lang['NON_MEMBERS'],

		'U_EVENTS'				=> append_sid("{$phpbb_root_path}dc/dc_activity_list.$phpEx"),
		'L_EVENTS'				=> $user->lang['EVENTS'],
		'A_EVENTS_ACCESS'		=> $auth->acl_get('u_list_activities'),
		'U_EVENTS_ACP'			=> append_sid("{$phpbb_root_path}adm/index.$phpEx", "i=dc_activity_management&mode=overview", true, $user->session_id),
		'L_EVENTS_ACP'			=> $user->lang['EVENTS_ACP'],
		'A_EVENTS_ACP_ACCESS'	=> $auth->acl_get('a_overview_activity'),

		'U_CONTACT'				=> append_sid("{$phpbb_root_path}gumbo/contact.$phpEx"),
		'L_CONTACT'				=> $user->lang['CONTACT'],
		'U_ABOUT_US'			=> append_sid("{$phpbb_root_path}gumbo/over_ons.$phpEx"),
		'L_ABOUT_US'			=> $user->lang['OVER_ONS'],
		'U_SOCIETEIT'			=> append_sid("{$phpbb_root_path}gumbo/societeit.$phpEx"),
		'L_SOCIETEIT'			=> $user->lang['SOCIETEIT'],
		'U_WHY_GUMBO'			=> append_sid("{$phpbb_root_path}gumbo/why_gumbo.$phpEx"),
		'L_WHY_GUMBO'			=> $user->lang['WHY_GUMBO'],
		'U_DISPUTES'			=> append_sid("{$phpbb_root_path}gumbo/disputes.$phpEx"),
		'L_DISPUTES'			=> $user->lang['DISPUTES'],
		'U_EQUESTER'			=> append_sid("{$phpbb_root_path}gumbo/equester.$phpEx"),
		'L_EQUESTER'			=> $user->lang['EQUESTER'],
		'U_M-POWER'				=> append_sid("{$phpbb_root_path}gumbo/m-power.$phpEx"),
		'L_M-POWER'				=> $user->lang['M-POWER'],
		'U_PROXIMUS'			=> append_sid("{$phpbb_root_path}gumbo/proximus.$phpEx"),
		'L_PROXIMUS'			=> $user->lang['PROXIMUS'],
		'U_ALIQUANDO'			=> append_sid("{$phpbb_root_path}gumbo/aliquando.$phpEx"),
		'L_ALIQUANDO'			=> $user->lang['ALIQUANDO'],
		'U_SPONSORS'			=> append_sid("{$phpbb_root_path}gumbo/sponsors.$phpEx"),
		'L_SPONSORS'			=> $user->lang['SPONSOR'],

		'U_COMMISSION'			=> append_sid("{$phpbb_root_path}gumbo/commission.$phpEx"),
		'L_COMMISSION'			=> $user->lang['COMMISSION'],
		'U_BOARD_OF_DIRECTORS'	=> append_sid("{$phpbb_root_path}gumbo/board_of_directors.$phpEx"),
		'L_BOARD_OF_DIRECTORS'	=> $user->lang['BOARD_OF_DIRECTORS'],
		'U_DC'					=> append_sid("{$phpbb_root_path}gumbo/dc.$phpEx"),
		'L_DC'					=> $user->lang['DC'],
		'U_SC'					=> append_sid("{$phpbb_root_path}gumbo/sc.$phpEx"),
		'L_SC'					=> $user->lang['SC'],
		'U_PC'					=> append_sid("{$phpbb_root_path}gumbo/pc.$phpEx"),
		'L_PC'					=> $user->lang['PC'],
		'U_AC'					=> append_sid("{$phpbb_root_path}gumbo/ac.$phpEx"),
		'L_AC'					=> $user->lang['AC'],
		'U_GC'					=> append_sid("{$phpbb_root_path}gumbo/gc.$phpEx"),
		'L_GC'					=> $user->lang['GC'],
		'U_KASCIE'				=> append_sid("{$phpbb_root_path}gumbo/kascie.$phpEx"),
		'L_KASCIE'				=> $user->lang['KC'],
		'U_IB'					=> append_sid("{$phpbb_root_path}gumbo/ib.$phpEx"),
		'L_IB'					=> $user->lang['IB'],

		'U_SOCIETEIT'			=> append_sid("{$phpbb_root_path}gumbo/societeit.$phpEx"),
		'L_SOCIETEIT'			=> $user->lang['SOCIETEIT'], 
		'U_BOARD_HISTORY'		=> append_sid("{$phpbb_root_path}gumbo/board_history.$phpEx"),
		'L_BOARD_HISTORY'		=> $user->lang['BOARD_HISTORY'],
		'U_NEWS_AND_EVENTS'		=> append_sid("{$phpbb_root_path}gumbo/news.$phpEx"),
		'L_NEWS_AND_EVENTS'		=> $user->lang['NEWS_AND_EVENTS'],
		'U_NEWS'				=> append_sid("{$phpbb_root_path}gumbo/news.$phpEx"),
		'L_NEWS'				=> $user->lang['NEWS'],
		'U_RECENT_NEWS'			=> append_sid("{$phpbb_root_path}gumbo/recent_news.$phpEx"),
		'L_RECENT_NEWS'			=> $user->lang['RECENT_NEWS'],
		'U_ARCHIVE_NEWS'		=> append_sid("{$phpbb_root_path}gumbo/archive_news.$phpEx"),
		'L_ARCHIVE_NEWS'		=> $user->lang['ARCHIVE_NEWS'],
		'U_GUMBODES'			=> append_sid("{$phpbb_root_path}gumbo/gumbodes.$phpEx"),
		'L_GUMBODES'			=> $user->lang['GUMBODES'], 
		'U_PICTURES'			=> append_sid("{$phpbb_root_path}gumbo/pictures.$phpEx"),
		'L_PICTURES'			=> $user->lang['PICTURES'], 
		'U_FORUM'				=> append_sid("{$phpbb_root_path}index.$phpEx"),
		'L_FORUM'				=> $user->lang['FORUM'],
		'L_VIEW_BOOKMARKS'		=> $user->lang['VIEW_BOOKMARKS'],  
		'U_FORUM_BOOKMARKS'		=> append_sid("{$phpbb_root_path}ucp.$phpEx", 'i=main&mode=bookmarks'), 
		'U_FORUM_SUBSCRIBED'	=> append_sid("{$phpbb_root_path}ucp.$phpEx", 'i=main&mode=subscribed'), 
		'L_FORUM_SUBSCRIBED'	=> $user->lang['FORUM_SUBSCRIBED'],
		'L_MEMBER_PANELS'		=> $user->lang['MEMBER_PANELS'],
		'U_DOC_SYSTEM'			=> append_sid("{$phpbb_root_path}viewforum.$phpEx", "f=35"),
		'L_DOC_SYSTEM'			=> $user->lang['DOC_SYSTEM'],
		'U_SHOP'				=> append_sid("{$phpbb_root_path}gumbo/shop.$phpEx"),
		'L_SHOP'				=> $user->lang['SHOP'],
		'L_HOME'				=> $user->lang['HOME'],
		'U_GROUPLIST'			=> append_sid("{$phpbb_root_path}grouplist.$phpEx"),
		'U_UCP_PROFILE'			=> append_sid("{$phpbb_root_path}ucp.$phpEx", 'i=173'),
		'L_UCP_PROFILE'			=> $user->lang['UCP_PROFILE'],  
		'U_UCP_PREFS'			=> append_sid("{$phpbb_root_path}ucp.$phpEx", 'i=174'),
		'L_UCP_PREFS'			=> $user->lang['UCP_PREFS'],  
		'U_UCP_USERGROUPS'		=> append_sid("{$phpbb_root_path}ucp.$phpEx", 'i=176'),
		'L_UCP_USERGROUPS'		=> $user->lang['UCP_USERGROUPS'],  
		'U_UCP_FRIENDS_FOES'	=> append_sid("{$phpbb_root_path}ucp.$phpEx", 'i=177'),
		'L_UCP_ZEBRA_FOES'		=> $user->lang['UCP_ZEBRA_FOES'],  
		'U_MOD_QUEUE'			=> append_sid("{$phpbb_root_path}mcp.$phpEx", 'i=141'),
		'L_MCP_QUEUE'			=> $user->lang['MCP_QUEUE'],  
		'U_MOD_REPORT'			=> append_sid("{$phpbb_root_path}mcp.$phpEx", 'i=142'),
		'L_MCP_REPORTS'			=> $user->lang['MCP_REPORTS'],  
		'U_MOD_USER_NODE'		=> append_sid("{$phpbb_root_path}mcp.$phpEx", 'i=143'),
		'L_MCP_NOTES'			=> $user->lang['MCP_NOTES'],  
		'U_MOD_WARNINGS'		=> append_sid("{$phpbb_root_path}mcp.$phpEx", 'i=144'),
		'L_MCP_WARN'			=> $user->lang['MCP_WARN'],  
		'U_MOD_LOG'				=> append_sid("{$phpbb_root_path}mcp.$phpEx", 'i=145'),
		'L_MCP_LOGS'			=> $user->lang['MCP_LOGS'],  
		'U_MOD_BANNING'			=> append_sid("{$phpbb_root_path}mcp.$phpEx", 'i=146'),
		'L_MCP_BAN'				=> $user->lang['MCP_BAN'], 
		
		'L_BACK'				=> $user->lang['BACK'], 
		'L_NAVIGATION'			=> $user->lang['NAVIGATION'], 
		'L_YEAR'				=> date("Y"), 
	 
	));

	// check some permissions 
	$template->assign_var("U_DOC_SYSTEM_ACCS", $auth->acl_get('f_read', 35));

	// detect for mobile user
	$detect = new Mobile_Detect();
	$user->data["is_mobile"] = $detect->isMobile();
	$template->assign_var("U_IS_MOBILE", $user->data["is_mobile"]);

	
  return;
}



// HOOK detection
if (!defined("HOOK_GUMBO_LAYOUT")) {
	$phpbb_hook->add_hook("add_gumbo_layout"); // This is a non standard hook, add this one without having to edit the core hooks file
	$phpbb_hook->register('phpbb_user_session_handler', "add_gumbo_layout"); // Tell hook to perform my_user_delete directly when the function user_delete is called
}

?>
