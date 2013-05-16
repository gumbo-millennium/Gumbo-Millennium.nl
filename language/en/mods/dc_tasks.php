<?php
/**
*
* @package phpBB3
* @version $Id$
* @athor: Gerco Versloot
* @date: 29 - 4 - 2013
* @license http://opensource.org/licenses/gpl-license.php GNU Public License
* @Gumbo millennium
*/

/**
* @ignore
*/
if (!defined('IN_PHPBB'))
{
    exit;
}

if (empty($lang) || !is_array($lang))
{
    $lang = array();
}

// DEVELOPERS PLEASE NOTE
//
// All language files should use UTF-8 as their encoding and the files must not contain a BOM.
//
// Placeholders can now contain order information, e.g. instead of
// 'Page %s of %s' you can (and should) write 'Page %1$s of %2$s', this allows
// translators to re-order the output of data while ensuring it remains correct
//
// You do not need this where single placeholders are used, e.g. 'Message %d' is fine
// equally where a string contains only two placeholders which are used to wrap text
// in a url you again do not need to specify an order e.g., 'Click %sHERE%s' is fine


// Adding the trancelation
// task management overview
$lang = array_merge($lang, array(
    'ACP_DC_TSK_OVERVIEW'    		=> 'Overview of current and uncomplete tasks',
    'ACP_DC_TSK_OVERVIEW_EXPLAIN'   => 'This is a overview of current and uncomplete tasks for this user. The tasks are separated by group. A task can have unlimited subtasks. Each task can only have one parent task.<br> To add a task hit the \'Add task\' behind the commission/group ',
    'ACP_DC_TSK_NO_TASK'    		=> 'No task found',
    'ACP_DC_TSK_NO_TASKS'    		=> 'No tasks found',
    'ACP_DC_TSK_TITLE'    			=> 'Title',
    'ACP_DC_TSK_TITLE_EXPLAIN'    	=> 'Add a title to the event.',
    'ACP_DC_TSK_ASSIGNED'    		=> 'Assigned to',
    'ACP_DC_TSK_GROUP'    			=> 'Group',
    'ACP_DC_TSK_DEADLINE'    		=> 'Deadline',
    'ACP_DC_TSK_DEADLINE_EXPLAIN'   => 'A date (and time) as deadline.',
    'ACP_DC_TKS_STATUS'    			=> 'Status',
    'ACP_DC_TSK_SUB_TASKS'    		=> 'Sub tasks',
    
	'ACP_DC_TSK_COMPLETE'    		=> 'Complete',
	'ACP_DC_TSK_UNCOMPLETE'    		=> 'Uncomplete',
));

// task management new task
$lang = array_merge($lang, array(
    'ACP_DC_TSK_NEW'    			=> 'New task',
    'ACP_DC_TSK_NEW_EXPLAIN'    	=> 'Add a new task to the system',
    'ACP_DC_TSK_COMMISSION'    		=> 'Commission/group',
    'ACP_DC_TSK_COMMISSION_EXPLAIN' => 'Select the commission or group who controls the task.',
    'ACP_DC_TSK_ASSIGN'    			=> 'Assign users',
    'ACP_DC_TSK_ASSIGN_EXPLAIN'    	=> 'Assign the users who are responsible for completing the task.',
    'ACP_DC_TSK_PARENT'    			=> 'Assign parent task',
    'ACP_DC_TSK_PARENT_EXPLAIN'    	=> 'Assigned this task as a sub task. The selected task will be the parent.',
    'ACP_DC_TSK_OPTIONAL'    		=> 'Optional settings',
    'ACP_DC_TSK_UNVALID_COM'    		=> 'Optional settings',
));

// errors
$lang = array_merge($lang, array(
    'ACP_DC_TSK_UNVALID_COM'    		=> '%s is not a group of the user',
    'ACP_DC_TSK_USR_NOT_EXIST'    		=> '%d user does not exist',
    'ACP_DC_TSK_USRS_NOT_EXIST'    		=> '%d users does not exist',
    'ACP_DC_TSK_USR_NOT_GRP'    		=> '%s is not in group: %s',
    'ACP_DC_TSK_USRS_NOT_GRP'    		=> '%s are not in group: %s',
    'ACP_DC_TSK_PARENT_INVALID'    		=> 'The seleced parent is invalid',
    'ACP_DC_TSK_DEADLINE_PAST'    		=> 'The deadline is not allowed to be in the past',
    'ACP_DC_TSK_PARENT_NT_GROUP'    	=> 'The selected parent is not from the same selected commission  or group',
));

?>