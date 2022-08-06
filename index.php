

<?php require('config/function.php');
$status_site = $NTD->get_row(" SELECT * FROM `setting` WHERE `url_config` = '" . $url_site_name . "'
");
if ($status_site['status'] == "wait") {
  if ($NTD->check_ip(getip()) == "block") {
    header('Location: /BAND-IP');
    exit;
  }
  require('pages/active.php');
} else {

  if (isset($_SESSION['username'])) {
    header('Location: /home');
    exit;
  }
  if ($NTD->site('bao_tri') == "OFF") {
    header('Location: /bao_tri');
    exit;
  }
  if ($NTD->site('status') == "Band") {
    header('Location: /Band');
    exit;
  }
  if ($themes_landing == "rand") {
    $rand = rand(1, 4);
    require("pages/landing-v$rand.php");
  } elseif ($themes_landing == "1") {
    require("pages/landing-v1.php");
  } elseif ($themes_landing == "2") {
    require("pages/landing-v2.php");
  } elseif ($themes_landing == "3") {
    require("pages/landing-v3.php");
  } elseif ($themes_landing == "4") {
    require("pages/landing-v4.php");
  } elseif ($themes_landing == "5") {
    require("pages/landing-v5.php");
  }
} ?>
