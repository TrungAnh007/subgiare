
<?php require('config/function.php');if($NTD->site('bao_tri')=="OFF"){
    header('Location: /bao_tri');exit;
}
/*<!-- Dev By PQNIT.ASIA | FB.COM/NHATCSS.IT | ZALO.ME/0375343460 | MMO Solution -->*/

if($NTD->check_ip(getip())=="block"){
   header('Location: /BAND-IP');exit;
}
if($NTD->site('status')=="Band"){
    header('Location: /Band');exit;
}
?>
	<?php require('config/head.php');
 if(empty($_SESSION['username'])){header('Location: /Login');exit;}?>
	<title>Trang Chủ</title>
	<script type="b9e3e84309a92aaf852234bf-text/javascript">
    const profile = {
        "id": "<?=$NTD->getUsers('id');?>",
        "fullname": "<?=$NTD->getUsers('name');?>",
        "email": "<?=$NTD->getUsers('email');?>",
        "username": "<?=$NTD->getUsers('username');?>",
        "coin": "<?=$NTD->getUsers('money');?>",
        "level": "<?=$level;?>",
        "blocked": "<?php if($NTD->getUsers('banned') == 0){echo 'false';}else{echo 'true';}?>",
        "detail_blocked": "<?php if($NTD->getUsers('banned') == 0){echo 'Active';}else{echo 'Block';}?>",
        "api_token": "<?=$NTD->getUsers('token');?>",
        "created_at": "<?=$NTD->getUsers('date');?>",
        "updated_at": "<?=$NTD->getUsers('lastdate');?>",
        "website": [],
        "avatar": "<?=$NTD->site('logo_user');?><?=$NTD->getUsers('username');?>",
        "isAdmin": "<?php if($NTD->getUsers('capbac') == 3){echo 'true';}else{echo 'false';}?>",
        "position": "<?=levelmem($NTD->getUsers('capbac'));?>",
        "levelMember": "<?=levelmem($NTD->getUsers('capbac'));?>",
        "codeRecharge": "<?=$NTD->getUsers('cuphap');?>",
        "loaded": "<?=$NTD->getUsers('tongnap');?>",
        "pepper": "<?=$NTD->getUsers('tongtru');?>",
        "statusAccount": "<?php if($NTD->getUsers('banned') == 0){echo 'Active';}else{echo 'Block';}?>"
    };
    const setting = {
        "title": "Hệ thống dịch vụ mạng xã hội Facebook | Instagram | Youtube | Tiktok | <?=$NTD->site('ten_website');?>",
        "domain": "<?=$NTD->site('ten_website');?>",
        "keyword": "like, sub, share, vip like, buff m\u1eaft, t\u0103ng follow, mua like, mua sub, sub r\u1ebb, hack like, hack sub, hack follow, t\u0103ng like, t\u0103ng follow, t\u0103ng share, t\u0103ng comment, ch\u00e9o like, ch\u00e9o sub, shop sub",
        "fullname_admin": "<?=$NTD->site('full_name_admin');?>",
        "fb_admin": "<?=$NTD->site('facebook');?>",
        "zalo_admin": "https:\/\/zalo.me\/<?=$NTD->site('phone_zalo');?>",
        "modal_system": "H\u1ec7 th\u1ed1ng ho\u00e0n to\u00e0n t\u1ef1 \u0111\u1ed9ng h\u00f3a 100%, t\u1ef1 \u0111\u1ed9ng n\u1ea1p ti\u1ec1n (n\u1ea1p \u00edt nh\u1ea5t 10k, n\u1ea1p sai n\u1ed9i dung tr\u1eeb 10% ph\u00ed). Ch\u00fac b\u1ea1n s\u1eed d\u1ee5ng d\u1ecbch v\u1ee5 vui v\u1ebb nh\u00e9."
    };
</script>
	<?php require('config/nav.php');?>
        <div class="layout-wrapper">
<div class="header">
<div class="menu-toggle-btn">
<a href="#">
<i class="bi bi-list"></i>
</a>
<link href="https://fonts.googleapis.com/css2?family=Oswald:wght@300;500&family=Roboto+Condensed&display=swap" rel="stylesheet">
    <style>
      body {
        font-family: 'Oswald', swap;
      }
    </style>
