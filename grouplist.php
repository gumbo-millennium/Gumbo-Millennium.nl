<?php
/**
*
* @package phpBB3
* @version $Id$
* @athor: Gerco Versloot
* @date: 6 - 8 - 2012
* @license http://opensource.org/licenses/gpl-license.php GNU Public License
* @Gumbo millennium
*/

/**
* @ignore
*/
define('IN_PHPBB', true);
$phpbb_root_path = (defined('PHPBB_ROOT_PATH')) ? PHPBB_ROOT_PATH : './';
$phpEx = substr(strrchr(__FILE__, '.'), 1);
include($phpbb_root_path . 'common.' . $phpEx);
include($phpbb_root_path . 'includes/functions_display.' . $phpEx);

// Start session management
$user->session_begin();
$auth->acl($user->data);
$user->setup(array('memberlist', 'groups'));
$user->add_lang('mods/dc_activity');
$user->add_lang('common');


// Grab data
$mode		= request_var('mode', '');
$separator	= request_var('separator', '');
$action		= request_var('action', '');
$group_id	= request_var('u', ANONYMOUS);
$groupname	= request_var('un', '', true);
$group_id	= request_var('g', 0);
$topic_id	= request_var('t', 0);

// Check our mode...
if (!in_array($mode, array('', 'group','searchgroup')))
{
	trigger_error('NO_MODE');
}

// is user allowed to get here

if (!$auth->acl_gets('u_view_grouplist'))
{
	if ($user->data['group_id'] != ANONYMOUS)
	{
		trigger_error('NO_VIEW_USERS');
	}

	login_box('', ((isset($user->lang['LOGIN_EXPLAIN_' . strtoupper($mode)])) ? $user->lang['LOGIN_EXPLAIN_' . strtoupper($mode)] : $user->lang['LOGIN_EXPLAIN_MEMBERLIST']));
}


$start	= request_var('start', 0);
$submit = (isset($_POST['submit'])) ? true : false;

$default_key = 'a';
$sort_key = request_var('sk', $default_key);
$sort_dir = request_var('sd', 'a');


// What do you want to do today? ... oops, I think that line is taken ...

// The basic grouplist
$page_title = $user->lang['GROUPLIST'];
$template_html = 'grouplist_body.html';

// Sorting
$sort_key_text = array('a' => $user->lang['SORT_GROUPNAME']);
$sort_key_sql = array('a' => 'g.group_name');

$sort_dir_text = array('a' => $user->lang['ASCENDING'], 'd' => $user->lang['DESCENDING']);

$s_sort_key = '';
foreach ($sort_key_text as $key => $value)
{
	$selected = ($sort_key == $key) ? ' selected="selected"' : '';
	$s_sort_key .= '<option value="' . $key . '"' . $selected . '>' . $value . '</option>';
}

$s_sort_dir = '';
foreach ($sort_dir_text as $key => $value)
{
	$selected = ($sort_dir == $key) ? ' selected="selected"' : '';
	$s_sort_dir .= '<option value="' . $key . '"' . $selected . '>' . $value . '</option>';
}

// Additional sorting options for user search ... if search is enabled, if not
// then only admins can make use of this (for ACP functionality)
$sql_select = $sql_where_data = $sql_from = $sql_where = $order_by = '';


$form			= request_var('form', '');
$field			= request_var('field', '');
$select_single 	= request_var('select_single', false);

// Search URL parameters, if any of these are in the URL we do a search
$search_params = array('groupname');

// We validate form and field here, only id/class allowed
$form = (!preg_match('/^[a-z0-9_-]+$/i', $form)) ? '' : $form;
$field = (!preg_match('/^[a-z0-9_-]+$/i', $field)) ? '' : $field;
if (($mode == 'searchgroup' || sizeof(array_intersect(array_keys($_GET), $search_params)) > 0) && ($config['load_search'] || $auth->acl_get('a_')))
{
	$groupname	= request_var('groupname', '', true);
	$search_group_id	= request_var('search_group_id', 0);
	
	// set where satement
	$sql_where .= ($groupname) ? ' AND g.group_name ' . $db->sql_like_expression(str_replace('*', $db->any_char, ucfirst(utf8_normalize_nfc($groupname)))) : '';

}

