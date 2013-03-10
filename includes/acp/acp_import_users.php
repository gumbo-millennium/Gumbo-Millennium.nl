<?php
/**
* @copyright (c) 2008 hsudhof
* @license http://opensource.org/licenses/gpl-license.php GNU Public License
* Modifications by Dicky 11 Mar 2009 Version 1.0.0
*/

/**
* @ignore
*/
if (!defined('IN_PHPBB'))
{
	exit;
}

/**
 * Parse a time/date generated with strftime().
 *
 * This function is the same as the original one defined by PHP (Linux/Unix only),
 *  but now you can use it on Windows too.
 *  Limitation : Only this format can be parsed %S, %M, %H, %d, %m, %Y
 * 
 * @author Lionel SAURON
 * @version 1.0
 * @public
 * 
 * @param $sDate(string)    The string to parse (e.g. returned from strftime()).
 * @param $sFormat(string)  The format used in date  (e.g. the same as used in strftime()).
 * @return (array)          Returns an array with the <code>$sDate</code> parsed, or <code>false</code> on error.
 */ 
if(function_exists('strptime') == false)
{
    function strptime($sDate, $sFormat)
    {
        $aResult = array
        (
            'tm_sec'   => 0,
            'tm_min'   => 0,
            'tm_hour'  => 0,
            'tm_mday'  => 1,
            'tm_mon'   => 0,
            'tm_year'  => 0,
            'tm_wday'  => 0,
            'tm_yday'  => 0,
            'unparsed' => $sDate,
        );
        
        while($sFormat != "")
        {
            // ===== Search a %x element, Check the static string before the %x =====
            $nIdxFound = strpos($sFormat, '%');
            if($nIdxFound === false)
            {
                
                // There is no more format. Check the last static string.
                $aResult['unparsed'] = ($sFormat == $sDate) ? "" : $sDate;
                break;
            }
            
            $sFormatBefore = substr($sFormat, 0, $nIdxFound);
            $sDateBefore   = substr($sDate,   0, $nIdxFound);
            
            if($sFormatBefore != $sDateBefore) break;
            
            // ===== Read the value of the %x found =====
            $sFormat = substr($sFormat, $nIdxFound);
            $sDate   = substr($sDate,   $nIdxFound);
            
            $aResult['unparsed'] = $sDate;
            
            $sFormatCurrent = substr($sFormat, 0, 2);
            $sFormatAfter   = substr($sFormat, 2);
            
            $nValue = -1;
            $sDateAfter = "";
            switch($sFormatCurrent)
            {
                case '%S': // Seconds after the minute (0-59)
                    
                    sscanf($sDate, "%2d%[^\\n]", $nValue, $sDateAfter);
                    
                    if(($nValue < 0) || ($nValue > 59)) return false;
                    
                    $aResult['tm_sec']  = $nValue;
                    break;
                
                // ----------
                case '%M': // Minutes after the hour (0-59)
                    sscanf($sDate, "%2d%[^\\n]", $nValue, $sDateAfter);
                    
                    if(($nValue < 0) || ($nValue > 59)) return false;
                
                    $aResult['tm_min']  = $nValue;
                    break;
                
                // ----------
                case '%H': // Hour since midnight (0-23)
                    sscanf($sDate, "%2d%[^\\n]", $nValue, $sDateAfter);
                    
                    if(($nValue < 0) || ($nValue > 23)) return false;
                
                    $aResult['tm_hour']  = $nValue;
                    break;
                
                // ----------
                case '%d': // Day of the month (1-31)
                    sscanf($sDate, "%2d%[^\\n]", $nValue, $sDateAfter);
                    
                    if(($nValue < 1) || ($nValue > 31)) return false;
                
                    $aResult['tm_mday']  = $nValue;
                    break;
                
                // ----------
                case '%m': // Months since January (0-11)
                    sscanf($sDate, "%2d%[^\\n]", $nValue, $sDateAfter);
                    
                    if(($nValue < 1) || ($nValue > 12)) return false;
                
                    $aResult['tm_mon']  = ($nValue - 1);
                    break;
                
                // ----------
                case '%Y': // Years since 1900
                    sscanf($sDate, "%4d%[^\\n]", $nValue, $sDateAfter);
                    
                    if($nValue < 1900) return false;
                
                    $aResult['tm_year']  = ($nValue - 1900);
                    break;
                
                // ----------
                default: break 2; // Break Switch and while
            }
            
            // ===== Next please =====
            $sFormat = $sFormatAfter;
            $sDate   = $sDateAfter;
            
            $aResult['unparsed'] = $sDate;
        } // END while($sFormat != "")
        
        
        // ===== Create the other value of the result array =====
        $nParsedDateTimestamp = mktime($aResult['tm_hour'], $aResult['tm_min'], $aResult['tm_sec'],
                                $aResult['tm_mon'] + 1, $aResult['tm_mday'], $aResult['tm_year'] + 1900);
        
        // Before PHP 5.1 return -1 when error
        if(($nParsedDateTimestamp === false)
        ||($nParsedDateTimestamp === -1)) return false;
        
        $aResult['tm_wday'] = (int) strftime("%w", $nParsedDateTimestamp); // Days since Sunday (0-6)
        $aResult['tm_yday'] = (strftime("%j", $nParsedDateTimestamp) - 1); // Days since January 1 (0-365)

        return $aResult;
    } // END of function
    
} // END if(function_exists("strptime") == false) 

