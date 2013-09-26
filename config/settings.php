<?php

// Load the appropriate settings file.

$host = gethostname();

if ($host == "smith")
  {
    include("settings-production.php");
  } else {
    include("settings-staging.php");
  }

?>
