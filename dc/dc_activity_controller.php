<?php
define('IN_PHPBB', true);
$phpbb_root_path = (defined('PHPBB_ROOT_PATH')) ? PHPBB_ROOT_PATH : './../';
$phpEx = substr(strrchr(__FILE__, '.'), 1);
include($phpbb_root_path . 'common.' . $phpEx);
include($phpbb_root_path . 'includes/functions_user.' . $phpEx);
include($phpbb_root_path . 'includes/functions_display.' . $phpEx
include_once($phpbb_root_path . 'dc/dc_functions.' . $phpEx);

// Start session management
$user->session_begin();
$auth->acl($user->data);
$user->setup('mods/dc_activity');
/*
if (!$auth->acl_get('dc_ismember'))
{
     trigger_error('NOT_AUTHORISED');
}
*/


page_header('activity');

print("user id: ". $user->data['user_id']);
print("<br/ >user id: ". $user->data['username']);
print ("<br/><a href=". append_sid($phpbb_root_path.'dc/dc_activity_controller.'.$phpEx) .">clean link </a>");
include ($phpbb_root_path . 'dc/dc_activity_user_class.' . $phpEx);
include ($phpbb_root_path . 'dc/dc_activity_class.' . $phpEx);
// my code

// maak een gebruiker activity controller
$activitys_controller = new activity_user();
// kijg een lijst van alle activiteiten
$fullList = $activitys_controller->get_full_list_active($user->data['user_id']);
foreach ($fullList as $category => $item_ary)
{
    $template->assign_block_vars('block1', array(
        'CATEGORY'    => $category,
    ));

    // each item within the category is assigned to the second block.
    foreach ($item_ary as $key => $item)
    {
        $template->assign_block_vars('block1.block2', array(
            'ITEM'        => $item,
            'ITEM_NUM'    => $key,
        ));
    }
}

// kijg een activiteit 
$activity = $activitys_controller->get_activity(1);
$template->assign_var('NAME', $activity->getName());

// alt je wilt inschrijven
if(isset($_GET['enroll'])){
	$enroll = $activity->set_user_status($user->data['user_id'], $user->ip, "hallo dit is henk ', henk = henk", "yes");
	if($enroll){
		$template->assign_var('ENROLL', "Ingeschreven");
	}else{
		$template->assign_var('ENROLL', "Error");
	}
}else{
	$template->assign_var('ENROLL', "Niet uitgevoerd");
}


// als je wilt uitschrijven
if(isset($_GET['disroll'])){
	$disroll = $activity->set_user_status($user->data['user_id'], $user->ip, "hallo dit is henk", "no");
	if($disroll){
		$template->assign_var('DISROLL', "Uitgescheven");
	}else{
		$template->assign_var('DISROLL', "Error");
	}
}else{
	$template->assign_var('DISROLL', "Niet uitgevoerd");
}

// de ingescheven mensen een activiteit
if(($activity_enrolled = $activity->get_all_status("yes")) != 0 ){
	foreach ($activity_enrolled as $id => $value)
	{
		$template->assign_block_vars('enrolled', array(
			'USER_ID'    => $id,
			'USER_LINK'	=>	append_sid($phpbb_root_path.'memberlist.'.$phpEx, "mode=viewprofile&u=". $id),
			'USER_NAME'    => $value['username'],
		));
	}
}

// een check of de huidige persoon in ingescheven
$activity_user_enrolled = $activity->get_user_status($user->data['user_id']);
$template->assign_var('USER_ENROLLED', $activity_user_enrolled);

// een lijst ophalen van user met toegang om aan te passen
if( $user_manage = $activity->get_user_manage_list("enable")){
	foreach ($user_manage as $user_id => $created)
	{

		$template->assign_block_vars('acces', array(
			'USER_ID'    => $user_id,
			'CREATED'    => $created,
		));
	}
}else{
	$template->assign_var('USER_MANAGE_ERROR', "Verkeerde status");
}

// verander user manage
if(isset($_GET['acces'])){
	$acces = $_GET['acces'];
	if( $activity->set_user_manage($user->data['user_id'], $acces )){
		$template->assign_var('USER_MANAGE', "aangepast");
	}else{
		$template->assign_var('USER_MANAGE', "Error");
	}
}else{
	$template->assign_var('USER_MANAGE', "Niet uitgevoerd");
}

// add to chance log
//print ($activity->set_chance_log($user->data['user_id'], $user->ip, "dit is een test of deze fucntie werkt !@#$%^&*():|{}?"));

// chance list ophalen
if( $chance_list = $activity->get_chance_list()){
	foreach ($chance_list as $id => $values)
		{
			$template->assign_block_vars('chance_list', array(
					'USER_ID'    => $values['user_id'],
					'CREATED'    => $values['datetime'],
					'MOD'   	 => $values['modification'],
			));
		}
}else{
	$template->assign_var('CHANCE_LIST_ERROR', "EEN ERROR");
}

// verander group acces
if(isset($_GET['group_acces'])){
	$acces = $_GET['group_acces'];
	if( $activity->change_group_acces(5, $acces)){
		$template->assign_var('GROUP_ACCES', "aangepast");
	}else{
		$template->assign_var('GROUP_ACCES', "Error");
	}
}else{
	$template->assign_var('GROUP_ACCES', "Niet uitgevoerd");
}

/////////////////////////////////////////////////////
/////////////// user acces by group /////////////////
/////////////////////////////////////////////////////

if(group_memberships(5,$user->data['user_id']))
	print "<br>is in groep administators";
	
// get a list of all groep how have acces
print ("<br>All acces groeps: ");
print_r($activity->get_group_acces_list("enable"));

// user group list
print ("<br>all user groups: ");
print_r (all_user_groups($user->data['user_id']));


// kijk of een user toegang heeft to deze activiteit
$toegang = "<BR>User heeft geen toegang";
if($activity->user_acces($user->data['user_id']))
	$toegang = "<BR>User heeft toegang";
print($toegang);

// controleer zoeken
print("<br> de zoek functie: ");
foreach($activitys_controller->search(2, "google", new DateTime("now"), new DateTime("5-5-2030"), 1, "enter") AS $key => $value){
	print( "<br>" . $value->getName() );
}
////////////////////// end ////////////////////////////////////////////

// get error list
//print "<br> de error list:";
//print_r($activity->get_error_list());
/*
$date1 = new DateTime('03/27/2012 23:59:59');
$now = new DateTime("now");
print "<br>".$now->format( 'd-m-Y' );
if ($now instanceof DateTime) {
  print "<br />now is een dateTime";
}



if($date1 > new DateTime("now")){
	print ("<br>" . $date1->getTimestamp() . " is groter ");
}
*/
$new = new activity();

//print ("<br> " . preg_replace( "/[a-zA-Z,]/","","Hallo dit is HENK 1234567890 ,./!<>?:'\|{,}@#$,.%<hen,k>,^&*()_,+ <noscript>"));

$new->setName("De google website");
$new->setDescription("[b]Gatus henk!![/b] :evil:  :lol:  :roll:  :?:  :idea:   [url=http://www.google.nl]gratus henk[/url]
en hier hebben we nog een enter en nog weat meer



 hallo cool dit!");
$new->setStartDatetime(new DateTime("5-5-2013"));
$new->setStopDatetime(new DateTime("5-6-2013"));
$new->setEnroll(true);
$new->setEnrollDateTime(new DateTime("5-4-2013"));
$new->setEnrollMax(20);
$new->setPrice(60.70);
$new->setPriceMember(10.00);
$new->setLocation("Op het balkon bij plaza");
$new->setCategory(5);
$new->setPayOption("contant");
$new->setCommission(5);
$new->setActive(1);
//$new->save();

// set disroll/enroll/enable acces / disable acces/clean urls
$template->assign_vars(array(
    'URL_DISROLL'    => append_sid($phpbb_root_path.'dc/dc_activity_controller.'.$phpEx, "disroll=true"),
    'URL_ENROLL'    => append_sid($phpbb_root_path.'dc/dc_activity_controller.'.$phpEx, "enroll=true"),
    'URL_ENABLE_ACCES'    => append_sid($phpbb_root_path.'dc/dc_activity_controller.'.$phpEx, "acces=enable"),
    'URL_DISABLE_ACCES'    => append_sid($phpbb_root_path.'dc/dc_activity_controller.'.$phpEx, "acces=disable"),
	'URL_ENABLE_GROUP_ACCES'    => append_sid($phpbb_root_path.'dc/dc_activity_controller.'.$phpEx, "group_acces=enable"),
    'URL_DISABLE_GROUP_ACCES'    => append_sid($phpbb_root_path.'dc/dc_activity_controller.'.$phpEx, "group_acces=disable"),
    'URL_CLEAN'    => append_sid($phpbb_root_path.'dc/dc_activity_controller.'.$phpEx)
));


// set template
$template->set_filenames(array(
    'body' => 'dc_activity_user.html',
));

make_jumpbox(append_sid("{$phpbb_root_path}viewforum.$phpEx"));
page_footer();
?>