class acp_import_users
{
	var $u_action;
	var $filename = '';
	var $delim;
	var $enclosure;
	var $escape;
	var $reg_dateformat;
	var $birthdateformat;
	var $email_users;
	var $pass_fmt;
	var $preview_mode;
	var $user_convert;
	var $line_counter;
	
	var $required_fields = array();
	var $optional_fields = array();
	var $custom_fields = array();
	var $required_mapping = array();
	var $optional_mapping = array();
	var $custom_mapping = array();
	var $defined_ranks = array();
	
	var $errors = array();
	
	function main($id, $mode)
	{
		global $config, $db, $user, $auth, $template, $cache;
		global $phpbb_root_path, $phpbb_admin_path, $phpEx;

		
		include($phpbb_root_path . 'includes/functions_profile_fields.' . $phpEx);
		include($phpbb_root_path . 'includes/functions_user.' . $phpEx);
		
		$user->add_lang('mods/acp_import_users');

		$this->tpl_name = 'acp_import_users';
		$this->page_title = 'ACP_IMPORT_USERS';
		add_form_key('user_import');
				
		$this->filename = request_var('filename', '');
		$this->delim = request_var('delim', ',');
		if ($this->delim == '\t')
			$this->delim = "\t";
		$this->escape = request_var('escape', '\\');
		$this->enclosure = str_replace('&quot;', '"', (request_var('enclosure', '&quot;')));

		$this->reg_dateformat = request_var('dateformat', '%Y/%m/%d %H:%M:%S');
		$this->birthdateformat = request_var('birthdateformat', 'YMD');
		
		$submit = request_var('submit', false);
		$preview = request_var('preview', false);
		$email_users = request_var('email_users', false);
		$this->pass_fmt = request_var('pass_fmt', false);
		$this->preview_mode = request_var('preview_mode', false);
		$user_convert = request_var('user_convert', false);
		
		$this->init_fields();
		$this->required_mapping = request_var('required_mapping', array('name' => 0));
		$this->optional_mapping = request_var('optional_mapping', array('name' => 0));
		$this->custom_mapping = request_var('custom_mapping', array('name' => 0));

		$this->line_counter = 0;

		if (isset($this->optional_mapping['user_rank']) 
		    && ($this->optional_mapping['user_rank'] >= 0))
		{
			// if the imported user rank has to be converted, it is necessary to get the list of defined ranks
			$sql = 'SELECT rank_id, rank_title
				FROM ' . RANKS_TABLE;
			$result = $db->sql_query($sql);

			while ($row = $db->sql_fetchrow($result))
			{
				$this->defined_ranks[$row['rank_title']] = $row['rank_id'];
			}
		}
		
		if ($this->delim == '')
		{
			$this->errors[] = $user->lang['MISSING_CSV_DELIMITER'];
		}
		else if ($this->delim == '')
		{
			$this->errors[] = $user->lang['MISSING_CSV_ENCLOSURE'];
		}
		else if (isset($this->optional_mapping['user_birthday']) 
		        && ($this->optional_mapping['user_birthday'] >= 0)
				&& !preg_match('/(YMD)|(YDM)|(DMY)|(MDY)/', $this->birthdateformat))
		{
			$this->errors[] = $user->lang['INVALID_BIRTHDAY_FORMAT'];
		}
		else if ($preview)
		{
			if (check_form_key('user_import'))
			{
				$this->preview($email_users, $this->pass_fmt);
			}
		}
		else if ($submit)
		{
			if (check_form_key('user_import'))
			{
				$this->import($email_users, $this->pass_fmt, $pass_chng);
			}
		}

		$template->assign_vars(array(
				'FILENAME'		=> $this->filename,
				'DELIM'			=> ($this->delim == "\t") ? '\t' : $this->delim,
				'ENCLOSURE'		=> htmlspecialchars($this->enclosure),
//				'ESCAPE'		=> $this->escape,
				'REG_DATEFORMAT'=> $this->reg_dateformat,
				'BIRTHDATEFORMAT' => $this->birthdateformat,
				'ERROR'			=> implode('<br />', $this->errors),

				'S_EMAIL_USERS'	=> $email_users,
				'S_ERROR'		=> count($this->errors),
				'S_PASS_FMT'	=> $this->pass_fmt,
				'S_PREVIEW_MODE'=> $this->preview_mode,

				'U_ACTION'		=> $this->u_action,

		));
		 
		$this->tpl_mapping('required', array_merge($this->required_fields, $this->required_mapping));
		$this->tpl_mapping('optional', array_merge($this->optional_fields, $this->optional_mapping));
		$this->tpl_mapping('cpf', array_merge($this->custom_fields, $this->custom_mapping));
	}
	
