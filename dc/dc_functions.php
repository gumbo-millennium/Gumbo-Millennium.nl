<?php
/**
*
* @package phpBB3
* @version $Id$
* @athor: Gerco Versloot
* @date: 6 - 8 - 2012
* Gumbo Millennium-
* @license http://opensource.org/licenses/gpl-license.php GNU Public License
*
*/

/**
* @ignore
*/
if (!defined('IN_PHPBB'))
{
	exit;
}

//validate a string to check if it is a valid date
//$date: the user input
//$format: the patern for date
// usable formats: D,DD,M,MM,YY, YYYY and any seperator 
// by: pmmmmm (PHP.net) http://www.php.net/manual/en/function.checkdate.php#107569

function valid_date($date, $format = 'D-M-YYYY'){
    if(strlen($date) >= 8 && strlen($date) <= 10){
        $separator_only = str_replace(array('M','D','Y'),'', $format);
        $separator = $separator_only[0];
        if($separator){
            $regexp = str_replace($separator, "\\" . $separator, $format);
            $regexp = str_replace('MM', '(0[1-9]|1[0-2])', $regexp);
            $regexp = str_replace('M', '(0?[1-9]|1[0-2])', $regexp);
            $regexp = str_replace('DD', '(0[1-9]|[1-2][0-9]|3[0-1])', $regexp);
            $regexp = str_replace('D', '(0?[1-9]|[1-2][0-9]|3[0-1])', $regexp);
            $regexp = str_replace('YYYY', '\d{4}', $regexp);
            $regexp = str_replace('YY', '\d{2}', $regexp);
            if($regexp != $date && preg_match('/'.$regexp.'$/', $date)){
                foreach (array_combine(explode($separator,$format), explode($separator,$date)) as $key=>$value) {
                    if ($key == 'YY') $year = '20'.$value;
                    if ($key == 'YYYY') $year = $value;
                    if ($key[0] == 'M') $month = $value;
                    if ($key[0] == 'D') $day = $value;
                }
                if (checkdate($month,$day,$year)) return true;
            }
        }
    }
    return false;
}

//validate a string to check if it is a valid time
//only valid time input: hh:mm:ss hh:(0-23) mm:(0-60) ss:(0-60) 
function valid_datetime($datetime_input){
	
	if(strtotime($datetime_input)) {
		return true;			// valid time
	} 
	return false;				// unvalid time
}

// Get a list of all memberships of a user
// input is the users id
// output is a array of all group id;
function all_user_groups($user_id){
	global $db;
	$sql = "SELECT group_id FROM dc_user_group WHERE user_id = '". $user_id ."' AND user_pending = 0";
	$result = $db->sql_query($sql);
	$group_list = array();
	while ($row = $db->sql_fetchrow($result))				// walk through all the rows
	{
		$group_list[]= intval($row["group_id"]);			// convert from String to int
	}
	return $group_list;
}

function check_form($display_vars, $cfg_array){
	global $user;
	$error = array();
	foreach($display_vars['vars'] as $config_name => $vars){
		// check all vars that are not allowd to be empty
		if(is_array($vars)){  // filter only the input fields. (so legend1, legen2, ... are skipt )
			if((empty($cfg_array[$config_name]) && !$vars['empty'])){
				$error[] = ucfirst(strtolower(($user->lang[$vars['lang']]." ". $user->lang["NOT_EMPTY"])));
			}else{
				// check for forbidden chars
				if(is_array($vars) && isset($vars['preg'])){ 				// isset formidden chars
					
					if(preg_match("/".$vars['preg']."/", $cfg_array[$config_name]) && !(empty($cfg_array[$config_name]) && $vars['empty'])) // check input or input is empty (and allowed to be emty)
						$error[] = ucfirst(strtolower(($user->lang[$vars['lang']]." ". $user->lang["NOT_PREG"])));		// set error
				}
					
				//check for custom validates
				//avaiable custom validates: text
				switch($vars['validate']){
					case 'text':
						if(utf8_strlen($cfg_array[$config_name]) >= 65535 ){  // count characters max is 65535 (max chars in a MySQL text/blob)
							$error[] = sprintf($user->lang['SETTING_TOO_LONG'], $user->lang[$vars['lang']], 65535);
						}
						break;
				}
				
				// check for paterns
				// available paterns: date, time, money
				if(is_array($vars) && isset($vars['patern']) ){				// is set a patern
					if(!(empty($cfg_array[$config_name]) && $vars['empty'])){	// check if input is emty and allowed to be empty 
						$set_error = false;									// set no error
						switch($vars['patern']['type']){
							case 'date':									// if patern is a date
								if(!valid_date($cfg_array[$config_name], $vars['patern']['format'])) // check input
									$set_error = true;						// set error
								break;
							case 'datetime':								// if patern is a datetime
							case 'time':									// if patern is a time
								if(!valid_datetime($cfg_array[$config_name]))	// check input
									$set_error = true;						// set error
								break;
							case 'money':									// if patern is money
								if(!preg_match("/\d+(,\d{2}$)?$/",$cfg_array[$config_name])){ // check input
									$set_error = true;						// set error
								}
								$cfg_array[$config_name] = floatval( preg_replace('/,/', '.', $cfg_array[$config_name]));	// convert input to proper double
								break;
						}
						if($set_error){										// error found
							$error[] = ucfirst(strtolower($user->lang[$vars['lang']] .' '. $user->lang['WRONG_FORMAT'])); // set output error
						}
					}
				}
			}
		}
	}
	return $error;
}



?>