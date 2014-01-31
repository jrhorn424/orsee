<?php
ob_start();

$menu__area="mainpage";

include "header.php";

echo "<center>";

show_message();

echo content__get_content("mainpage_welcome");

echo "</center>";

include "footer.php";


?>
