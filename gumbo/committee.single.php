<?php
	/**
	*
	* @package gumbo_millennium_layouy
	* @autor Gerco Versloot
	*
	*/

	if (!defined('IN_PHPBB') || !defined('IN_COMMITTEE'))
	{
		exit;
	}

	// check if valid group is found
	if($group_id != null) {
		// Set default: bestuur
		$group_id = 13;
	}
	
	// Get group information ea: name, description 
	$sql = 'SELECT group_name, group_desc, group_avatar, group_desc_bitfield, group_desc_options, group_desc_uid,  group_avatar_type, group_avatar_width, group_avatar_height  FROM ' . GROUPS_TABLE . ' AS p WHERE group_id ='. (int)$group_id;
	$result = $db->sql_query_limit($sql, 1);
	$row = $db->sql_fetchrow($result);
	$group_name = $row['group_name'];
	if(empty($row['group_desc'])){
		$group_desc = $user->lang['COM_NO_DESC'];
	}else{
		
		// assign image
		foreach (get_images_data($row['group_desc'], $row['group_desc_uid'], TRUE) as $img_id => $img_data)
		{
		    $template->assign_block_vars('images', array(
		        'URL'        => $img_data["URL"],
		    ));
		}
		$group_desc = generate_text_for_display($row['group_desc'], $row['group_desc_uid'], $row['group_desc_bitfield'], $row['group_desc_options']);
	}		

	$template->assign_vars(array(
		'GROUP_NAME' 	=> $group_name,
		'GROUP_DESC' 	=> $group_desc,
	));
	$db->sql_freeresult($result);
	$avatar = null;

	// get member information 
	$sql = 'SELECT u.user_id user_id, pfd.pf_gumbo_verhaal pf_gumbo_verhaal, u.user_avatar user_avatar, u.user_avatar_type user_avatar_type, u.user_avatar_width user_avatar_width, u.user_avatar_height user_avatar_height, u.username,  CONCAT(TRIM(pfd.pf_gumbo_first_name), " ", IFNULL(TRIM(pfd.pf_gumbo_surname), "")) realname, u.user_lastvisit, g.group_name 
	FROM ' . USERS_TABLE . ' AS u, ' . PROFILE_FIELDS_DATA_TABLE . ' AS pfd, ' . GROUPS_TABLE . ' AS g, ' . USER_GROUP_TABLE . ' AS ug 
	WHERE u.user_id = ug.user_id AND ug.group_id = g.group_id AND u.user_id = pfd.user_id AND g.group_id = '. (int)$group_id;
	$result = $db->sql_query($sql);
	while ($row = $db->sql_fetchrow($result))  
	{   
		$avatar = ($row['user_avatar'] != "" ) ? get_user_avatar($row['user_avatar'], $row['user_avatar_type'], $row['user_avatar_width'], $row['user_avatar_height'], "USER_AVATAR", false, "aligncenter"): false;
		$template->assign_block_vars('members', array(
			'GUMBO_REALNAME' 		=> $row['realname'],
			'A_USERNAME'			=> $row['username'],
			'GROUP_NAME'			=> $row['group_name'],
			'LAST_VISIT'			=> $row['user_lastvisit'],
			'INFO'					=> (empty($row['pf_gumbo_verhaal'])) ?  $user->lang['COM_NO_INFO']:  nl2br($row['pf_gumbo_verhaal']),
			'U_VIEW_PROFILE'		=> append_sid("{$phpbb_root_path}memberlist.$phpEx", 'mode=viewprofile&amp;u=' . $row['user_id']),
			'AVATAR'				=> $avatar

		));
	}
	$db->sql_freeresult($result);

	$template->assign_vars(array(
		'A_REALNAME'		=> ($auth->acl_get('u_view_real_name')) ? true : false,
		'INFO_TITLE'		=> $user->lang['INFORMATION'],
		'MEMBERS_TITLE'		=> $user->lang['MEMBERLIST'],
	));
	
	// Set the breadcrumbs
	$template->assign_block_vars('navlinks', array(
		'FORUM_NAME'		=> $group_name,
		'U_VIEW_FORUM'		=> append_sid("{$phpbb_root_path}gumbo/committee.$phpEx", "c=".$committee )) //The path to the custom file relative to the phpbb root path.            
	);
	
	// Output page
	page_header($group_name);
	
	$template->set_filenames(array(
		'body' => 'gumbo/dc_committee_group.html')
	);

?>