$first_char = request_var('first_char', '');

if ($first_char == 'other')
{
	for ($i = 97; $i < 123; $i++)
	{
		$sql_where .= ' AND g.group_name NOT ' . $db->sql_like_expression(chr($i) . $db->any_char);
	}
}
else if ($first_char)
{
	$sql_where .= ' AND g.group_name ' . $db->sql_like_expression(substr(strtoupper($first_char), 0, 1) . $db->any_char);
}

// Sorting and order
if (!isset($sort_key_sql[$sort_key]))
{
	$sort_key = $default_key;
}

$order_by .= $sort_key_sql[$sort_key] . ' ' . (($sort_dir == 'a') ? 'ASC' : 'DESC');

// Exclude groups

$exclude_groups = explode("," , request_var('exclude_groups', ''));

// Count the users ...
if ($sql_where)
{
	$sql = 'SELECT COUNT(g.group_id) AS total_groups
		FROM ' . GROUPS_TABLE . " g$sql_from
		WHERE ".$db->sql_in_set('g.group_id', $exclude_groups, true, true)."
		$sql_where";
	$result = $db->sql_query($sql);
	$total_groups = (int) $db->sql_fetchfield('total_groups');
	$db->sql_freeresult($result);
}
else
{
	$total_groups = $config['num_users'];
}

// Build a relevant pagination_url
$params = $sort_params = array();

// We do not use request_var() here directly to save some calls (not all variables are set)
$check_params = array(
	'g'				=> array('g', 0),
	'sk'			=> array('sk', $default_key),
	'sd'			=> array('sd', 'a'),
	'form'			=> array('form', ''),
	'field'			=> array('field', ''),
	'select_single'	=> array('select_single', $select_single),
	'groupname'		=> array('groupname', '', true),
	'first_char'	=> array('first_char', ''),
	'exclude_groups'=> array('exclude_groups', ''),
	'mode'			=> array('mode', ''),
	'separator'		=> array('separator', ''),
);

$u_first_char_params = array();
foreach ($check_params as $key => $call)
{
	if (!isset($_REQUEST[$key]))
	{
		continue;
	}

	$param = call_user_func_array('request_var', $call);
	$param = urlencode($key) . '=' . ((is_string($param)) ? urlencode($param) : $param);
	$params[] = $param;

	if ($key != 'first_char')
	{
		$u_first_char_params[] = $param;
	}
	if ($key != 'sk' && $key != 'sd')
	{
		$sort_params[] = $param;
	}
}

$u_hide_find_member = append_sid("{$phpbb_root_path}grouplist.$phpEx", "start=$start" . (!empty($params) ? '&amp;' . implode('&amp;', $params) : ''));

if ($mode)
{
	$params[] = "mode=$mode";
}
$sort_params[] = "mode=$mode";

$pagination_url = append_sid("{$phpbb_root_path}grouplist.$phpEx", implode('&amp;', $params));
$sort_url = append_sid("{$phpbb_root_path}grouplist.$phpEx", implode('&amp;', $sort_params));

unset($search_params, $sort_params);

$u_first_char_params = implode('&amp;', $u_first_char_params);
$u_first_char_params .= ($u_first_char_params) ? '&amp;' : '';

$first_characters = array();
$first_characters[''] = $user->lang['ALL'];
for ($i = 97; $i < 123; $i++)
{
	$first_characters[chr($i)] = chr($i - 32);
}
$first_characters['other'] = $user->lang['OTHER'];

foreach ($first_characters as $char => $desc)
{
	$template->assign_block_vars('first_char', array(
		'DESC'			=> $desc,
		'VALUE'			=> $char,
		'S_SELECTED'	=> ($first_char == $char) ? true : false,
		'U_SORT'		=> append_sid("{$phpbb_root_path}grouplist.$phpEx", $u_first_char_params . 'first_char=' . $char) . '#grouplist',
	));
}

