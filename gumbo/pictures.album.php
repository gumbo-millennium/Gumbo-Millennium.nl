<?php
	/**
	*
	* @package phpBB3
	* @version $Id$
	* @copyright (c) 2005 phpBB Group
	* @license http://opensource.org/licenses/gpl-license.php GNU Public License
	*
	*/

	/**
	*/

	/**
	* @ignore
	*/
	if (!defined('IN_PHPBB') || !defined('IN_PICTURES'))
	{
		exit;
	}

	$album = null; // set default value
	try {
    	$album = $googleAPI->get_album($album_uuid);
	} catch (Exception $e) {
	    
	}	

    if ( $album != null ) { // if album contains something

    	$template->assign_vars(array(
			'FOTOS_FOUND'	=> true,
			'ALBUMTITLE'	=> $album['albumtitle'],
			'NRPHOTOS'		=> $album['total'],
			'DATE'			=> $user->format_date( $album['published']->getTimestamp(), "j F Y"),
			'L_PHOTOS'		=> $user->lang['PHOTOS'],
			'L_FOTOS_PUBLISHED'	=> $user->lang['FOTOS_PUBLISHED'],
		));
    	$i = 0;
    	//var_dump($album);
        foreach ($album['photos'] as $gKey => $photo) {
    		//var_dump($photo['content']);
            $template->assign_block_vars('fotos', array(
				'NAME'    					=> $photo['title'],
				'SRC'   					=> $photo['content'],
				'SRC_THUMBNAIL'   			=> $photo['thumbnail'],
			));
        }
    }else{
        $template->assign_vars(array(
			'FOTOS_FOUND'	=> false,
			'NO_FOTOS_MESSAGE'		=>  $user->lang['NOPHOTOS'],
			'L_RETURN_ALBUMS'		=>  $user->lang['RETURN_PICTURES'],
			'A_RETURN_ALBUMS'		=>  append_sid("{$phpbb_root_path}gumbo/pictures.$phpEx" ),

		));
    }

	// Add the title/breadcrumbs bar
	$template->assign_vars(array(
		'PAGE_TITLE_BOX_HIDE'	=> false
	));
	
	// Set the breadcrumbs

	$template->assign_block_vars('navlinks', array(
		'FORUM_NAME'		=> $user->lang['PICTURES'],
		'U_VIEW_FORUM'		=> append_sid("{$phpbb_root_path}gumbo/pictures.$phpEx" ))       
	);
	
	$template->assign_block_vars('navlinks', array(
		'FORUM_NAME'		=> $album['albumtitle'], 
		'U_VIEW_FORUM'		=> append_sid("{$phpbb_root_path}gumbo/pictures.$phpEx", "a=".$album_uuid) 
	));

	// Output page
	page_header($album['albumtitle']);
	
	$template->set_filenames(array(
		'body' => 'pictures.album.html')
	);

	page_footer();



?>
