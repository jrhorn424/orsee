<?php

include ("../config/settings.php");
include ("../config/system.php");
include ("../config/requires.php");

	site__database_config();

	$settings=load_settings();
	$settings['style']=$settings['orsee_admin_style'];
	$color=load_colors();

	session_set_save_handler("orsee_session_open", 
				 "orsee_session_close", 
				 "orsee_session_read", 
				 "orsee_session_write", 
				 "orsee_session_destroy", 
				 "orsee_session_gc");

	session_start();

	$expadmindata=$_SESSION['expadmindata'];

	$document=thisdoc();

	if ($settings__stop_admin_site=="y" && $document!="error_temporaly_disabled.php") 
		redirect("errors/error_temporaly_disabled.php");


	// Check for login
	if ((!$expadmindata['adminname']) && ($document!="admin_login.php")) 
		redirect ("admin/admin_login.php"); 


	if (isset($_REQUEST['new_language'])) {
		$expadmindata['language']=$_REQUEST['new_language'];
		$_SESSION['expadmindata']=$expadmindata;
		}

	if (!isset($expadmindata['language'])) 
		$expadmindata['language']=$settings['admin_standard_language'];

	$authdata['language']=$expadmindata['language'];
	$_SESSION['authdata']=$authdata;

	$lang=load_language($expadmindata['language']);

	$pagetitle=$settings['default_area'].': '.$title;

	html__header();
	include ("../style/".$settings['style']."/html_header.php");

	echo "<center>";

		show_message();

	echo "</center>";

?>
