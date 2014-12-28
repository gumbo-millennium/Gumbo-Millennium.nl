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
	define('IN_PICTURES', true);
	$phpbb_root_path = (defined('PHPBB_ROOT_PATH')) ? PHPBB_ROOT_PATH : './../';
	$phpEx = substr(strrchr(__FILE__, '.'), 1);
	require_once($phpbb_root_path . 'gumbo/includes/class.googleplus.' . $phpEx);
	include_once($phpbb_root_path . 'common.' . $phpEx);


	// Start session management
	$user->session_begin();
	$auth->acl($user->data);
	$user->setup();
	global $db;

	$album_uuid = request_var('a', "");
	$preview_year = request_var('p', 0);

	$googleAPI = new googleplus();
    // --Set your userid and albumid here
    // --Example https://plus.google.com/u/0/photos/107220479963902311084/albums/5144980848872213393
    // --After photos/ is your userid and after albums is your albumid
    $googleAPI->set_userid('115209623445926663380');
    // --Max results - 1000 is default
    $googleAPI->set_maxresults(1000);
    // --Set your thumbsize here
    $googleAPI->set_thumbsize(160);
    // --Set to crop thumbs or not - c = crop u = uncropped
    $googleAPI->set_cropping('c');
    // --Cache your xml for better performance true or false
    $googleAPI->set_cachexml(false);
    // --How long must the cach been saved (in seconds)
    $googleAPI->set_cachelife(86400);
    // --This part is the foreach list
    // --You can easily make your own output here
	//$data = $album->get_album();
    
	if($album_uuid != 0){
		include($phpbb_root_path . '/gumbo/pictures.album.' . $phpEx);
	}else{
		include($phpbb_root_path . '/gumbo/pictures.overview.' . $phpEx);
	}

	page_footer();

?>
