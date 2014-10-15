<?php


/**
* Setup gumbo overlay
*
* Sets some template constants
*/

// include portal modules  

function add_protal_modules()
{
	// HOOK detection
	if (defined("HOOK_PORTAL_MODULES")) {
		return;
  	}
  	define("HOOK_PORTAL_MODULES", true);
	global $phpbb_root_path, $user, $phpEx, $portal_root_path, $template, $config;


	include_once($phpbb_root_path . 'includes/functions_display.' . $phpEx);
	include_once($phpbb_root_path . 'portal/includes/constants.' . $phpEx);
	$portal_root_path = PORTAL_ROOT_PATH;
	include_once($phpbb_root_path . $portal_root_path . 'includes/functions_modules.' . $phpEx);
	include_once($phpbb_root_path . $portal_root_path . 'includes/functions.' . $phpEx);
	$portal_config = obtain_portal_config();
	$portal_modules = obtain_portal_modules();
	$user->setup();
	$user->add_lang('mods/portal');

	$module_count = array(
	'total' 	=> 0,
	'top'		=> 0,
	'left'		=> 0,
	'center'	=> 0,
	'right'		=> 0,
	'bottom'	=> 0,
);

/**
* start assigning block vars
*/

foreach ($portal_modules as $row)
{
	if($row['module_status'] == B3_MODULE_DISABLED)
	{
		continue;
	}

	$class_name = 'portal_' . $row['module_classname'] . '_module';
	if (!class_exists($class_name))
	{
		include("{$phpbb_root_path}{$portal_root_path}modules/portal_{$row['module_classname']}.$phpEx");
	}
	if (!class_exists($class_name))
	{
		trigger_error(sprintf($user->lang['CLASS_NOT_FOUND'], $class_name, 'portal_' . $row['module_classname']), E_USER_ERROR);
	}

	$module = new $class_name();

	/** 
	* Check for permissions before loading anything
	* the default group of a user always defines his/her permission (KISS)
	*/
	$group_ary = (!empty($row['module_group_ids'])) ? explode(',', $row['module_group_ids']) : '';
	if ((is_array($group_ary) && !in_array($user->data['group_id'], $group_ary)))
	{
		continue;
	}

	if ($module->language)
	{
		$user->add_lang('mods/portal/' . $module->language);
	}
	if ($row['module_column'] == column_string_num('left') && $config['board3_left_column'])
	{
		$template_module = $module->get_template_side($row['module_id']);
		$template_column = 'left';
		++$module_count['left'];
	}
	if ($row['module_column'] == column_string_num('center'))
	{
		$template_module = $module->get_template_center($row['module_id']);
		$template_column = 'center';
		++$module_count['center'];
	}
	if ($row['module_column'] == column_string_num('right') && $config['board3_right_column'])
	{
		$template_module = $module->get_template_side($row['module_id']);
		$template_column = 'right';
		++$module_count['right'];
	}
	if ($row['module_column'] == column_string_num('top'))
	{
		$template_module = $module->get_template_center($row['module_id']);
		++$module_count['top'];
	}
	if ($row['module_column'] == column_string_num('bottom'))
	{
		$template_module = $module->get_template_center($row['module_id']);
		++$module_count['bottom'];
	}
	if (!isset($template_module))
	{
		continue;
	}

	// Custom Blocks that have been defined in the ACP will return an array instead of just the name of the template file
	if (is_array($template_module))
	{
		$template->assign_block_vars('modules_' . column_num_string($row['module_column']), array(
			'TEMPLATE_FILE'			=> 'portal/modules/' . $template_module['template'],
			'IMAGE_SRC'			=> $phpbb_root_path . 'styles/' . $user->theme['theme_path'] . '/theme/images/portal/' . $template_module['image_src'],
			'TITLE'				=> $template_module['title'],
			'CODE'				=> $template_module['code'],
			'MODULE_ID'			=> $row['module_id'],
			'IMAGE_WIDTH'			=> $row['module_image_width'],
			'IMAGE_HEIGHT'			=> $row['module_image_height'],
		));
	}
	else
	{
		$template->assign_block_vars('modules_' . column_num_string($row['module_column']), array(
			'TEMPLATE_FILE'			=> 'portal/modules/' . $template_module,
			'IMAGE_SRC'			=> $phpbb_root_path . 'styles/' . $user->theme['theme_path'] . '/theme/images/portal/' . $row['module_image_src'],
			'IMAGE_WIDTH'			=> $row['module_image_width'],
			'IMAGE_HEIGHT'			=> $row['module_image_height'],
			'MODULE_ID'			=> $row['module_id'],
			'TITLE'				=> (isset($user->lang[$row['module_name']])) ? $user->lang[$row['module_name']] : utf8_normalize_nfc($row['module_name']),
		));
	}
	unset($template_module);
}
$module_count['total'] = sizeof($portal_modules);

// Assign specific vars
$template->assign_vars(array(
// 	'S_SMALL_BLOCK'			=> true,
	'S_PORTAL_LEFT_COLUMN'	=> $config['board3_left_column_width'],
	'S_PORTAL_RIGHT_COLUMN'	=> $config['board3_right_column_width'],
	'S_LEFT_COLUMN'			=> ($module_count['left'] > 0 && $config['board3_left_column']) ? true : false,
	'S_CENTER_COLUMN'		=> ($module_count['center'] > 0) ? true : false,
	'S_RIGHT_COLUMN'		=> ($module_count['right'] > 0 && $config['board3_right_column']) ? true : false,
	'S_TOP_COLUMN'			=> ($module_count['top'] > 0) ? true : false,
	'S_BOTTOM_COLUMN'		=> ($module_count['bottom'] > 0) ? true : false,
	'S_DISPLAY_PHPBB_MENU'	=> $config['board3_phpbb_menu'],
	'B3P_DISPLAY_JUMPBOX'	=> $config['board3_display_jumpbox'],
));


	
}
if (!defined("HOOK_PORTAL_MODULES")) {
	$phpbb_hook->add_hook("add_protal_modules"); // This is a non standard hook, add this one without having to edit the core hooks file
	$phpbb_hook->register('phpbb_user_session_handler', "add_protal_modules"); // Tell hook to perform my_user_delete directly when the function user_delete is called
}


?>
