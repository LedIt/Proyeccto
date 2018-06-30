<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
  <meta name="author" content="GeeksLabs">
  <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">

  <link rel="shortcut icon" href="<?=base_url();?>libraries/img/icons/icon.png">

  <title>LedIt | Admin</title>

  <!-- Bootstrap CSS -->
  <link href="<?=base_url();?>libraries/libraries-backend/css/bootstrap.min.css" rel="stylesheet">
  <!-- bootstrap theme -->
  <link href="<?=base_url();?>libraries/libraries-backend/css/bootstrap-theme.css" rel="stylesheet">
  <!--external css-->
  <!-- font icon -->
  <link href="<?=base_url();?>libraries/libraries-backend/css/elegant-icons-style.css" rel="stylesheet" />
  <link href="<?=base_url();?>libraries/libraries-backend/css/font-awesome.min.css" rel="stylesheet" />
  <!-- full calendar css-->
  <link href="<?=base_url();?>libraries/libraries-backend/assets/fullcalendar/fullcalendar/bootstrap-fullcalendar.css" rel="stylesheet" />
  <link href="<?=base_url();?>libraries/libraries-backend/assets/fullcalendar/fullcalendar/fullcalendar.css" rel="stylesheet" />
  <!-- easy pie chart-->
  <link href="<?=base_url();?>libraries/libraries-backend/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.css" rel="stylesheet" type="text/css" media="screen"/>
  <!-- owl carousel -->
  <link href="<?=base_url();?>libraries/libraries-backend/css/owl.carousel.css" type="text/css" rel="stylesheet">
  <link href="<?=base_url();?>libraries/libraries-backend/css/jquery-jvectormap-1.2.2.css" rel="stylesheet">
  <!-- Custom styles -->
  <link href="<?=base_url();?>libraries/libraries-backend/css/fullcalendar.css" rel="stylesheet" >
  <link href="<?=base_url();?>libraries/libraries-backend/css/widgets.css" rel="stylesheet">
  <link href="<?=base_url();?>libraries/libraries-backend/css/style.css" rel="stylesheet">
  <link href="<?=base_url();?>libraries/libraries-backend/css/style-responsive.css" rel="stylesheet" />
  <link href="<?=base_url();?>libraries/libraries-backend/css/xcharts.min.css" rel=" stylesheet">
  <link href="<?=base_url();?>libraries/libraries-backend/css/jquery-ui-1.10.4.min.css" rel="stylesheet">
</head>
<body>
  <!-- container section start -->
  <section id="container" class="">
    <header class="header dark-bg">
      <div class="toggle-nav">
        <div class="icon-reorder tooltips" data-original-title="Ocultar/Mostrar Menu" data-placement="bottom"><i class="icon_menu"></i></div>
      </div>

      <!--logo start-->
      <a href="index.html" class="logo hidden-sm hidden-xs">Led It<span class="lite"> Admin</span></a>
      

      <!--logo end-->

<?php
if(!$this->session->has_userdata('usuarios')){
//echo "todo mal";

}
?>
      <!-- notificatoin dropdown start-->
      <div  class="top-nav">
        <ul class="nav pull-right top-menu">
          <!-- user login dropdown start-->
          <li class="dropdown">

            <a data-toggle="dropdown" class="dropdown-toggle">
                            <span class="profile-ava">
                                <img width="20%" src="<?=base_url();?>libraries/libraries-backend/img/chat-avatar2.jpg">
                            </span>
                            <span class="username">Revoltech</span>
                            <b class="caret"></b>
            </a>

            <ul class="dropdown-menu extended logout">
              <div class="log-arrow-up"></div>
              <li class="eborder-top">
                <a href="#"><i class="icon_profile"></i> My Profile</a>
              </li>
              <li>
                <a href="<?=base_url();?>index.php/Usuario/logout"><i class="icon_key_alt"></i> Log Out</a>
              </li>
              <li>
              </li>
             
            </ul>
          </li>
          <!-- user login dropdown end -->
        </ul>
        <!-- notificatoin dropdown end-->
      </div>
    </header>
    <!--header end-->
    
    
    <!--sidebar start-->
    <aside>
      <div id="sidebar" class="nav-collapse ">
        <!-- sidebar menu start-->
        <ul class="sidebar-menu">
          <li class="active">
            <a href="<?=base_url();?>index.php/controlBackEnd/index/2">
                          <i class="icon_house_alt"></i>
                          <span>Panel de Control</span>
                      </a>
          </li>
          <li class="sub-menu">
            <a href="javascript:;" class="">
                          <i class="icon_table"></i>
                          <span>Módulos</span>
                          <span class="menu-arrow arrow_carrot-right"></span>
                      </a>
            <ul class="sub">
              <li><a class="" href="<?=base_url();?>index.php/controlBackEnd/index/2">Ventas</a></li>
              <li><a class="" href="<?=base_url();?>index.php/controlBackEnd/index/2">Productos</a></li>
              <li><a class="" href="<?=base_url();?>index.php/controlBackEnd/index/2">Contactos</a></li>
              <li><a class="" href="<?=base_url();?>index.php/controlBackEnd/index/3">FAQ'S</a></li>
              <li><a class="" href="<?=base_url();?>index.php/controlBackEnd/index/2">Usuarios</a></li>
              <li><a class="" href="<?=base_url();?>index.php/controlBackEnd/index/4"">Galeria</a></li>
              <li><a class="" href="<?=base_url();?>index.php/controlBackEnd/index/5"">Noticias</a></li>
              <li><a class="" href="<?=base_url();?>index.php/controlBackEnd/index/2"">Categorías</a></li>
            </ul>
          </li>
        </ul>
        <!-- sidebar menu end-->
      </div>
    </aside>
    <!--sidebar end-->




