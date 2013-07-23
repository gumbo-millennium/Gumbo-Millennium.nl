<?php
class acp_dc_activity_management_info
{
    function module()
    {
        return array(
            'filename'		=> 'acp_dc_activity_management',
            'title'			=> 'Activity management',
            'version'		=> '1.3.1',
            'modes'			=> array(
                'new_activity'     		=> array('title' => 'New event', 	'auth' => 'acl_a_new_activity', 'cat' => array('ACP_ACTIVITY_OVERVIEW')),
                'recycle_activity'  	=> array('title' => 'Recycle event','auth' => 'acl_a_recyle_activity', 'cat' => array('ACP_ACTIVITY_OVERVIEW')),
                'edit_activity'    		=> array('title' => 'Edit event', 	'auth' => 'acl_a_edit_activity', 'cat' => array('ACP_ACTIVITY_OVERVIEW')),
                'past_activities'   	=> array('title' => 'Past events', 	'auth' => 'acl_a_recyle_activity', 'cat' => array('ACP_ACTIVITY_OVERVIEW')),
                'enrolls'   			=> array('title' => 'Enrolls', 		'auth' => 'acl_a_edit_activity', 'cat' => array('ACP_ACTIVITY_OVERVIEW')),
                'overview'        		=> array('title' => 'Overview', 	'auth' => 'acl_a_overview_activity', 'cat' => array('ACP_ACTIVITY_OVERVIEW')),
                'send_mail'	        	=> array('title' => 'Send mail', 	'auth' => 'acl_a_act_send_mail', 'cat' => array('ACP_ACTIVITY_OVERVIEW')),
                'find_user_events'		=> array('title' => 'Find user events', 	'auth' => 'acl_a_', 'cat' => array('ACP_ACTIVITY_OVERVIEW')),
                'users_not_paid'		=> array('title' => 'Users not paid', 		'auth' => 'acl_a_', 'cat' => array('ACP_ACTIVITY_FINANCIAL')),
                'chance_user_payment'	=> array('title' => 'Chance user payment', 	'auth' => 'acl_a_', 'cat' => array('ACP_ACTIVITY_FINANCIAL')),
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