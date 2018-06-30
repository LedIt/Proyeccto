<?php
include_once'../template/header.php';
?>

    <!--main content start-->
    <section id="main-content">
      <section class="wrapper">
        <div class="row">


            <div class="col-lg-2"></div>
                <div class="col-lg-8">
                  <section class="panel">
                    <header class="panel-heading">
                      Preguntas frecuentes
                    </header>


                    <div class="panel-body form-horizontal">
                        <div class="form-group">
                          <label class="col-sm-2 control-label">Pregunta</label>
                          <div class="col-sm-8">
                            <input type="text" class="form-control round-input" placeholder="Ingresa Tu nombre">
                          </div>
                        </div>


                        <div class="form-group">
                          <label class="col-sm-2 control-label">Respuesta</label>
                          <div class="col-sm-8">
                            <input type="text" class="form-control round-input" placeholder="Ingresa Tu nombre">
                          </div>
                        </div>

                  <div class="form-group">
                    <label class="control-label col-lg-2" for="inputSuccess">Status</label>
                    <div class="col-lg-8">
                      <select class="form-control m-bot15">
                                              <option>1</option>
                                              <option>2</option>
                                              <option>3</option>
                                              <option>4</option>
                                              <option>5</option>
                      </select>
                    </div>
                 </div>


                  <div class="form-group">
                      <div class="col-lg-offset-2 col-lg-10">
                        <button class="btn btn-primary" type="submit">Guardar</button>
                        <button class="btn btn-default" type="button">Cancelar</button>
                      </div>
                    </div>

                  </section>
                </div>

            <div class="col-lg-2"></div>


        </div>
      </section>
    </section>


<?php
include_once'../template/footer.php';
?>