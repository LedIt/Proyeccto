<!--main content start-->
    <section id="main-content">
      <section class="wrapper">
        
        <!-- page start-->
        <div class="row">
          <div class="col-lg-12">
            <section class="panel">
              <header class="panel-heading">
                Registro de Noticias
              </header>
              <br>

              <div class="table-responsive">

              <table class="table table-striped table-advance table-hover">
                <tbody>
                  <tr>
                    <th><i class="icon_profile"></i> ID Noticias</th>
                    <th><i class="icon_calendar"></i> ID Usuario</th>
                    <th><i class="icon_calendar"></i> Imagen</th>
                    <th><i class="icon_calendar"></i> Titulo</th>
                    <th><i class="icon_mail_alt"></i> Descripcion Corta</th>
                    <th><i class="icon_mail_alt"></i> Descripcion Larga</th>
                    <th><i class="icon_pin_alt"></i> Fecha</th>
                    <th><i class="icon_mobile"></i> Status</th>
                    <th><i class="icon_cogs"></i> Action</th>
                  </tr>

      <?php
        foreach($noticias as $noti):
      ?>
                  <tr>
                    <td><?=$noti->id_Noticia;?></td>
                    <td><?=$noti->id_Usuario_Noticia;?></td>

                    <?php $ruta=base_url(). "libraries/libraries-backend/img/thumbnails/"?>

                     <?php if($noti->imagen_Noticia != null){ ?>

                        <td><img width="10%" src="<?=$ruta.$noti->imagen_Noticia;?>"></td>

                     <?php }else{ ?>

                        <td><img width="60%" src="<?=$ruta.'ledit.png';?>"></td>

                     <?php } ?>
                    <td><?=$noti->titulo_Noticia;?></td>
                    <td><?=$noti->descripcion_Corta_Noticia;?></td>
                    <td><?=$noti->descripcion_Larga_Noticia;?></td>
                    <td><?=$noti->fecha_Noticia;?></td>
                    <td><?=$noti->status_Noticia;?></td>
                    <td>
                      <div class="btn-group">
                        <a class="btn btn-primary" href="#"><i class="icon_plus_alt2"></i></a>
                        <a class="btn btn-success" href="#"><i class="icon_check_alt2"></i></a>
                        <a class="btn btn-danger" href="#"><i class="icon_close_alt2"></i></a>
                      </div>
                    </td>
                  </tr>
      <?php
          endforeach;
      ?>
                </tbody>
              </table>
               </div>

            </section>
          </div>
        </div>
        <!-- page end-->
      </section>
    </section>

        <script>
      //knob
      $(function() {
        $(".knob").knob({
          'draw': function() {
            $(this.i).val(this.cv + '%')
          }
        })
      });

      //carousel
      $(document).ready(function() {
        $("#owl-slider").owlCarousel({
          navigation: true,
          slideSpeed: 300,
          paginationSpeed: 400,
          singleItem: true

        });
      });

      //custom select box

      $(function() {
        $('select.styled').customSelect();
      });

      /* ---------- Map ---------- */
      $(function() {
        $('#map').vectorMap({
          map: 'world_mill_en',
          series: {
            regions: [{
              values: gdpData,
              scale: ['#000', '#000'],
              normalizeFunction: 'polynomial'
            }]
          },
          backgroundColor: '#eef3f7',
          onLabelShow: function(e, el, code) {
            el.html(el.html() + ' (GDP - ' + gdpData[code] + ')');
          }
        });
      });
    </script>