	// Helper for displaying the current selection.
	static function tpl_mapping($mname, $mapping)
	{
		global $template;
		
		foreach($mapping as $name => $to)
		{
			$template->assign_block_vars($mname, array(
				'NAME' => $name,
				'TO' => (is_numeric($to)) ? (Int) $to : -1,
			));
		}
	}
	
	// Show how the mapping interprets the first line
	function preview($email_users = false, $pass_fmt = false)
	{
		global $user, $template;
		global $phpbb_root_path, $phpbb_admin_path, $phpEx, $email_users;
		
		// read the data
		$file = @fopen($phpbb_root_path . 'store/' . $this->filename, 'r');

		if (!$file)
		{
			$this->errors[] =$user->lang['FILE_NOT_FOUND'];
			return;
		}
		
		while ($entry = fgetcsv($file, 0, $this->delim, $this->enclosure))
		{
			$values = $this->read_entry($entry);
			if (!$this->preview_mode)
				break;
		}

		$template->assign_vars(array(
				'S_EMAIL_USERS'	=> $email_users,
				'S_PREVIEW'		=> true,
		));
		
		//-- For preview, reg date must be converted to user's preferred date display format
		if (isset($values['normal']['user_regdate']) && $values['normal']['user_regdate'])
		{
			$values['normal']['user_regdate'] = $user->format_date($values['normal']['user_regdate']);
		}
		
		//-- And ranks must be converted back to their textual form
		if (isset($values['normal']['user_rank']))
		{
			if ($values['normal']['user_rank'] == 0)
			{
				$values['normal']['user_rank'] = '';
			}
			else
			{
				foreach ($this->defined_ranks as $rank => $rank_id)
				{
					if ($rank_id == $values['normal']['user_rank'])
					{
						$values['normal']['user_rank'] = $rank;
						break;
					}
				}
			}
		}
		
		// and explain password creation
		if (!isset($values['normal']['user_password']) || !$values['normal']['user_password'])
		{
			$values['normal']['user_password'] = $user->lang['PASSWORD_EXPLAIN'];
		}

		//-- Fill the preview data with data read in first line
		foreach($values as $kind => $fields)
		{
			foreach ($fields as $name => $value)
			{
				$template->assign_block_vars($kind, array(
					'NAME' => $name,
					'VALUE' => $value,
				));
			}
		}
		fclose($file);
	}
	
