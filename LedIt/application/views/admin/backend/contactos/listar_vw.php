
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
        <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
              </div>
              </div>
            </div>
            <div class="clearfix"></div>
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div style="box-shadow: 0px 0px 10px -5px rgba(10,17,35,0.9); border-bottom-right-radius: 20px; border-bottom-left-radius: 20px" class="x_panel">
                  <div class="x_title">
                    <h3>Mensajes <small>Listado de mensajes de contacto</small></h3>
                    <div class="clearfix"></div>
                  </div>
                      <table id="datatable-responsive" class="table table-striped table-bordered dt-responsive nowrap">
                      <thead>
                        <tr>
                            <th>Fecha de recibido</th>
                            <th>Nombre</th>
                            <th>Teléfono</th>
                            <th>Email</th>
                            <th>Mensaje</th>
                            <th>Acciones</th>
                        </tr>
                      </thead>

                    <tbody>
                    <?php
                    foreach($contactos as $contacto):
                    ?>
                            <tr>
                                <td><?=$contacto->fecha_Contacto;?></td>
                                <td><?=$contacto->nombre_Contacto;?></td>
                                <td><?=$contacto->telefono_Contacto;?></td>
                                <td><?=$contacto->email_Contacto;?></td>
                                <td><?=$contacto->mensaje_Contacto;?></td>
                                <td align="center"><a title="Eliminar" href="<?=base_url().'Contactos/eliminarContacto/'.$contacto->id_Contacto;?>"><span style="color: red; font-size: 20px" class="fa fa-trash"></span></a></td>
                            </tr>
                    <?php
                    endforeach;
                    ?>
                        
                      </tbody>
                    </table>
                </div>
              </div>
            </div>
          </div>
        <!-- /page content -->
    </div>
</body>
</html>

 
    
    