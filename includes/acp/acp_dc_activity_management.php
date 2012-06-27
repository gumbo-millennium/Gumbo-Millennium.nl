<?php
class acp_dc_activity_management
{
   var $u_action;
   var $new_config;
   function main($id, $mode)
   {
      global $db, $user, $auth, $template;
      global $config, $phpbb_root_path, $phpbb_admin_path, $phpEx;
      switch($mode)
      {
         case 'new_event':
            $this->page_title = 'New event';
            $this->tpl_name = 'dc/acp_dc_activity_new';
            break;
		 case 'overview':
            $this->page_title = 'Overview';
            $this->tpl_name = 'dc/acp_dc_activity_overview';
            break;
		case 'find_user_events':
            $this->page_title = 'Find user events';
            $this->tpl_name = 'dc/acp_dc_activity_find_all_user_events';
            break;
		case 'users_not_paid':
            $this->page_title = 'Users not paid';
            $this->tpl_name = 'dc/acp_dc_activity_users_not_paid';
            break;
		case 'chance_user_payment':
            $this->page_title = 'Chance user payment';
            $this->tpl_name = 'dc/acp_dc_activity_chance_user_payment';
            break;
		
      }

   }
}
?>