	// Import all, send an email if selected
	function import($email_users = false, $pass_fmt = false, $pass_chng = false)
	{
		global $config, $db, $user, $template;
		global $phpbb_root_path, $phpbb_admin_path, $phpEx, $email, $user_convert;
		@set_time_limit(0);

		$server_url = generate_board_url();

		// we need to figure out the default user group
		$sql = 'SELECT group_id
					FROM ' . GROUPS_TABLE . "
					WHERE group_name = 'REGISTERED'
						AND group_type = " . GROUP_SPECIAL;
		$result = $db->sql_query($sql);
		$group_id = $db->sql_fetchfield('group_id');
		$db->sql_freeresult($result);

		// read the data
		$file = @fopen($phpbb_root_path . 'store/' . $this->filename, 'r');

		if (!$file)
		{
			$this->errors[] = $user->lang['FILE_NOT_FOUND'];
			return;
		}
		
		$counter = 0;
		$added = array(); //-- avoid error in case no user is imported
			
		while ($entry = fgetcsv($file, 0, $this->delim, $this->enclosure))
		{		
			$values = $this->read_entry($entry);
			if (!$values) //-- Skip the line if no data is decoded
				continue; 
			$pass_gen = 0;
			$new_password = '';

			// we invent a password if it is missing
			if (!isset($values['normal']['user_password']) || !$values['normal']['user_password'])
			{
				$new_password = $values['normal']['user_password'] = gen_rand_string(6);
				$values['normal']['user_password'] = md5($new_password);
				$pass_gen = 1;
			} 

			// adjust the format here - take care about UTF8 etc.
			// we only check for username collisions
			$data = array(
					'new_username'		=> ($values['normal']['username']),
			);

		$user_pass_convert = (($this->user_convert === 1) ? 1 : 0);

			$user_row = array(
					'group_id'				=> (int) $group_id,
					'user_timezone'			=> (float) $config['board_timezone'],
					'user_dst'				=> $config['board_dst'],
					'user_lang'				=> $user->lang_name,
					'user_type'				=> USER_NORMAL,
					'user_actkey'			=> '',
//					'user_ip'				=> $user->ip,
//					'user_regdate'			=> time(),
//					'user_pass_convert'		=> 1,
			);
			$user_row = array_merge($values['normal'], $user_row);

			$conflict = validate_data($data, array(
						'new_username'			=> array(
							array('username')),
				)
			);

			// check for nameclashes
    		    if ($conflict || utf8_clean_string($data['new_username']) === $user->data['username_clean'])
			{
				$this->errors[] = sprintf($user->lang['USERNAME_CONFLICT'], $data['new_username'], $this->line_counter);
				continue;
			}
			else
			{
				user_add($user_row, $values['custom']);

				$sql = 'UPDATE ' . USERS_TABLE . '
					SET user_pass_convert = ' . (int) $user_pass_convert . "
					WHERE username = '" . $db->sql_escape($data['new_username']) . "'";
				$db->sql_query($sql);
			}
							
			// notify the user - only important for generated pwds;
			if ($config['email_enable'] && $email_users)
			{
				include_once($phpbb_root_path . 'includes/functions_messenger.' . $phpEx);

				$message[] = $user->lang['ACP_ACCOUNTS_ADDED'];

				$email_template = 'user_import';
				
				$messenger = new messenger(false);

				$messenger->template($email_template, $user->data['user_lang']);

				$messenger->to($values['normal']['user_email'], $data['new_username']);

				$messenger->headers('X-AntiAbuse: Board servername - ' . $config['server_name']);
				$messenger->headers('X-AntiAbuse: User_id - ' . $user->data['user_id']);
				$messenger->headers('X-AntiAbuse: Username - ' . $user->data['username']);
				$messenger->headers('X-AntiAbuse: User IP - ' . $user->ip);

				$messenger->assign_vars(array(
					'WELCOME_MSG'	=> htmlspecialchars_decode(sprintf($user->lang['ACP_ACCOUNTS_ADDED'], $config['sitename'])),
					'USERNAME'		=> htmlspecialchars_decode($data['new_username']),
					'PASSWORD'		=> (($pass_gen == 1) ? htmlspecialchars_decode($new_password) : htmlspecialchars_decode($user->lang['PASSWORD_UNKNOWN'])), // Only send password if it was generated
					'U_ACTIVATE'	=> "")
				);
				$messenger->send(NOTIFY_EMAIL);
			}
//			$messenger->save_queue();

			add_log('admin', 'LOG_USER_ADDED', $data['new_username']);
			$added[] = $data['new_username'];
		}
		fclose($file);
		trigger_error(implode('<br />', $this->errors) . '<br />' . sprintf($user->lang['ADDED_USERS'], sizeof($added)) . ':<br />' . implode('<br />', $added));
	}
	
