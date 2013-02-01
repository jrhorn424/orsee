<?php
ob_start();
$menu__area="docs";
include ("../public/header.php");

echo '<BR><BR>
  <center>
    <BR>
    <TABLE width=80%><TR><TD>';
  echo content__get_content("documentation");
  echo '
    </TD></TR></TABLE>

    </center>';

include ("../public/footer.php");

?>
