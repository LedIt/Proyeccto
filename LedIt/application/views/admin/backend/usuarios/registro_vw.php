<div id="content">
 <div class="col-xs-6 formdiseno1">
 	<?=validation_errors();?>
	<form action="<?=base_url().'index.php/Usuario/registro';?>" method="POST" class="form-horizontal" >
				
				<input type="hidden" name="idUsuario" value="" >

				<div class="form-group">
				<label class="col-sm-3 control-label blanco "> Nombre </label>
				<div class="col-sm-6">
				<input class="form-control" type="text" name="nombre" placeholder="Ingrese su Nombre" >
				</div>
				</div>
 
				<div class="form-group">
				<label class="col-sm-3 control-label blanco"> Apellido Paterno </label>
				<div class="col-sm-6">
				<input class="form-control" type="text" name="apellidoM" placeholder="Ingrese su Apellido" >
				</div>
				</div>

				<div class="form-group">
				<label class="col-sm-3 control-label blanco"> Apellido Materno </label>
				<div class="col-sm-6">
				<input class="form-control" type="text" name="apellidoP" placeholder="Ingrese su Apellido" >
				</div>
				</div>

				<div class="form-group">
				<label class="col-sm-3 control-label blanco"> Puesto </label>
				<div class="col-sm-6">
				<input class="form-control" type="text" name="puesto" placeholder="Ingrese su Puesto" >
				</div>
				</div>

				<div class="form-group">
				<label class="col-sm-3 control-label blanco"> Cedula </label>
				<div class="col-sm-6">
				<input class="form-control" type="text" name="cedula" placeholder="Ingrese su Cedula">
				</div>
				</div>

				<div class="form-group">
				<label class="col-sm-3 control-label blanco"> Usuario </label>
				<div class="col-sm-6">
				<input class="form-control" type="text" name="user" placeholder="Ingrese su Puesto">
				</div>
				</div>

				<div class="form-group">
				<label class="col-sm-3 control-label blanco"> Contraseña </label>
				<div class="col-sm-6">
				<input class="form-control" type="password" name="pass" placeholder="Ingrese su Cedula">
				</div>
				</div>

				<input type="hidden" name="privilegios" value="2">
				<input type="hidden" name="status" value="1">

				<div class="form-group">
				<label class="col-sm-3 control-label"></label>
				<div class="col-sm-3">
				<button type="submint" class="btn btn-primary"> <span class="glyphicon glyphicon-floppy-saved"></span> Registrarse </button>
				</div>
				</div>

	</form>
</div>
</div>
  