<?php
ob_start();
$title="ORSEE Documentation";
$menu__area="docs";
include ("../admin/header.php");

echo '<BR><BR>
  <center>
    <BR>
    <TABLE width=80%><TR><TD>';
  echo content__get_content("documentation");
  echo '
    </TD></TR></TABLE>

    </center>';

include ("../admin/footer.php");

?>