// Some search user specific data
if ($mode == 'searchgroup' && ($config['load_search'] || $auth->acl_get('a_')))
{
	$template->assign_vars(array(
		'GROUPNAME'	=> $groupname,

		'S_IN_SEARCH_POPUP'		=> ($form && $field) ? true : false,
		'S_SEARCH_USER'			=> true,
		'S_FORM_NAME'			=> $form,
		'S_FIELD_NAME'			=> $field,
		'S_SELECT_SINGLE'		=> $select_single,
		'S_SORT_OPTIONS'		=> $s_sort_key,
		'S_USER_SEARCH_ACTION'	=> append_sid("{$phpbb_root_path}grouplist.$phpEx", "mode=searchgroup&amp;form=$form&amp;field=$field"))
	);
}

// Get us some users :D
$sql = "SELECT g.group_id
	FROM " . GROUPS_TABLE . " g
		$sql_from
	WHERE ".$db->sql_in_set('g.group_id', $exclude_groups, true, true)."
		$sql_where
	ORDER BY $order_by";
$result = $db->sql_query_limit($sql, $config['topics_per_page'], $start);
$user_list = array();
while ($row = $db->sql_fetchrow($result))
{
	$user_list[] = (int) $row['group_id'];
}
$db->sql_freeresult($result);
$leaders_set = false;
// So, did we get any users?
if (sizeof($user_list))
{

	$sql = 'SELECT *
		FROM ' . GROUPS_TABLE . '
		WHERE ' . $db->sql_in_set('group_id', $user_list);
	$result = $db->sql_query($sql);

	$id_cache = array();
	while ($row = $db->sql_fetchrow($result))
	{
		$id_cache[$row['group_id']] = $row;
	}
	$db->sql_freeresult($result);

	for ($i = 0, $end = sizeof($user_list); $i < $end; ++$i)
	{
		$group_id = $user_list[$i];
		$row =& $id_cache[$group_id];

		$cp_row = array();
		
		//chance some group names for better transalation
		
		if ($config['load_cpf_memberlist'])
		{
			$cp_row = (isset($profile_fields_cache[$group_id])) ? $cp->generate_profile_fields_template('show', false, $profile_fields_cache[$group_id]) : array();
		}

		$memberrow =  array(
			'ROW_NUMBER'		=> $i + ($start + 1),
			
			'GROUPNAME_FULL'		=> get_groupname_string('full', $row['group_id'], $row['group_name'], $row['group_colour']),
			'GROUPNAME'			=> get_groupname_string('groupname', $row['group_id'], $row['group_name'], $row['group_colour']),

		);
				
		if (isset($cp_row['row']) && sizeof($cp_row['row']))
		{
			$memberrow = array_merge($memberrow, $cp_row['row']);
		}

		$template->assign_block_vars('memberrow', $memberrow);

		if (isset($cp_row['blockrow']) && sizeof($cp_row['blockrow']))
		{
			foreach ($cp_row['blockrow'] as $field_data)
			{
				$template->assign_block_vars('memberrow.custom_fields', $field_data);
			}
		}

		unset($id_cache[$group_id]);
	}
}

$total_groups = sizeof($user_list);

// Generate page
$template->assign_vars(array(
	'PAGINATION'	=> generate_pagination_incptio($pagination_url, $total_groups, $config['topics_per_page'], $start),
	'PAGE_NUMBER'	=> on_page($total_groups, $config['topics_per_page'], $start),
	'TOTAL_GROUPS'	=> ($total_groups == 1) ? $user->lang['LIST_GROUP'] : sprintf($user->lang['LIST_GROUPS'], $total_groups),
	
	'FIND_GROUP'	=> $user->lang['FIND_GROUP'],
	'NO_GROUPS'		=> $user->lang['NO_GROUPS'],
	'FIND_GROUPNAME_EXPLAIN'=> $user->lang['FIND_GROUPNAME_EXPLAIN'],
	'L_GROUPNAME'		=> $user->lang['GROUPNAME'],

	'S_SHOW_GROUP'		=> ($mode == 'group') ? true : false,
	'S_MODE_SELECT'		=> $s_sort_key,
	'S_ORDER_SELECT'	=> $s_sort_dir,
	'S_MODE_ACTION'		=> $pagination_url,
	'SEPARATOR'			=> $separator )
);

