<?php

// Settings


// Web server document root, e.g. /srv/www/htdocs
// no trailing slash!
$settings__root_to_server="/home/jrhorn424/public/recruiter.ices-experiments.org";


// Experiment system root relative to server root, e.g. /orsee
// begins always with "/" if in a subdirectory
// no trailing slash!
$settings__root_directory="";

// url to web server document root
// without trailing slash and the http://!
$settings__server_url="recruiter.ices-experiments.org";

// Database configuration. Don't forget to create the database
$site__database_host="localhost";
$site__database_database="recruiter";
$site__database_admin_username="jrhorn424";
$site__database_admin_password="mysupersecretpassword";
$site__database_type="mysql";
$site__database_table_prefix="or_";

// If this is set to "y", the admin site is not reachable for nobody
// This is useful for some database procedures
$settings__stop_admin_site="n";

?>
