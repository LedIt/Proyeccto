
<div id="content">
<div class="col-xs-6 formdiseno1">
<?=validation_errors();?>
<form action="<?=base_url().'index.php/Usuario/login';?>" method="POST" class="form-horizontal" >
				<img src="images/usuari.png" class="center-block">
				<div class="form-group">
				<label class="col-sm-3 control-label blanco h"> Usuario </label>
				<div class="col-sm-6">
				<input class="form-control" type="text" name="user" placeholder="Ingrese su Usuario">
				</div>
				</div>
				<div class="form-group">
				<label class="col-sm-3 control-label blanco"> Contraseña </label>
				<div class="col-sm-6">
				<input class="form-control" type="password" name="pass" placeholder="Ingrese su Contraseña">
				</div>
				</div>
				
				<div class="form-group">
				<label class="col-sm-3 control-label"></label>
				<input  type="hidden" name="privilegios" value="">
				<div class="col-sm-3">
				<button type="submit" class="btn btn-primary"> <span class="glyphicon glyphicon-floppy-saved"></span> Entrar </button>
				</div>
				</div>

			</form>
</div>
</div>