</div>
<a href="/home" class="logo">
<img width="130" src="<?=$NTD->site('logo');?>" alt="logo">
</a>
<div class="page-title">Trang chủ</div>
<form class="search-form">
<div class="input-group">
<span class="input-group-text">
<i class="bi bi-search"></i>
</span>
<input type="text" class="form-control" placeholder="Nhập từ khóa tìm kiếm...">
<a href="#" class="btn btn-outline-light close-header-search-bar">
<i class="bi bi-x"></i>
</a>
</div>
</form>
<div class="header-bar ms-auto">
<ul class="navbar-nav justify-content-end gap-3">
<li class="nav-item">
<a href="#" class="nav-link nav-link-notify" data-count="2" data-sidebar-target="#notifications">
<i class="bi bi-bell icon-lg"></i>
</a>
</li>
<li>
<a href="#" data-bs-toggle="dropdown" class="btn btn-white py-1 px-2 dropdown-toggle custom-shadow">
<span class="avatar avatar-sm me-2">
<img src="https://ui-avatars.com/api/?background=random&amp;name=<?=$NTD->getUsers('name');?>" class="rounded-circle" alt="avatar">
</span>
<span class="d-none d-md-inline"><?=$NTD->getUsers('name');?></span>
</a>
<ul class="dropdown-menu">
<li><a class="dropdown-item" href="/Profile">Tài khoản của tôi</a>
</li>
<li>
<hr class="dropdown-divider">
</li>
<li><a class="dropdown-item" href="/Logout">Đăng xuất</a></li>
</ul>
</li>
</ul>
</div>
<div class="header-mobile-buttons">
<a href="#" class="search-bar-btn">
<i class="bi bi-search"></i>
 </a>
<a href="#" class="actions-btn">
<i class="bi bi-three-dots"></i>
</a>
<!-- Dev By PQNIT.ASIA | FB.COM/NHATCSS.IT | ZALO.ME/0375343460 | MMO Solution -->

</div>
</div>
<div class="content">
<div class="row">
<div class="col-lg-9 col-xlg-9 col-md-7">
<div class="row">
<div class="col-md-4 col-12">
<div class="card mb-4">
<div class="card-body d-flex flex-column text-center gap-2">
<div class="display-7">
<i class="fa fa-money text-success"></i>
</div>
<div class="lead">Số dư <b class="text-danger"><?=format_money($NTD->getUsers('money'));?></b> đ</div>
</div>
</div>
</div>
<div class="col-md-4 col-12">
<div class="card mb-4">
<div class="card-body d-flex flex-column text-center gap-2">
<div class="display-7">
<i class="fa fa-money text-primary"></i>
</div>
<div class="lead">Đã nạp <b class="text-danger"><?=format_money($NTD->getUsers('tongnap'));?></b> đ</div>
</div>
</div>
</div>
<div class="col-md-4 col-12">
<div class="card mb-4">
<div class="card-body d-flex flex-column text-center gap-2">
<div class="display-7">
<i class="fa fa-money text-info"></i>
</div>
<div class="lead">Đã tiêu <b class="text-danger"><?=format_money($NTD->getUsers('tongtru'));?></b> đ</div>
</div>
</div>
</div>
</div>
<div class="home-notification mb-3">
     <?php foreach ($NTD->get_list("SELECT * FROM `note_thongbao`  WHERE `url_config` = '".$url_site_name."' ORDER BY `id` DESC") as $rownoti){?>
<div class="d-flex flex-column comment-section mb-1">
<div class="card mb-3">
<div class="card-body">
<div class="d-flex mb-3">
<div class="d-flex">
<figure class="avatar me-3">
<?php
if($url_site_name!==$URL_ADMIN){ ?>
<img src="https://graph.facebook.com/<?=$NTD->site('id_page');?>/picture?width=100&height=100&access_token=6628568379|c1e620fa708a1d5696fb991c1bde5662" class="rounded-circle" alt="...">
<?php }?>
<?php
if($url_site_name==$URL_ADMIN){ ?>
<img src="https://graph.facebook.com/<?=$NTD->site('id_page');?>/picture?width=100&height=100&access_token=6628568379|c1e620fa708a1d5696fb991c1bde5662" class="rounded-circle" alt="...">
<?php }?>
</figure>
<div>
    <?=$NTD->site('full_name_admin');?> 
<div>
<small class="text-muted"><?=$rownoti['date']?></small>
</div>
</div>
</div>
</div>
<p><?=$rownoti['noidung']?></p>
<div class="d-flex gap-1 mt-4">
<a href="#" class="btn btn-white btn-icon" title="" data-bs-toggle="tooltip" data-bs-original-title="Like">
<i class="bi bi-heart-fill text-danger"></i> <?=rand(1,9999);?>
</a>
<a href="#" class="btn btn-white btn-icon" title="" data-bs-toggle="tooltip" data-bs-original-title="Comments">
<i class="bi bi-chat-dots"></i> <?=rand(1,10);?>
</a>
<a href="#" class="btn btn-white btn-icon" title="" data-bs-toggle="tooltip" data-bs-original-title="Share">
<i class="bi bi-share"></i> <?=rand(1,9999);?>
</a>
</div>
</div>
</div>
</div>
<?php }?>
</div>
</div>
<div class="col-lg-3 col-xlg-3 col-md-5">
<div class="row">
<div class="col-md-12">
    <div class="card mb-4">
        <div class="card-body">
            <div class="ribbon-title ribbon-primary">Nâng VIP</div>
            <div class="mt-4">
                <center><img src="/assets/images2/svg/vip.svg" alt="" width="80" height="80">
                </center>
                <div class="text-center mb-3">
                    <h5>
                        Nâng cấp bậc!
                    </h5>
                    <p class="text-soft">Bạn sẽ nhận được nhiều ưu hơn hơn như: giảm giá dịch vụ, tạo website riêng, hỗ trợ ...</p>
                </div>
                <div class="d-grid gap-2 col-6 mx-auto">
                    <a href="/Nang-Cap" class="btn btn-success">Nâng ngay nào!</a>
                </div>
            </div> 
            <!-- Dev By PQNIT.ASIA | FB.COM/NHATCSS.IT | ZALO.ME/0375343460 | MMO Solution -->

        </div>
    </div>
