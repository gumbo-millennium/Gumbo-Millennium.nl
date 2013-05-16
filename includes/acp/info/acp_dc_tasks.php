<?php
class acp_dc_tasks_info
{
    function module()
    {
        return array(
            'filename'		=> 'acp_dc_tasks',
            'title'			=> 'Tasks',
            'version'		=> '1.0',
            'modes'			=> array(
                'overview'     		=> array('title' => 'Overview tasks', 	'auth' => 'acl_a_view_tasks', 'cat' => array('')),
                'new_task'  				=> array('title' => 'New task',		'auth' => 'acl_a_add_tasks', 'cat' => array('')),
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