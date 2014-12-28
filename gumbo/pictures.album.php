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

	try {
    	$album = $googleAPI->get_album($album_uuid);
	} catch (Exception $e) {
	    echo 'Caught exception: ',  $e->getMessage(), "<br>";
	    // send messeage: something went wrong 
	}	

    if ( $album !=null ) {
    	$template->assign_vars(array(
			'FOTOS_FOUND'	=> true,
			'ALBUMTITLE'	=> $album['albumtitle']
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
			'FOTOS_FOUND'	=> false
		));
    }

	// Add the title/breadcrumbs bar
	$template->assign_vars(array(
		'PAGE_TITLE_BOX_HIDE'	=> false
	));
	
	// Set the breadcrumbs
	$template->assign_block_vars('navlinks', array(
		'FORUM_NAME'		=> $user->lang['PICTURES'],
		'U_VIEW_FORUM'		=> append_sid("{$phpbb_root_path}gumbo/pictures.$phpEx" )) //The path to the custom file relative to the phpbb root path.            
	);
	
	// Output page
	page_header($album['albumtitle']);
	
	$template->set_filenames(array(
		'body' => 'pictures.album.html')
	);

	page_footer();



?>
