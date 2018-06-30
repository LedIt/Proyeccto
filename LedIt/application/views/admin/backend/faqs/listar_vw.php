<?php
if (!$this->session->has_userdata('usuarios')) {
}
?>
 <!--main content start-->
 <br>
    <section id="main-content">
      <section class="wrapper">
        
        <!-- page start-->
        <div class="row">
          <div class="col-lg-12">
            <section class="panel">
              <header class="panel-heading">
                Registro de preguntas frecuentes
              </header>
              <br>
             <div class="table-responsive">
                <table class="table table-striped table-advance table-hover">

      
                  <tbody>
                    <tr>
                      <th><i class="icon_profile"></i> ID</th>
                      <th><i class="icon_calendar"></i> ID_Usuario</th>
                      <th><i class="icon_mail_alt"></i> Preguntas</th>
                      <th><i class="icon_pin_alt"></i> Respuestas</th>
                      <th><i class="icon_mobile"></i> Status</th>
                      <th><i class="icon_cogs"></i> Acciones</th>
                    </tr>

      <?php
        foreach($faqs as $faq):
      ?>
                    <tr>
                      <td><?=$faq->id_Faq;?></td>
                      <td><?=$faq->id_Usuario_Faq;?></td>
                      <td><?=$faq->pregunta_Faq;?></td>
                      <td><?=$faq->respuesta_Faq;?></td>
                      <td><?=$faq->status_Faq;?></td>
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




