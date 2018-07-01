<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="<?=base_url();?>libraries/img/icons/icon.png">

   <title>LedIt | Admin</title>

    <!-- Bootstrap -->
    <link href="<?=base_url();?>libraries/libraries-backend/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="<?=base_url();?>libraries/libraries-backend/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="<?=base_url();?>libraries/libraries-backend/vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- iCheck -->
    <link href="<?=base_url();?>libraries/libraries-backend/vendors/iCheck/skins/flat/green.css" rel="stylesheet">
    <!-- Datatables -->
    <link href="<?=base_url();?>libraries/libraries-backend/vendors/datatables.net-bs/css/dataTables.bootstrap.min.css" rel="stylesheet">
    <link href="<?=base_url();?>libraries/libraries-backend/vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css" rel="stylesheet">
    <link href="<?=base_url();?>libraries/libraries-backend/vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css" rel="stylesheet">
    <link href="<?=base_url();?>libraries/libraries-backend/vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css" rel="stylesheet">
    <link href="<?=base_url();?>libraries/libraries-backend/vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css" rel="stylesheet">
    <!-- Custom Theme Style -->
    <link href="<?=base_url();?>libraries/libraries-backend/build/css/custom.css" rel="stylesheet">

    <?php
if (!$this->session->has_userdata('usuarios')) {
}
?>
  </head>

  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
        <div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
              <a href="<?=base_url();?>index.php/controlBackEnd/index/2" class="site_title"><i class="fa fa-lightbulb-o"></i> <span><img style="margin-left: 5%;" width="30%" src="<?=base_url();?>libraries/libraries-backend/images/ledit.png"></span></a>
            </div>

            <div class="clearfix"></div>

            <!-- menu profile quick info -->
            <div class="profile clearfix">
              <div class="profile_pic">
                <img src="<?=base_url();?>libraries/libraries-backend/images/img.jpg" alt="..." class="img-circle profile_img">
              </div>
              <div class="profile_info">
                <span>Bienvenido,</span>
                <h2><?=$this->session->userdata('usuarios').$this->session->userdata('id');?></h2>
              </div>

                <!-- /menu footer buttons -->
            <div class="sidebar-footer hidden-small">
                  <a data-toggle="tooltip" data-placement="top" title="Logout" href="<?=base_url();?>index.php/Usuario/logout"">
                    <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
                  </a>
                </div>
                <!-- /menu footer buttons -->
            </div>
            <!-- /menu profile quick info -->

            <br />

            <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                <ul class="nav side-menu">
                  <li><a><i class="fa fa-sitemap"></i> Panel de control <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a class="" href="<?=base_url();?>index.php/controlBackEnd/index/2">Ventas</a></li>
                      <li><a class="" href="<?=base_url();?>index.php/controlBackEnd/index/7">Productos</a></li>
                      <li><a class="" href="<?=base_url();?>index.php/controlBackEnd/index/2">Contactos</a></li>
                      <li><a class="" href="<?=base_url();?>index.php/controlBackEnd/index/4">FAQ'S</a></li>
                      <li><a class="" href="<?=base_url();?>index.php/controlBackEnd/index/6">Usuarios</a></li>
                      <li><a class="" href="<?=base_url();?>index.php/controlBackEnd/index/3">Galería</a></li>
                      <li><a class="" href="<?=base_url();?>index.php/controlBackEnd/index/5">Noticias</a></li>
                      <li><a class="" href="<?=base_url();?>index.php/controlBackEnd/index/8">Categorías</a></li>
                    </ul>
                  </li>
                </ul>
              </div>

            </div>
            <!-- /sidebar menu -->

          
          </div>
        </div>

        <!-- top navigation -->
        <div class="top_nav">
          <div class="nav_menu">
            <nav>
              <div class="nav toggle">
                <a id="menu_toggle"><i class="fa fa-bars"></i></a>
              </div>

              <ul class="nav navbar-nav navbar-right">
                <li class="">
                  <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                    <img src="<?=base_url();?>libraries/libraries-backend/images/img.jpg" alt=""><?=$this->session->userdata('usuarios').$this->session->userdata('id');?>
                    <span class=" fa fa-angle-down"></span>
                  </a>
                  <ul class="dropdown-menu dropdown-usermenu pull-right">
                    <li><a href="<?=base_url();?>index.php/Usuario/logout""><i class="fa fa-sign-out pull-right"></i> Log Out</a></li>
                  </ul>
                </li>

              </ul>
            </nav>
          </div>
        </div>
        <!-- /top navigation -->