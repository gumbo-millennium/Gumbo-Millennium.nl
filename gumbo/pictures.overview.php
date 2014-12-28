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
	$albums = null;
	try {
    	$albums = $googleAPI->get_albums();
	} catch (Exception $e) {
	    echo 'Caught exception: ',  $e->getMessage(), "\n";
	}

	if ($preview_year != 0) {
		if (isset($albums['entries'][$preview_year])) {
			$preview_year_valid = true;
			$template->assign_var("PREVIEW_VALID", true);
		} else {
			$template->assign_vars(array(
				'PREVIEW_VALID'			=> false,
				'PREVIEW_INVALID_TEXT'	=>  sprintf($user->lang["PIC_INVALID_YEAR"], $preview_year)
			));
			$preview_year_valid = false;
		}	
	}else{
		$template->assign_var("PREVIEW_VALID", true);
		$preview_year_valid = false;
	}

	$max_years_on_page = 2;
	if($preview_year_valid){
		// show preview year
		$position = 'side'; // all other on the sidebar
	}else{
		// show default latest albums
		$position = 'page';
	}

	

	if($albums == null){
		$template->assign_vars(array(
			'ALBUM_FOUND'	=> false
		));
	}else{
		$template->assign_vars(array(
			'ALBUM_FOUND'	=> true
		));
		foreach ($albums['entries'] as $year => $albums_year)
		{

			if($preview_year_valid){
				$position = ($preview_year == $year && $preview_year_valid)? 'page' : 'side';
			}elseif($max_years_on_page <= 0)
			{ 
				$position = 'side'; 
			}
		    $template->assign_block_vars('albums_'.$position, array(
		        'YEAR'    => $year,
		        'ALBUMS_COUNT' => count($albums_year),
		        'PREVIEW_URL' => append_sid($phpbb_root_path.'gumbo/pictures.'.$phpEx, "p=" . $year)
		    ));

		    // each item within the year is assigned to the second block.
		    foreach ($albums_year as $key => $album)
		    {
		        $template->assign_block_vars('albums_'.$position.'.album', array(
		            'URL'          => append_sid($phpbb_root_path.'gumbo/pictures.'.$phpEx, "a=" . $album['id']),
		            'TITLE'        => $album['title'],
		            'TUMBNAIL_URL' => $album['thumbnail_url'],
		        ));
		    }
		    $max_years_on_page--;
		}
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
	page_header($user->lang['PICTURES']);
	
	$template->set_filenames(array(
		'body' => 'pictures.overview.html')
	);

	page_footer();

?>
