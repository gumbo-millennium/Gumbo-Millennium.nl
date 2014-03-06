<?php
/**
*
* @package phpBB3 Gumbo millennium 
* @version $Id: functions.php 1 2014-02-04 dc@gumbo-millennium.nl $
* @copyright (c) 2014 Gumbo Millennium
* @license http://opensource.org/licenses/gpl-license.php GNU Public License
*
*/

if (!defined('IN_PHPBB'))
{
	exit;
}

/**
* Setup gumbo overlay
*
* Sets some template constants
*/
function setup_gumbo_overlay()
{
	global $config, $phpbb_root_path, $phpEx, $template, $user, $auth;

	require($phpbb_root_path . 'gumbo/includes/Mobile_Detect.' . $phpEx);


	// Set up common template variables, mainly used in the navigation  
	$template->assign_vars(array(
		
		'U_PLAZACAM'			=> append_sid("{$phpbb_root_path}gumbo/plazacam.$phpEx"),
		'L_PLAZACAM'			=> $user->lang['PLAZACAM'],
		'U_EVENTS'				=> append_sid("{$phpbb_root_path}dc/dc_activity_list.$phpEx"),
		'L_EVENTS'				=> $user->lang['EVENTS'],
		'U_CONTACT'				=> append_sid("{$phpbb_root_path}gumbo/contact.$phpEx"),
		'L_CONTACT'				=> $user->lang['CONTACT'],
		'U_ABOUT_US'			=> append_sid("{$phpbb_root_path}gumbo/over_ons.$phpEx"),
		'L_ABOUT_US'			=> $user->lang['OVER_ONS'],
		'U_SOCIETEIT'			=> append_sid("{$phpbb_root_path}gumbo/societeit.$phpEx"),
		'L_SOCIETEIT'			=> $user->lang['SOCIETEIT'],
		'U_WHY_GUMBO'			=> append_sid("{$phpbb_root_path}gumbo/why_gumbo.$phpEx"),
		'L_WHY_GUMBO'			=> $user->lang['WHY_GUBMO'],
		'U_DISPUTES'			=> append_sid("{$phpbb_root_path}gumbo/disputes.$phpEx"),
		'L_DISPUTES'			=> $user->lang['DISPUTES'],
		'U_EQUESTER'			=> append_sid("{$phpbb_root_path}gumbo/equester.$phpEx"),
		'L_EQUESTER'			=> $user->lang['EQUESTER'],
		'U_M-POWER'				=> append_sid("{$phpbb_root_path}gumbo/m-power.$phpEx"),
		'L_M-POWER'				=> $user->lang['M-POWER'],
		'U_PROXIMUS'			=> append_sid("{$phpbb_root_path}gumbo/proximus.$phpEx"),
		'L_PROXIMUS'			=> $user->lang['PROXIMUS'],
		'U_ALIQUANDO'			=> append_sid("{$phpbb_root_path}gumbo/aliquando.$phpEx"),
		'L_ALIQUANDO'			=> $user->lang['ALIQUANDO'],
		'U_SPONSORS'			=> append_sid("{$phpbb_root_path}gumbo/sponsors.$phpEx"),
		'L_SPONSORS'			=> $user->lang['SPONSOR'],
		'U_COMMISSION'			=> append_sid("{$phpbb_root_path}gumbo/commission.$phpEx"),
		'L_COMMISSION'			=> $user->lang['COMMISSION'],
		'U_BOARD_OF_DIRECTORS'	=> append_sid("{$phpbb_root_path}gumbo/board_of_directors.$phpEx"),
		'L_BOARD_OF_DIRECTORS'	=> $user->lang['BOARD_OF_DIRECTORS'],
		'U_DC'					=> append_sid("{$phpbb_root_path}gumbo/dc.$phpEx"),
		'L_DC'					=> $user->lang['DC'],
		'U_SC'					=> append_sid("{$phpbb_root_path}gumbo/sc.$phpEx"),
		'L_SC'					=> $user->lang['SC'],
		'U_PC'					=> append_sid("{$phpbb_root_path}gumbo/pc.$phpEx"),
		'L_PC'					=> $user->lang['PC'],
		'U_AC'					=> append_sid("{$phpbb_root_path}gumbo/ac.$phpEx"),
		'L_AC'					=> $user->lang['AC'],
		'U_GC'					=> append_sid("{$phpbb_root_path}gumbo/gc.$phpEx"),
		'L_GC'					=> $user->lang['GC'],
		'U_KASCIE'				=> append_sid("{$phpbb_root_path}gumbo/kascie.$phpEx"),
		'L_KASCIE'				=> $user->lang['KC'],
		'U_IB'					=> append_sid("{$phpbb_root_path}gumbo/ib.$phpEx"),
		'L_IB'					=> $user->lang['IB'],
		'U_SOCIETEIT'			=> append_sid("{$phpbb_root_path}gumbo/societeit.$phpEx"),
		'L_SOCIETEIT'			=> $user->lang['SOCIETEIT'], 
		'U_BOARD_HISTORY'		=> append_sid("{$phpbb_root_path}gumbo/board_history.$phpEx"),
		'L_BOARD_HISTORY'		=> $user->lang['BOARD_HISTORY'],
		'U_NEWS_AND_EVENTS'		=> append_sid("{$phpbb_root_path}gumbo/news_and_events.$phpEx"),
		'L_NEWS_AND_EVENTS'		=> $user->lang['NEWS_AND_EVENTS'],
		'U_NEWS'				=> append_sid("{$phpbb_root_path}gumbo/news.$phpEx"),
		'L_NEWS'				=> $user->lang['NEWS'],
		'U_RESENT_NEWS'			=> append_sid("{$phpbb_root_path}gumbo/resent_news.$phpEx"),
		'L_RESENT_NEWS'			=> $user->lang['RESENT_NEWS'],
		'U_ARCHIVE_NEWS'		=> append_sid("{$phpbb_root_path}gumbo/archive_news.$phpEx"),
		'L_ARCHIVE_NEWS'		=> $user->lang['ARCHIVE_NEWS'],
		'U_GUMBODES'			=> append_sid("{$phpbb_root_path}gumbo/gumbodes.$phpEx"),
		'L_GUMBODES'			=> $user->lang['GUMBODES'], 
		'U_PICTURES'			=> append_sid("{$phpbb_root_path}gumbo/pictures.$phpEx"),
		'L_PICTURES'			=> $user->lang['PICTURES'], 
		'U_FORUM'				=> append_sid("{$phpbb_root_path}gumbo/forum.$phpEx"),
		'L_FORUM'				=> $user->lang['FORUM'],
		'L_VIEW_BOOKMARKS'		=> $user->lang['VIEW_BOOKMARKS'],  
		'U_FORUM_BOOKMARKS'		=> append_sid("{$phpbb_root_path}ucp.$phpEx", 'i=main&mode=bookmarks'), 
		'U_FORUM_SUBSCRIBED'	=> append_sid("{$phpbb_root_path}ucp.$phpEx", 'i=main&mode=subscribed'), 
		'L_FORUM_SUBSCRIBED'	=> $user->lang['FORUM_SUBSCRIBED'],
		'L_MEMBER_PANELS'		=> $user->lang['MEMBER_PANELS'],
		'U_DOC_SYSTEM'			=> append_sid("{$phpbb_root_path}gumbo/doc_system.$phpEx"),
		'L_DOC_SYSTEM'			=> $user->lang['DOC_SYSTEM'],
		'U_SHOP'				=> append_sid("{$phpbb_root_path}gumbo/shop.$phpEx"),
		'L_SHOP'				=> $user->lang['SHOP'],
		'L_HOME'				=> $user->lang['HOME'],
		'U_GROUPLIST'			=> append_sid("{$phpbb_root_path}grouplist.$phpEx"),
		'U_UCP_PROFILE'			=> append_sid("{$phpbb_root_path}ucp.$phpEx", 'i=173'),
		'L_UCP_PROFILE'			=> $user->lang['UCP_PROFILE'],  
		'U_UCP_PREFS'			=> append_sid("{$phpbb_root_path}ucp.$phpEx", 'i=174'),
		'L_UCP_PREFS'			=> $user->lang['UCP_PREFS'],  
		'U_UCP_USERGROUPS'		=> append_sid("{$phpbb_root_path}ucp.$phpEx", 'i=176'),
		'L_UCP_USERGROUPS'		=> $user->lang['UCP_USERGROUPS'],  
		'U_UCP_FRIENDS_FOES'	=> append_sid("{$phpbb_root_path}ucp.$phpEx", 'i=177'),
		'L_UCP_ZEBRA_FOES'		=> $user->lang['UCP_ZEBRA_FOES'],  
		'U_MOD_QUEUE'			=> append_sid("{$phpbb_root_path}mcp.$phpEx", 'i=141'),
		'L_MCP_QUEUE'			=> $user->lang['MCP_QUEUE'],  
		'U_MOD_REPORT'			=> append_sid("{$phpbb_root_path}mcp.$phpEx", 'i=142'),
		'L_MCP_REPORTS'			=> $user->lang['MCP_REPORTS'],  
		'U_MOD_USER_NODE'		=> append_sid("{$phpbb_root_path}mcp.$phpEx", 'i=143'),
		'L_MCP_NOTES'			=> $user->lang['MCP_NOTES'],  
		'U_MOD_WARNINGS'		=> append_sid("{$phpbb_root_path}mcp.$phpEx", 'i=144'),
		'L_MCP_WARN'			=> $user->lang['MCP_WARN'],  
		'U_MOD_LOG'				=> append_sid("{$phpbb_root_path}mcp.$phpEx", 'i=145'),
		'L_MCP_LOGS'			=> $user->lang['MCP_LOGS'],  
		'U_MOD_BANNING'			=> append_sid("{$phpbb_root_path}mcp.$phpEx", 'i=146'),
		'L_MCP_BAN'				=> $user->lang['MCP_BAN'], 
		
		'L_BACK'				=> $user->lang['BACK'], 
		'L_NAVIGATION'			=> $user->lang['NAVIGATION'], 
	));

	// check some permissions 
	$template->assign_var("U_DOC_SYSTEM_ACCS", $auth->acl_get('f_read', 35));

	// detect for mobile user
	$detect = new Mobile_Detect();
	$user->data["is_mobile"] = $detect->isMobile();
	$template->assign_var("U_IS_MOBILE", $user->data["is_mobile"]);

	
}

