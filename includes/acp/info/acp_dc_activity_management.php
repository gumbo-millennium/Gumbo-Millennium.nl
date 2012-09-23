<?php
class acp_dc_activity_management_info
{
    function module()
    {
        return array(
            'filename'		=> 'acp_dc_activity_management',
            'title'			=> 'Activity management',
            'version'		=> '1.0',
            'modes'			=> array(
                'new_activity'     	=> array('title' => 'New event', 'auth' => 'acl_a_', 'cat' => array('')),
                'edit_activity'    	=> array('title' => 'Edit event', 'auth' => 'acl_a_', 'cat' => array('')),
                'overview'        	=> array('title' => 'Overview', 'auth' => 'acl_a_', 'cat' => array('')),
                'find_user_events'	=> array('title' => 'Find user events', 'auth' => 'acl_a_', 'cat' => array('')),
                'users_not_paid'	=> array('title' => 'Users not paid', 'auth' => 'acl_a_', 'cat' => array('')),
                'chance_user_payment'	=> array('title' => 'Chance user payment', 'auth' => 'acl_a_', 'cat' => array('')),
            ),
        );
    }

    function install()
    {
    }

    function uninstall()
    {
    }
}
?>