// Output the page
page_header($page_title, false);

$template->set_filenames(array(
	'body' => $template_html)
);
make_jumpbox(append_sid("{$phpbb_root_path}viewforum.$phpEx"));

page_footer();

function get_groupname_string($mode, $group_id, $groupname, $groupname_colour = '', $custom_profile_url = false)
{
	static $_profile_cache;

	// We cache some common variables we need within this function
	if (empty($_profile_cache))
	{
		global $phpbb_root_path, $phpEx;

		$_profile_cache['base_url'] = append_sid("{$phpbb_root_path}memberlist.$phpEx", 'mode=group&amp;g={GROUP_ID}');
		$_profile_cache['tpl_noprofile'] = '{GROUPNAME}';
		$_profile_cache['tpl_noprofile_colour'] = '<span style="color: {GROUPNAME_COLOUR};" class="username-coloured">{GROUPNAME}</span>';
		$_profile_cache['tpl_profile'] = '<a href="{PROFILE_URL}">{GROUPNAME}</a>';
		$_profile_cache['tpl_profile_colour'] = '<a href="{PROFILE_URL}" style="color: {GROUPNAME_COLOUR};" class="username-coloured">{GROUPNAME}</a>';
	}

	global $user, $auth;
	
	switch($groupname){
			case 'BOTS':
			case 'GLOBAL_MODERATORS':
			case 'GUESTS':
			case 'NEWLY_REGISTERED':
			case 'REGISTERED':
			case 'REGISTERED_COPPA':
				$groupname = 'G_'.$groupname;			
	}
	$groupname = (isset($user->lang[$groupname]) ? $user->lang[$groupname] : $groupname );
	// This switch makes sure we only run code required for the mode
	switch ($mode)
	{
		case 'full':
		case 'no_profile':
		case 'colour':

			// Build correct username colour
			$groupname_colour = ($groupname_colour) ? '#' . $groupname_colour : '';

			// Return colour
			if ($mode == 'colour')
			{
				return $groupname_colour;
			}

		// no break;

		case 'groupname':

			// Return groupname
			if ($mode == 'groupname')
			{
				return $groupname;
			}

		// no break;

		case 'profile':

			// Build correct profile url - only show if not anonymous and permission to view profile if registered user
			// For anonymous the link leads to a login page.
			if ($group_id)
			{
				$profile_url = ($custom_profile_url !== false) ? $custom_profile_url . '&amp;g=' . (int) $group_id : str_replace(array('={GROUP_ID}'), '=' . (int) $group_id, $_profile_cache['base_url']);
			}
			else
			{
				$profile_url = '';
			}

			// Return profile
			if ($mode == 'profile')
			{
				return $profile_url;
			}

		// no break;
	}
	
	if (($mode == 'full' && !$profile_url) || $mode == 'no_profile')
	{
		return str_replace(array('{GROUPNAME_COLOUR}', '{GROUPNAME}'), array($groupname_colour, $groupname), (!$groupname_colour) ? $_profile_cache['tpl_noprofile'] : $_profile_cache['tpl_noprofile_colour']);
	}

	return str_replace(array('{PROFILE_URL}', '{GROUPNAME_COLOUR}', '{GROUPNAME}'), array($profile_url, $groupname_colour, $groupname), (!$groupname_colour) ? $_profile_cache['tpl_profile'] : $_profile_cache['tpl_profile_colour']);
}


?>