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
function valid_time($time_input){
	if($time_preg = preg_match("/(([01])?\d|2[0-3]):([0-5]?\d):([0-5]?\d)$/", $time_input, $matches)){ // check for the format
		if(strlen($matches[0]) == strlen($time_input))	// check if hours are not 23+
			return true;		// valid time
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



?>