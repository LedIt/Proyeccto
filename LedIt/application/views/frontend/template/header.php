<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Title  -->
    <title>Led It</title>

    <!-- Favicon  -->
    <link rel="icon" class="fa fa-lightbulb-o" href="<?=base_url();?>libraries/img/icons/icon.png">

    <!-- Style CSS -->
    <link rel="stylesheet" type="text/css" href="<?=base_url();?>libraries/style.css"/>
    <link rel="stylesheet" type="text/css" href="<?=base_url();?>libraries/css/custom.css"/>
    <link rel="stylesheet" type="text/css" href="<?=base_url();?>libraries/css/main.css">
    <link rel="stylesheet" type="text/css" href="<?=base_url();?>libraries/scripts/wookmark/css/style.css"/> 
    <link rel="stylesheet" type="text/css" href="<?=base_url();?>libraries/scripts/yoxview/yoxview.css"/>
</head>

<body>
    <!-- Preloader -->
    <div id="preloader">
        <div class="south-load"></div>

    </div>
    <!-- ##### Header Area Start ##### -->
    <header class="header-area wow fadeInUp">
        <!-- Main Header Area -->
        <div class="main-header-area" id="stickyHeader">
            <div class="classy-nav-container breakpoint-off">
                <!-- Classy Menu -->
                <nav class="classy-navbar navbar justify-content-between nav" id="southNav">

                    <!-- Logo -->
                    <a class="nav-brand" href="<?=base_url();?>index.php/controlFront/index/1"><img src="<?=base_url();?>libraries/img/icons/ledit.png" width="80px" height="5px"> <i class="fa fa-lightbulb-o"></i></a>

                    <!-- Navbar Toggler -->
                    <div class="classy-navbar-toggler">
                        <span class="navbarToggler"><span></span><span></span><span></span></span>
                    </div>

                    <!-- Menu -->
                    <div class="classy-menu">

                        <!-- close btn -->
                        <div class="classycloseIcon">
                            <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                        </div>
                        <!-- Nav Start -->
                        <div class="classynav sobre-menu">
                            <ul>
                                <li><a href="<?=base_url();?>index.php/controlFrontEnd/index/1">Home</a></li>
                                <li><a href="<?=base_url();?>index.php/controlFrontEnd/index/2">Productos</a>
                                    <ul class="dropdown">
                                        <li><a href="<?=base_url();?>index.php/controlFrontEnd/index/2">Categoria 1</a></li>
                                        <li><a href="<?=base_url();?>index.php/controlFrontEnd/index/2">Categoria 2</a></li>
                                        <li><a href="<?=base_url();?>index.php/controlFrontEnd/index/2">Categoria 3</a></li>
                                        <li><a href="<?=base_url();?>index.php/controlFrontEnd/index/2">Categoria 4</a></li>
                                    </ul>
                                </li>
                                <li><a href="<?=base_url();?>index.php/controlFrontEnd/index/3">Galería</a></li>
                                <li><a href="<?=base_url();?>index.php/controlFrontEnd/index/4">FAQ</a></li>
                                <li><a href="<?=base_url();?>index.php/controlFrontEnd/index/5">Noticias</a></li>
                                <li><a href="<?=base_url();?>index.php/controlFrontEnd/index/6">Contacto</a></li>
                            </ul>
                            <!-- Search Form -->
                            <div class="south-search-form">
            
                                        <div style="border-radius: 30px;" class="top-header-area" id="search">
                                            <div class=" h-100 d-md-flex">



                                                <div style="border-radius: 30px;" class="align-items-center phone-number d-flex">
                                                    <div align="center" class="number sobre col-sm-12 col-xs-12 col-md-12">
                                                        <a class="col-sm-12 col-xs-12" href="<?=base_url();?>index.php/controlFrontEnd/index/1"><i class="fa fa-pencil"></i> Registrate</a>
                                                    </div>
                                                </div>



                                                 <div  class="phone-number d-flex">
                                                    <div align="center" class="number sobre col-sm-12 col-xs-12 col-md-12">
                                                        <a class="col-sm-12 col-xs-12" href="<?=base_url();?>index.php/controlBackEnd/index/1"><i class="fa fa-user"></i> Log-In</a>
                                                    </div>                                    
                                                </div>


                                                 <div style="border-radius:30px;" class="phone-number d-flex">
                                                    <div align="center" class="number sobre col-sm-12 col-xs-12 col-md-12">
                                                        <a  class="col-sm-12 col-xs-12" href="<?=base_url();?>index.php/controlFrontEnd/index/1"><i class="fa fa-shopping-cart"></i> Mi Carrito</a>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                            </div>
                            <!-- Search Button -->
                            <a href="#" class="searchbtn hidden-lg hidden-md"><i class="fa" aria-hidden="true"></i></a>
                        </div>
                        <!-- Nav End -->
                    </div>
                </nav>
                <!-- Inicio Botones usuario -->
                <div class="header-top">
                    <div class="container">
                        <div class="row align-items-center">
                            <div class="sobre col-lg-12 col-sm-12 col-12 header-top-right">
                                <a class="btns" href="#"><i class="fa fa-pencil"></i> Registrate</a>
                                <a class="btns" href="<?=base_url();?>index.php/controlBackEnd/index/1"><i class="fa fa-user"></i> Iniciar sesión</a>
                                <a class="btns" href="#"><i class="fa fa-shopping-cart"></i> Mi carrito</a>
                            </div>
                        </div>                              
                    </div>
            </div>
               <!-- Fin Botones usuario -->
        </div>
    </header>
     <!-- ##### Header Area End ##### -->