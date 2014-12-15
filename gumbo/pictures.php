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
	define('IN_PHPBB', true);
	$phpbb_root_path = (defined('PHPBB_ROOT_PATH')) ? PHPBB_ROOT_PATH : './../';
	$phpEx = substr(strrchr(__FILE__, '.'), 1);
	require_once($phpbb_root_path . 'gumbo/includes/class.googleplus.' . $phpEx);
	include_once($phpbb_root_path . 'common.' . $phpEx);


	// Start session management
	$user->session_begin();
	$auth->acl($user->data);
	$user->setup();
	global $db;


	$album = new googleplus('album');
    // --Set your userid and albumid here
    // --Example https://plus.google.com/u/0/photos/107220479963902311084/albums/5144980848872213393
    // --After photos/ is your userid and after albums is your albumid
    $album->set_userid('115209623445926663380');
    $album->set_albumid('6011837005474064769');
    // --Max results - 1000 is default
    $album->set_maxresults(1000);
    // --Set your thumbsize here
    $album->set_thumbsize(160);
    // --Set to crop thumbs or not - c = crop u = uncropped
    $album->set_cropping('c');
    // --Cache your xml for better performance true or false
    $album->set_cachexml(false);
    // --How long must the cach been saved (in seconds)
    $album->set_cachelife(86400);
    // --This part is the foreach list
    // --You can easily make your own output here
	//$data = $album->get_album();
	$albums = $album->get_albums();
	//var_dump($data);
	/*$albums = $data['album'];
	$total = $data['total'];
	$maxtotal = $data['maxtotal'];
	$albumtitle = $data['albumtitle'];
    $author = $data['name'];
    $url = $data['url'];

    
    foreach ($albums as $year => $year_album) {

		//var_dump($gValue['content']);
	    $template->assign_block_vars('fotos', array(
			'TITLE'    					=> $gValue['title']
		));
	}
	*/


	$max_years_on_page = 2;
	$position = 'page';
	foreach ($albums['entries'] as $year => $albums_year)
	{
		if($max_years_on_page <= 0){ $position = 'side'; }
	    // categories in this example are "food" and "animal"
	    $template->assign_block_vars('albums_'.$position, array(
	        'YEAR'    => $year,
	        'ALBUMS_COUNT' => count($albums_year)
	    ));

	    // each item within the year is assigned to the second block.
	    foreach ($albums_year as $key => $album)
	    {
	        $template->assign_block_vars('albums_'.$position.'.album', array(
	            'URL'          => append_sid($phpbb_root_path.'gumbo/album.'.$phpEx, "album=" . $album['id']),
	            'TITLE'        => $album['title'],
	            'TUMBNAIL_URL' => $album['thumbnail_url'],
	        ));
	    }
	    $max_years_on_page--;
	}



	/*
    if ( $albums !=null ) {
    	$template->assign_vars(array(
			'FOTOS_FOUND'	=> true
		));
    	$i = 0;

        foreach ($albums as $gKey => $gValue) {
    		//var_dump($gValue['content']);
            $template->assign_block_vars('fotos', array(
				'NAME'    					=> $gValue['title'],
				'URL'   					=> $gValue['content'] ,
			));
        }
    }else{
        $template->assign_vars(array(
			'FOTOS_FOUND'	=> false
		));
    }
*/
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
		'body' => 'pictures.html')
	);

	page_footer();

?>