/** get_images_data
* Returns an array with the following data of all images
* if $remove_images is true, all the images in the text are removed 
* $imgaes[{img_id}] = array (
*	"URL" = {img url},
*   "LINK" = {link href}	
*)
*/ 

function get_images_data(&$text, $bbcode_uid, $remove_images = true) {
	
 	//regex pattern to get and remove an image 
	$pattern = " 
		(\[url=(\S*):".$bbcode_uid."\])?		# if link: get url in group
		\[img:".$bbcode_uid."\] 				# begin image tag
		(\S*)									# get image url in group
		\[\/img:".$bbcode_uid."\] 				# end image tag
		(\[\/url:".$bbcode_uid."\])?			# end link tag
		(\R*)?									# if newlines : remove all new lines
	";

	// find all images
	preg_match_all("/".$pattern."/x", $text, $i_images);
	$o_images = array();

	// convert regex output into usable output
	foreach ($i_images[3] as $key => $value) {
		$o_images[$key] = array(
			'URL' => $value,
			'LINK' => ($i_images[2][$key] != "") ? $i_images[2][$key] : NULL
		 );
	}

	// remove the images?
	if($remove_images){
		// remove images
		$text = preg_replace("/".$pattern."/x", "", $text);
	}
	return $o_images;
}

/*	get_preview
	* returns a small part of the text defined in the bbcode: [preview]{text}[preview] else the fist sentences.  
	* @params
	* $text String text to extract the preview
	* $bbcode_uid String bbocde uid to find the bbcode
	* $bbcode_bitfield String Bitfield to find bbocode
	* $max_senctences int The max amount of return sentences, if 0 show all preview, if no given preview bbcode and max_sentences = 0: return full text. Default value is 5.
	* $new_lines boolean If true every sentence is on a new line, default is false
	* $bbcode boolean If false strip all bbcode(Also strips smilies), default is true
	* $smilies boolean If false strip all smilies (also strips if $bbcode is false), default is true
	* $urls boolean If false strip all urls, default is true
	* $images boolean If false strips all images, default is false
	*/
	function get_preview($text, $bbcode_uid, $bbcode_bitfield, $max_senctences = 5 , $new_lines = false, $bbcode = true, $smilies = true, $urls = true, $images = false){
		if(gettype($max_senctences) != "integer")
			return null;
		if(gettype($bbcode) != "boolean")
			return null;
		if(gettype($new_lines) != "boolean")
			return null;
		if(gettype($smilies) != "boolean")
			return null;
		if(gettype($urls) != "boolean")
			return null;
		if(gettype($images) != "boolean")
			return null;
		$pattern = 	"(?<=(\[preview:".$bbcode_uid."\]))".	// lookahead for [preview] (bbcode_uid is for the unique page)
					"[\s\S]*".									// look all non white characters and all white characters (just all characters)
					"(?=(\[\/preview:".$bbcode_uid."\]))";// look behind for [/preview] (and the unique bb code)
		preg_match("/".$pattern."/", $text, $matches);
		if(isset($matches[0])){
			$prev_desc = $matches[0];
		}else{
			$prev_desc = $text;
		}
		if(!$images){
			$pattern = 	"/\[img:".$bbcode_uid."\]".	
						"[\s\S]*".	
						"\[\/img:".$bbcode_uid."\]/";
			$prev_desc = preg_replace($pattern, ' ', $prev_desc);
		}
		if(!$smilies || !$bbcode){
			$pattern = '/<!-- (.*?) --><img src=\"{SMILIES_PATH}\/(.*?)\" alt="(.*?)" title="(.*?)" \/><!-- (.*?) -->/';
			$prev_desc = preg_replace($pattern, '', $prev_desc);	
		
		}
		if(!$bbcode){
			strip_bbcode($prev_desc, $bbcode_uid);
		}
		if($new_lines){
			$prev_desc = str_replace("\n", ' ', $prev_desc);
		}
		
		$pattern =  '/# Split sentences on whitespace between them.
				(?<=                # Begin positive lookbehind.
				  [.!?]             # Either an end of sentence punct,
				| [.!?][\'"]        # or end of sentence punct and quote.
				| '.$bbcode_uid.'\] [^a-z]  # or the end of bbcode
				|\n
				)                   # End positive lookbehind.
				(?<!                # Begin negative lookbehind.
				Mr.            # Skip either "Mr."
				| Mrs\.             # or "Mrs.",
				| Ms\.              # or "Ms.",
				| Jr\.              # or "Jr.",
				| Dr\.              # or "Dr.",
				| Prof\.            # or "Prof.",
				| Sr\.              # or "Sr.",
				| T\.V\.A\.         # or "T.V.A.",
				| [A-Z]\.         # or 
									# or... (you get the idea).
				)                   # End negative lookbehind.
				\s+                 # Split on whitespace between sentences.
				/x';
		
		$sentences = preg_split($pattern, $prev_desc, -1, PREG_SPLIT_NO_EMPTY);
		$prev_desc = "";
		if($new_lines){
			$new_lines = "\n";
		}else{
			$new_lines = "";
		}
		
		$max_senctences = ($max_senctences == 0) ? count($sentences) :  min($max_senctences, count($sentences));
		
		for($i = 0; $i < $max_senctences; $i++ ){
			$prev_desc .= $sentences[$i] . $new_lines ." ";
		}
		
		$options = 	(($bbcode) ? OPTION_FLAG_BBCODE : 0) +
					(($smilies) ? OPTION_FLAG_SMILIES : 0) + 
					(($urls) ? OPTION_FLAG_LINKS : 0);
		$prev_desc = generate_text_for_display($prev_desc, $bbcode_uid, $bbcode_bitfield, $options);
		
		return $prev_desc;
    }






?>