	// read the array
	function read_entry($entry)
	{
		global $user;
		
		$this->line_counter++;
		$result = array(
			'normal' => $this->read_fields($entry, array_merge($this->required_fields, $this->optional_fields), array_merge($this->required_mapping, $this->optional_mapping)), 
			'custom' => $this->read_fields($entry, $this->custom_fields, $this->custom_mapping), 
		);
		if (!isset($result['normal']['username']) || !$result['normal']['username'])
		{
			$this->errors[] = sprintf($user->lang['NO_IMPORT_USERNAME'], $this->line_counter);
			unset($result); 
		}
		else if (!isset($result['normal']['user_email']) || !$result['normal']['user_email'])
		{
			$this->errors[] = sprintf($user->lang['NO_IMPORT_EMAIL'], $result['normal']['username']);
		}
		return $result;
	}
	
	// read the individual values
	function read_fields($entry, $fields, $mapping)
	{
		$retarr = array();
		foreach ($fields as $field => $type)
		{
			if (isset($mapping[$field]) && $mapping[$field] !== -1 && isset($entry[$mapping[$field]]))
			{
				$retarr[$field] = $this->convert_field($entry[$mapping[$field]], $type);
			}
		}
		return $retarr;
	}
	
	function convert_field($field, $type)
	{
		global $user;
		
		switch ($type)
		{
			case 'String' : return utf8_normalize_nfc(htmlspecialchars($field));
			case 'Password' : 			
					// if password format is plain, md5 it; otherwise leave it alone.
					// if password format is hashed, set user_convert to 1, unless it is phpBB, then set user_pass_convert to 0.
					$this->user_convert = 0;

					if ( $this->pass_fmt )
					{
						$this->user_convert = 1;
						return md5($field);
					}
					else
					{
						if (strlen($field) !== 34) // Assume not phpbb_hash
						{
							$this->user_convert = 1;
						}
						return $field;
					}
			case 'Reg' : 
					if (strlen($field) === 0)
					{
						$integer_date = time();
					}
					else if ($this->reg_dateformat == '')
					{
						$integer_date = (Int) $field;
					}
					else
					{
						$date = strptime ($field, $this->reg_dateformat);
						if (!$date)
						{
							$this->errors[] = sprintf ($user->lang['WRONG_REG_DATE_FORMAT'], $field, $this->reg_dateformat);
							$integer_date = time();
						}
						else
						{
							$integer_date = gmmktime($date['tm_hour'], $date['tm_min'], $date['tm_sec'], $date['tm_mon']+1, $date['tm_mday'], $date['tm_year']+1900); 
						}
					}
					return $integer_date;
			case 'IP' :
					if (strlen($field) === 0)
					{
						$field = $user->ip;
					}
					return $field;
			case 'Int' : echo "[$field]"; return (Int) $field;
			case 'Bool': return (Bool) $field;
			case 'Date': 
				if ($field == '')
					return '';
				$cur_year = idate('Y');
				$day = 1;
				$month = 1;
				$year = $cur_year;
				$parts = preg_split('/\D+/', $field);
				switch ($this->birthdateformat)
				{
					case 'YDM' : 
						$month = $parts[2];
						$day = $parts[1];
						$year =  $parts[0];
						break;
					case 'YMD' : 
						$month = $parts[1];
						$day = $parts[2];
						$year =  $parts[0];
						break;
					case 'DMY' : 
						$month = $parts[1];
						$day = $parts[0];
						$year =  $parts[2];
						break;
					case 'MDY' : 
						$month = $parts[0];
						$day = $parts[1];
						$year =  $parts[2];
						break;
				} // End switch format
				if ($day == 0 || $day > 31 || $month == 0 || $month > 12)
				{
					$this->errors[] = sprintf ($user->lang['INVALID_BIRTHDAY_DATA'], $field, $this->birthdateformat);
					return '';
				}
				if ($year < 100)
				{
					//-- In case the year is given by only 2 digits 
					//-- It is supposed that the user is between 5 and 105 year old
					$year += 1900;
					while ($year < $cur_year - 105)
						$year += 100;
				}
				return sprintf('%2d-%2d-%4d', $day, $month, $year);
			
			case 'Rank':
				if ($field == '')
					return 0;
				if (!isset($this->defined_ranks[$field]))
				{
					$this->errors[] = sprintf ($user->lang['UNKNOWN_RANK'], $field);
					// Return 0 meaning "no rank" for this unknown rank
					// Next time this rank is encountered the conversion
					// will return 0 too, whithout raising again the error
					$this->defined_ranks[$field] = 0;
				}
				return $this->defined_ranks[$field];
				
			case 'URL':
				if ($field == '' || preg_match('|^http\://[a-zA-Z0-9\-\.]+\.[a-zA-Z]{2,3}(/\S*)?$|', $field))
				{
					return $field;
				}
				else
				{
					$this->errors[] = $user->lang['INVALID_URL'] . $field;
					return '';
				}
			
		} // End switch type
	} // End function convert_field
	
	
	// figure out the possible fields
	function init_fields()
	{
		global $db;
		
		$this->required_fields = array(
			'username'			=> 'String',
			'user_password'		=> 'Password',
			'user_email'		=> 'String',
		);
		
		$this->optional_fields = array(
			'user_regdate'		=> 'Reg',
			'user_ip'			=> 'IP',
			'user_from'			=> 'String',
			'user_icq'			=> 'String',
			'user_aim'			=> 'String',
			'user_yim'			=> 'String',
			'user_msnm'			=> 'String',
			'user_jabber'		=> 'String',
			'user_occ'			=> 'String',
			'user_interests'	=> 'String',
			'user_birthday'		=> 'Date',
			'user_rank'         => 'Rank',
			'user_website'      => 'URL',
		);
		
	
		// gather custom fields - Dropdown is not supported
		$this->custom_fields = array();
		
		$sql = 'SELECT field_name, field_type
				FROM ' . PROFILE_FIELDS_TABLE . '
				WHERE field_type <> ' . FIELD_DROPDOWN . '
				ORDER BY field_order';
		
		$result = $db->sql_query($sql);

		while ($row = $db->sql_fetchrow($result))
		{
			$this->custom_fields["pf_{$row['field_name']}"] = self::field_type2type($row['field_type']);
		}
		$db->sql_freeresult($result);
	}
	
	// some type mapping
	static function field_type2type($type)
	{
		switch ($type)
		{
			case FIELD_STRING :
			case FIELD_TEXT : return 'String';
			case FIELD_DATE: return 'Date';
			case FIELD_INT: return 'Int';
			case FIELD_BOOL: return 'Bool';
		}
	}
}

?>