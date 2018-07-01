<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
  <meta name="author" content="GeeksLabs">
  <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
  <link rel="shortcut icon" href="<?=base_url();?>libraries/img/icons/icon.png">
  <title>LedIt | Login</title>
  <!-- Bootstrap CSS -->
  <link href="<?=base_url();?>libraries/libraries-backend/css/bootstrap.min.css" rel="stylesheet">
  <!-- bootstrap theme -->
  <link href="<?=base_url();?>libraries/libraries-backend/css/bootstrap-theme.css" rel="stylesheet">
  <!--external css-->
  <!-- font icon -->
  <link href="<?=base_url();?>libraries/libraries-backend/css/elegant-icons-style.css" rel="stylesheet" />
  <link href="<?=base_url();?>libraries/libraries-backend/css/font-awesome.css" rel="stylesheet" />
  <!-- Custom styles -->
  <link href="<?=base_url();?>libraries/libraries-backend/css/style.css" rel="stylesheet">
  <link href="<?=base_url();?>libraries/libraries-backend/css/style-responsive.css" rel="stylesheet" />
</head>


<body class="login-img3-body">
  <div class="container">
    <form class="login-form" action="<?=base_url().'index.php/Usuario/login';?>"  method="POST">
      <div class="login-wrap">
        <p class="login-img"><i class="icon_lock_alt"></i></p>
        <div class="input-group">
          <span class="input-group-addon"><i class="icon_profile"></i></span>
          <input type="email" class="form-control" name="correo_Usuario" placeholder="Correo Electrónico" autofocus required>
        </div>
        <div class="input-group">
          <span class="input-group-addon"><i class="icon_key_alt"></i></span>
          <input type="password" class="form-control" name="password" placeholder="Contraseña" required>
        </div>
        <hr>
        <button class="btn btn-primary btn-lg btn-block" type="submit">Iniciar sesión</button>
        <a type="button" class="btn btn-info btn-lg btn-block" href="<?=base_url();?>index.php/controlFrontEnd/index/1">Cancelar</a>
      </div>
    </form>


      <div hidden="true" class="text-right">
        <div class="credits">
            <!--
              All the links in the footer should remain intact.
              You can delete the links only if you purchased the pro version.
              Licensing information: https://bootstrapmade.com/license/
              Purchase the pro version form: https://bootstrapmade.com/buy/?theme=NiceAdmin
            -->
            <a href="https://bootstrapmade.com/">Free Bootstrap Templates</a> by <a href="https://bootstrapmade.com/">BootstrapMade</a>
          </div>
      </div>
    </div>
  </body>
</html>
