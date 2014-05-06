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



/** get_images_data
* Returns an array with the following data of all images
* if $remove_images is true, all the images in the text are removed, 
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
		$text = remove_images_from_text($text, $bbcode_uid);
	}
	return $o_images;
}

function remove_images_from_text($text, $bbcode_uid){
	//regex pattern to get and remove an image 
	$pattern = " 
		(\[url=(\S*):".$bbcode_uid."\])?		# if link: get url in group
		\[img:".$bbcode_uid."\] 				# begin image tag
		(\S*)									# get image url in group
		\[\/img:".$bbcode_uid."\] 				# end image tag
		(\[\/url:".$bbcode_uid."\])?			# end link tag
		(\R*)?									# if newlines : remove all new lines
	";

	$text = preg_replace("/".$pattern."/x", "", $text);
	return $text;
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
					"(?=(\\r\\r))".
					"(?=(\[\/preview:".$bbcode_uid."\]))";// look behind for [/preview] (and the unique bb code)
		preg_match("/".$pattern."/", $text, $matches);
		if(isset($matches[0])){
			$preview = $matches[0];
		}else{
			$preview = $text;
		}
		if(!$images){
			$preview = remove_images_from_text($preview, $bbcode_uid);
		}
		if(!$smilies || !$bbcode){
			$pattern = '/<!-- (.*?) --><img src=\"{SMILIES_PATH}\/(.*?)\" alt="(.*?)" title="(.*?)" \/><!-- (.*?) -->/';
			$preview = preg_replace($pattern, '', $preview);	
		
		}
		if(!$bbcode){
			strip_bbcode($preview, $bbcode_uid);
		}
		if($new_lines){
			$preview = str_replace("\n", ' ', $preview);
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
		
		$sentences = preg_split($pattern, $preview, -1, PREG_SPLIT_NO_EMPTY);
		$max_senctences = ($max_senctences == 0) ? count($sentences) :  min($max_senctences, count($sentences));
		

		if($new_lines){
			$preview = "";
			for($i = 0; $i < $max_senctences; $i++ ){
			$preview .= $sentences[$i] . "\n";
		}
		}else{
			$new_lines = "";
			//preg_match("/.*". preg_quote($sentences[$max_senctences-1])."/s", $preview, $matches);
			//$preview = $matches[0];

			$preview = substr($preview, 0, strpos($preview,$sentences[$max_senctences-1])) . $sentences[$max_senctences-1];
		}
		
		$options = 	(($bbcode) ? OPTION_FLAG_BBCODE : 0) +
					(($smilies) ? OPTION_FLAG_SMILIES : 0) + 
					(($urls) ? OPTION_FLAG_LINKS : 0);
		$preview = generate_text_for_display($preview, $bbcode_uid, $bbcode_bitfield, $options);
		
		return $preview;
    }






?>