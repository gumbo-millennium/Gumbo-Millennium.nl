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

/**	get_preview
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

/**
 *  Fetch post form the forum
 * @param  int  $forum_from      	The forum id there the post has to come from
 * @param  boolean  $permissions    Get the same permissions as the forum
 * @param  int  $number_of_posts 	Max number of posts
 * @param  int  $max_sentences   	Max sentences of the post, 0 is infinite 
 * @param  int  $time               Limit number of post by time
 * @param  String  $type            Type of fetching 
 * @param  integer $start           Offset of the limit
 * @param  boolean $invert          Invert the order
 * @param  boolean $allow_bbcode    Allow bbcode into the text
 * @param  boolean $allow_images    Allow images in the text
 * @param  boolean $new_line        Each sentence on a new line
 * @return array                    Post[post_id]
 */
function fetch_posts($forum_from, $permissions, $number_of_posts, $max_sentences, $time, $type, $start = 0, $invert = false, $allow_bbcode = true, $remove_images = false, $new_line = false)
{
	global $db, $phpbb_root_path, $auth, $user, $bbcode_bitfield, $bbcode, $config;

	$posts = $update_count = array();
	$post_time = ($time == 0) ? '' : 'AND t.topic_time > ' . (time() - $time * 86400);
	$forum_from = (strpos($forum_from, ',') !== FALSE) ? explode(',', $forum_from) : (($forum_from != '') ? array($forum_from) : array());
	$str_where = '';
	$topic_icons = array(0);
	$have_icons = 0;

	
	$topics_read = get_unread_topics();
	if ($permissions == true)
	{
		$disallow_access = array_unique(array_keys($auth->acl_getf('!f_read', true)));
	} 
	else
	{
		$disallow_access = array();
	}

	if ($invert == true)
	{
		$disallow_access = array_merge($disallow_access, $forum_from);
		$forum_from = array();
	}

	$global_f = 0;

	if (sizeof($forum_from))
	{
		$disallow_access = array_diff($forum_from, $disallow_access);
		if (!sizeof($disallow_access))
		{
			return array();
		}

		foreach ($disallow_access as $acc_id)
		{
			$acc_id = (int) $acc_id;
			$str_where .= "t.forum_id = $acc_id OR ";
			if ($type == 'announcements' && $global_f < 1 && $acc_id > 0)
			{
				$global_f = $acc_id;
			}
		}
	}
	else
	{
		foreach ($disallow_access as $acc_id)
		{
			$acc_id = (int) $acc_id;
			$str_where .= "t.forum_id <> $acc_id AND ";
		}
	}

	switch($type)
	{
		case "announcements":
			$topic_type = '((t.topic_type = ' . POST_ANNOUNCE . ') OR (t.topic_type = ' . POST_GLOBAL . '))';
			$str_where = (strlen($str_where) > 0) ? 'AND (t.forum_id = 0 OR (' . trim(substr($str_where, 0, -4)) . '))' : '';
			$user_link = 't.topic_poster = u.user_id';
			$post_link = 't.topic_first_post_id = p.post_id';
			$topic_order = 't.topic_time DESC';
		break;
		case "news":
			
		break;
		case "news_all":
			$topic_type = '(t.topic_type <> ' . POST_ANNOUNCE . ') AND (t.topic_type <> ' . POST_GLOBAL . ')';
			$str_where = (strlen($str_where) > 0) ? 'AND (' . trim(substr($str_where, 0, -4)) . ')' : '';
			$user_link = 't.topic_poster = u.user_id';
			$post_link ='t.topic_first_post_id = p.post_id' ;
			$topic_order = 't.topic_time DESC' ;
		break;

        default:
            $topic_type = $str_where = $user_link = $post_link = '';
            $topic_order = 't.topic_time DESC';
            // maybe use trigger_error here, as this shouldn't happen
	}

	if ($type == 'announcements' && $global_f < 1)
	{
		$sql = 'SELECT
					forum_id
				FROM
					' . FORUMS_TABLE . '
				WHERE
					forum_type = ' . FORUM_POST . '
					' . str_replace('t.', '', $str_where) . '
				ORDER BY
					forum_id';
		$result = $db->sql_query_limit($sql, 1);
		$row = $db->sql_fetchrow($result);
		$db->sql_freeresult($result);

		if (!sizeof($row))
		{
			return array();
		}
		$global_f = $row['forum_id'];
	}

	$sql_array = array(
		'SELECT' => 't.forum_id,
			t.topic_id,
			t.topic_last_post_id,
			t.topic_last_post_time,
			t.topic_time,
			t.topic_title,
			t.topic_attachment,
			t.topic_views,
			t.poll_title,
			t.topic_replies,
			t.topic_replies_real,
			t.topic_poster,
			t.topic_type,
			t.topic_status,
			t.topic_last_poster_name,
			t.topic_last_poster_id,
			t.topic_last_poster_colour,
			t.icon_id,
			u.username,
			u.user_id,
			u.user_type,
			u.user_colour,
			p.post_id,
			p.poster_id,
			p.post_time,
			p.post_text,
			p.post_attachment,
			p.post_username,
			p.enable_smilies,
			p.enable_bbcode,
			p.enable_magic_url,
			p.bbcode_bitfield,
			p.bbcode_uid,
			f.forum_name,
			f.enable_icons',
		'FROM' => array(
			TOPICS_TABLE => 't',
		),
		'LEFT_JOIN' => array(
			array(
				'FROM' => array(USERS_TABLE => 'u'),
				'ON' => $user_link,
			),
			array(
				'FROM' => array(FORUMS_TABLE => 'f'),
				'ON' => 't.forum_id=f.forum_id',
			),
			array(
				'FROM' => array(POSTS_TABLE => 'p'),
				'ON' => $post_link,
			),
		),
		'WHERE' => $topic_type . '
				' . $post_time . '
				AND t.topic_status <> ' . ITEM_MOVED . '
				AND t.topic_approved = 1
				AND t.topic_moved_id = 0
				' . $str_where,
		'ORDER_BY' => $topic_order,
	);

	$sql_array['LEFT_JOIN'][] = array('FROM' => array(TOPICS_POSTED_TABLE => 'tp'), 'ON' => 'tp.topic_id = t.topic_id AND tp.user_id = ' . $user->data['user_id']);
	$sql_array['SELECT'] .= ', tp.topic_posted';
	$sql = $db->sql_build_query('SELECT', $sql_array);	
	if ($number_of_posts != 0)
	{
		$result = $db->sql_query_limit($sql, $number_of_posts, $start, 3600);
	}
	else
	{
		$result = $db->sql_query($sql, 3600);
	}

	$i = 0;

	while ($row = $db->sql_fetchrow($result))
	{
		$topic_id = $row['topic_id'];
		$attachments = array();
		if (($auth->acl_get('u_download') && ($auth->acl_get('f_download', $row['forum_id']) || $row['forum_id'] == 0)) && $config['allow_attachments'] && $row['post_id'] && $row['post_attachment'])
		{
			// Pull attachment data
			$sql2 = 'SELECT *
				FROM ' . ATTACHMENTS_TABLE . '
				WHERE post_msg_id = '. $row['post_id'] .'
				AND in_message = 0
				ORDER BY filetime DESC';
			$result2 = $db->sql_query($sql2);

			while ($row2 = $db->sql_fetchrow($result2))
			{
				$attachments[] = $row2;
			}
			$db->sql_freeresult($result2);
		}

		//BEGIN MOD GUBMO (PART 1): add extraction of images from a post 
		$images = array();
		foreach (get_images_data($row['post_text'], $row['bbcode_uid'], FALSE) as $img_id => $img_data)
	    {
	    	$images[] = array('URL' => $img_data["URL"], 'LINK' => $img_data["LINK"]);
	    }
	    // END MOD GUMBO

		$posts[$topic_id ]['bbcode_uid'] = $row['bbcode_uid'];
		$len_check = $row['post_text'];
	

		//BEGIN MOD GUBMO: create preview from text

		$preview = get_preview($row['post_text'], $row['bbcode_uid'],  $row['bbcode_bitfield'], intval($max_sentences), $new_line, $allow_bbcode, true, true, !$remove_images);
		
		$preview = str_replace(array("\n", "\r"), array('<br />', "\n"), $preview);

		// remove the images?
		if($remove_images){
			// remove images
			$message = remove_images_from_text($row['post_text'], $row['bbcode_uid']);
		}

		$options = 	(($allow_bbcode) ? OPTION_FLAG_BBCODE : 0) +
					 OPTION_FLAG_SMILIES + 
					 OPTION_FLAG_LINKS;
		
		$message = generate_text_for_display($message, $row['bbcode_uid'], $row['bbcode_bitfield'], $options);
		
		//END MOD GUBMO

		if (!empty($attachments))
		{
			parse_attachments($row['forum_id'], $preview, $attachments, $update_count);
		}

		if ($global_f < 1)
		{
			$global_f = $row['forum_id'];
		}

		$topic_icons[] = $row['enable_icons'];
		$have_icons = ($row['icon_id'] > 0) ? 1 : $have_icons;
		$topic_time = new DateTime();
		$topic_time->setTimestamp($row["post_time"]);

		$topic_last_post_time = new DateTime();
		$topic_last_post_time->setTimestamp($row["topic_last_post_time"]);

		$posts[$topic_id] = array_merge($posts[$topic_id], array(
			'post_preview'				=> ap_validate($preview),
			'post_text'				=> ap_validate($message),
			'topic_id'				=> $row['topic_id'],
			'topic_last_post_id'	=> $row['topic_last_post_id'],
			'topic_type'			=> $row['topic_type'],
			'topic_posted'			=> (isset($row['topic_posted']) && $row['topic_posted']) ? true : false,
			'icon_id'				=> $row['icon_id'],
			'topic_status'			=> $row['topic_status'],
			'forum_id'				=> $row['forum_id'],
			'topic_replies'			=> $row['topic_replies'],
			'topic_replies_real'	=> $row['topic_replies_real'],
			'topic_time'			=> $topic_time,
			'topic_last_post_time'	=> $topic_last_post_time,
			'topic_title'			=> $row['topic_title'],
			'username'				=> $row['username'],
			'username_full'			=> get_username_string('full', $row['user_id'], $row['username'], $row['user_colour'], $row['post_username']),
			'username_full_last'	=> get_username_string('full', $row['topic_last_poster_id'], $row['topic_last_poster_name'], $row['topic_last_poster_colour'], $row['topic_last_poster_name']),
			'user_id'				=> $row['user_id'],
			'user_type'				=> $row['user_type'],
			'user_colour'			=> $row['user_colour'],
			'poll'					=> ($row['poll_title']) ? true : false,
			'attachment'			=> ($row['topic_attachment']) ? true : false,
			'topic_views'			=> $row['topic_views'],
			'forum_name'			=> $row['forum_name'],
			'attachments'			=> (!empty($attachments)) ? $attachments : array(),
			//BEGIN MOD GUBMO (PART 2): add extraction of images from a post
			'images'				=> (!empty($images)) ? $images : array(),
			'user_readed'			=> (isset($topics_read[$row['topic_id']])) ? false : true,
			// END MOD GUMBO
		));
		$posts['global_id'] = $global_f;
		++$i;
	}
	
	$db->sql_freeresult($result);

	$posts['topic_icons'] = ((max($topic_icons) > 0) && $have_icons) ? true : false;
	$posts['topic_count'] = $i;

	if ($global_f < 1)
	{
		return array();
	}
	else
	{
		return $posts;
	}
}






?>