<?php
define('IN_PHPBB', true);
$phpbb_root_path = (defined('PHPBB_ROOT_PATH')) ? PHPBB_ROOT_PATH : './../';
$phpEx = substr(strrchr(__FILE__, '.'), 1);
include($phpbb_root_path . 'common.' . $phpEx);
include($phpbb_root_path . 'includes/functions_user.' . $phpEx);
include($phpbb_root_path . 'includes/functions_display.' . $phpEx);

// Start session management
$user->session_begin();
$auth->acl($user->data);
$user->setup('mods/dc_activity');
/*
if (!$auth->acl_get('dc_ismember'))
{
     trigger_error('NOT_AUTHORISED');
}
*/
$limit = 10;
$start   = request_var('start', 0);
$limit   = request_var('limit', (int) $limit);

// no result rows greater than 100 per page
$limit = ($limit > 100) ? 100 : $limit;

$pagination_url = append_sid($phpbb_root_path . 'dc/dc_activity_controller.' . $phpEx);

// Build a SQL Query...
$sql_ary = array(
    'SELECT'    => 'u.user_id, u.username, u.user_colour',
    'FROM'      => array(
        USERS_TABLE         => 'u',
    ),
    'WHERE'     => $db->sql_in_set('u.user_type', array(USER_NORMAL, USER_FOUNDER)),
);
$sql = $db->sql_build_query('SELECT', $sql_ary);
$result = $db->sql_query_limit($sql, $limit, $start);

while ($row = $db->sql_fetchrow($result))
{
    // Loop though your results.

}
// free the result
$db->sql_freeresult($result);

// now we run the query again to get the total rows...
// the query is identical except we count the rows instead
$sql_ary['SELECT'] = 'COUNT(u.user_id) as total_users';
$sql = $db->sql_build_query('SELECT', $sql_ary);
$result = $db->sql_query($sql);

// get the total users, this is a single row, single field.
$total_users = $db->sql_fetchfield('total_users');
// free the result
$db->sql_freeresult($result);

// Assign the pagination variables to the template.
$template->assign_vars(array(
    'PAGINATION'        => generate_pagination($pagination_url, $total_users, $limit, $start),
    'PAGE_NUMBER'       => on_page($total_users, $limit, $start),
    'TOTAL_USERS'       => ($total_users == 1) ? $user->lang['LIST_USER'] : sprintf($user->lang['LIST_USERS'], $total_users),
));


// set template
$template->set_filenames(array(
    'body' => 'dc_activity_user.html',
));

make_jumpbox(append_sid("{$phpbb_root_path}viewforum.$phpEx"));
page_footer();
?>