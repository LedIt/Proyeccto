<!DOCTYPE html>
<html lang="en">
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="author" content="GeeksLabs">
  <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
  <link rel="shortcut icon" href="<?=base_url();?>libraries/img/icons/icon.png">
  <title>LedIt | Registro</title>

<!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="<?=base_url();?>libraries/libraries-backend/login-usuario-styles/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="<?=base_url();?>libraries/libraries-backend/login-usuario-styles/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="<?=base_url();?>libraries/libraries-backend/login-usuario-styles/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="<?=base_url();?>libraries/libraries-backend/login-usuario-styles/vendor/animate/animate.css">
<!--===============================================================================================-->  
  <link rel="stylesheet" type="text/css" href="<?=base_url();?>libraries/libraries-backend/login-usuario-styles/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="<?=base_url();?>libraries/libraries-backend/login-usuario-styles/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="<?=base_url();?>libraries/libraries-backend/login-usuario-styles/vendor/select2/select2.min.css">
<!--===============================================================================================-->  
  <link rel="stylesheet" type="text/css" href="<?=base_url();?>libraries/libraries-backend/login-usuario-styles/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="<?=base_url();?>libraries/libraries-backend/login-usuario-styles/css/util.css">
  <link rel="stylesheet" type="text/css" href="<?=base_url();?>libraries/libraries-backend/login-usuario-styles/css/main.css">

  <link rel="stylesheet" type="text/css" href="/Inventario H Ayuntamiento/template/libs/bootstrap/bootstrap.min.css"/>
<link rel="stylesheet" type="text/css" href="/Inventario H Ayuntamiento/template/libs/bootstrap/bootstrap-theme.min.css"/>
<link rel="stylesheet" type="text/css" href="/Inventario H Ayuntamiento/template/libs/css/style.css"/>
<!--===============================================================================================-->
</head>
<body>
  


<div class="container-fluid">
<div class=" container col-xs-10 col-sm-10 forms_admin form" style="margin-left: 10px; margin-top: 10px; padding-bottom: 20px;">

 
  <div class="col-xs-5 col-sm-5">
<form name="formuser" enctype="multipart/form-data" action="formNewUser.php" method="POST">

       
        <input type="hidden" class="form-control" name="id" value="">
        <br>
      

        <label  for="nombre" class="control-label">Nombre:</label>
        <input placeholder="Ingresar nombre" maxlength="200" type="text" class="form-control" name="nombre" id="nombre" value="" required>
        <br>        

        <label for="apellidoP" class="control-label">Apellido Paterno:</label>
        <input placeholder="Ingresar apellido paterno"  maxlength="200" type="text" class="form-control" name="app" id="apellidoP" value="" required>
        <br>

        <label for="apellidoM" class="control-label">Apelido Materno:</label>
        <input placeholder="Ingresar apellido materno"   maxlength="200" type="text" class="form-control" name="apm" id="apellidoM" value="" required>
        <br>

        <label for="idArea" class="control-label">Área: </label>
        <select name="id_area" class="form-control" id="idArea">
          <option value="0">--Selecciona un área--</option>
        
            <option value="" >
             
            </option>       
        
        </select>
        <br>

        <label for="fechaNac" class="control-label">Fecha de Nacimiento:</label>
        <input  type="date" class="form-control" name="fechaNac" min="1900-12-31" max="2017-12-31" id="fechaNac" value=""  required>
        <br>

        <label for="calle" class="control-label">Calle:</label>
        <input placeholder="Ingresar nombre de la calle"  maxlength="200" type="text" class="form-control" name="calle" id="calle" value="" required>
        <br>

        <label for="colonia" class="control-label">Colonia:</label>
        <input placeholder="Ingresar nombre de la colonia" maxlength="200" type="text" class="form-control" name="colonia" id="colonia" value="" required>
        <br>
        
    </div>    
         <div align="" class="col-xs-2 col-sm-2"></div>

    <div class="col-xs-5 col-sm-5">
                <label for="NumExt" class="control-label">Número Exterior:</label>
                <input placeholder="Ingresar número exterior del domicilio" maxlength="20" type="text" class="form-control" name="numExt" id="numExt" value="" required>
        <br>
        <label for="numInt" class="control-label">Número Interior:</label>
        <input placeholder="Ingresar número interior del domicilio" maxlength="20" type="text" class="form-control" name="numInt" id="numInt" value="">
        <br>
        <label for="telefono" class="control-label">Teléfono:</label>
        <input placeholder="Ingresar teléfono" minlength="10" maxlength="20" type="text" class="form-control" name="telefono" id="telefono" value="" required>
        <br>

        <label for="correo" class="control-label">Correo:</label>
        <input placeholder="Ingresar correo" maxlength="50" type="email" pattern="[a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*@(hotmail)*(yahoo)*(gmail)*(live)*.com{1,5}" class="form-control" name="correo" id="correo" value="" required>
        <br>
        <label for="password" class="control-label">Password:</label>
        <input placeholder="Ingresar contraseña" maxlength="300" type="text" class="form-control" name="password" id="password" value="" required>
          <br>
        
     

          <select name="privilegios" hidden>
          <option value="2">2</option>
          </select>
          <label for="privilegios" class="control-label">Privilegios:</label>
          <select name="privilegios" class="form-control" id="privilegios" required>
            <option value="0">Super Administrador</option>
            <option value="1" >Administrador</option>
            <option value="2">Usuario</option>
          </select>
          <br>

        
          <select name="privilegios" hidden>
          <option value="2">2</option>
          </select>
          <label for="privilegios" class="control-label">Privilegios:</label>
          <select name="privilegios" class="form-control" id="privilegios" required>
            <option value="2" >Usuario</option>
          </select>
          <br>
       
       
          <select name="status" hidden>
            <option value="1">1</option>
          </select>
      
          <label for="status" class="control-label">Status:</label>
          <select name="status" class="form-control" id="status" required>
            <option value="0" >Inactivo</option>
            <option value="1"  >Activo</option>
          </select>
       
        
        
        <br>  
        <input type="submit" class="btn btn-primary" value="Actualizar" onclick="return confirm('¿Guardar cambios?')">
     
        <br>
        <input type="submit" class="btn btn-success" value="Registrar">
        
        <a href="tableUsers.php" class="btn btn-danger"> Cancelar</a>
             </div>   
         </div>
     </div>

</form>

  <div id="dropDownSelect1"></div>
  
<!--===============================================================================================-->
  <script src="<?=base_url();?>libraries/libraries-backend/login-usuario-styles/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
  <script src="<?=base_url();?>libraries/libraries-backend/login-usuario-styles/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
  <script src="<?=base_url();?>libraries/libraries-backend/login-usuario-styles/vendor/bootstrap/js/popper.js"></script>
  <script src="<?=base_url();?>libraries/libraries-backend/login-usuario-styles/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
  <script src="<?=base_url();?>libraries/libraries-backend/login-usuario-styles/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
  <script src="<?=base_url();?>libraries/libraries-backend/login-usuario-styles/vendor/daterangepicker/moment.min.js"></script>
  <script src="<?=base_url();?>libraries/libraries-backend/login-usuario-styles/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
  <script src="<?=base_url();?>libraries/libraries-backend/login-usuario-styles/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
  <script src="<?=base_url();?>libraries/libraries-backend/login-usuario-styles/js/main.js"></script>

</body>
</html>