</div>
<?php
$total_don_ = $NTD->get_row("SELECT COUNT(*) FROM `history_buy`  WHERE  `url_config` = '".$url_site_name."' AND `username` = '".$my_user."' ") ['COUNT(*)'];
$total_don_chay = $NTD->get_row("SELECT COUNT(*) FROM `history_buy`  WHERE  `url_config` = '".$url_site_name."' AND `username` = '".$my_user."'  AND `status` = 'Start' ") ['COUNT(*)'];
$total_don_done= $NTD->get_row("SELECT COUNT(*) FROM `history_buy`  WHERE  `url_config` = '".$url_site_name."' AND `username` = '".$my_user."'  AND `status` = 'Success' ") ['COUNT(*)'];
$total_don_huy= $NTD->get_row("SELECT COUNT(*) FROM `history_buy`  WHERE  `url_config` = '".$url_site_name."' AND `username` = '".$my_user."'  AND `status` = 'Pause' ") ['COUNT(*)'];

$ti_le_don=($total_don_huy+$total_don_done)/$total_don_*100;



?>
<div class="col-md-12">
    <div class="card mb-4">
        <div class="card-body">
            <div class="ribbon-title ribbon-primary">Thống kê &amp; tiến trình đơn</div>
            <div class="mt-4">
                <div class="row">
                    <div class="col-md-6">
                        <div class="card overflow-hidden mb-3 bg-warning text-white">
                            <div class="card-body position-relative text-center">
                                <div class="display-4 fs-3 mb-2 font-weight-normal font-sans-serif text-dark">
                                    <?=$total_don_;?></div>
                                <h6 class="ml-1">Đơn đã mua</h6>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="card overflow-hidden mb-3 bg-info text-white">
                            <div class="card-body position-relative text-center">
                                <div class="display-4 fs-3 mb-2 font-weight-normal font-sans-serif text-dark">
                                    <?=$total_don_chay;?></div>
                                <h6 class="ml-1">Đơn đang chạy</h6>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="card overflow-hidden mb-3 bg-success text-white">
                            <div class="card-body position-relative text-center">
                                <div class="display-4 fs-3 mb-2 font-weight-normal font-sans-serif text-dark">
                                    <?=$total_don_done;?></div>
                                <h6 class="ml-1">Đơn hoàn thành</h6>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="card overflow-hidden mb-3 bg-danger text-white">
                            <div class="card-body position-relative text-center">
                                <div class="display-4 fs-3 mb-2 font-weight-normal font-sans-serif text-dark">
                                    <?=$total_don_huy;?></div>
                                <h6 class="ml-1">Đơn đã hủy</h6>
                            </div>
                        </div>
                    </div>
                    <style>
  .page_speed_300933960 {
    width: <?=$ti_le_don;?>%;
}
</style>


                    <div class="col-md-12">
                        <div class="progress">
                            <div role="progressbar" aria-valuenow="<?=$ti_le_don;?>" aria-valuemin="0" aria-valuemax="100" class="progress-bar page_speed_300933960"><?=$ti_le_don;?>%</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
</div>
</div>
         
             
<div class="modal fade" id="modalSystem" tabindex="-1" role="dialog" aria-labelledby="modalSystemLabel" aria-hidden="true">
<div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
<div class="modal-body">
<center>
<img src="/assets/images/notification.svg" alt="" width="90">
</center>
<style>
    .anh-thogn-bao-css {
    margin-bottom: 20px;
}
.text-thong-bao-sss {
    margin-left: 10px;
}
</style>
<div class="pt-3 text-center">
<h3>Thông báo hệ thống</h3>
</div>
 <img class="anh-thogn-bao-css" src="<?=$NTD->site('anh_thong_bao');?>" style="width: 100%;">   <br>
<p class="text-thong-bao-sss"><?=$NTD->site('thongbao');?></p>
<div class="d-grid gap-2">
<button type="button" class="btn btn-danger" data-bs-dismiss="modal">Đóng thông báo</button>
</div>
</div>
</div>

</div>
</div>
<!-- Dev By PQNIT.ASIA | FB.COM/NHATCSS.IT | ZALO.ME/0375343460 | MMO Solution -->

	<?php require('config/end.php');?>