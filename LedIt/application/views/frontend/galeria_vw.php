<?php
/**
 * Archivo con php embebido para listado de las galería registradas en la base de datos (FrontEnd).
 *
 *
 *
 * @category   File
 * @package    views
 * @subpackage frontend
 * @copyright  Copyright (c) 2018-2019 Revoltech Inc.
 * @version    $Id:$1.0
 * @since      File available since Release 1.0
*/
?>
<!-- ##### Breadcumb Area Start ##### -->
    <section class="breadcumb-area bg-img" style="background-image: url(<?=base_url();?>libraries/img/bg-img/s4.jpg);">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                      <div class="breadcumb-content wow fadeInUp">
                        <h3 class="breadcumb-title"><i class="fa fa-doc"></i>Galería</h3>
                    </div>
                    <br>
                    <div class="breadcumb-content">
                         <div class="breadcumb-content wow fadeInUp">
                        <h3 class="breadcumb-title"><i class="fa fa-image"></i></h3>
                    </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ##### Breadcumb Area End ##### -->
    <!-- ##### Featured Properties Area Start ##### -->
    <section class="featured-properties-area section-padding-100-50 col-12">
        <div class="container">

                <div class="row">
                    <div class="col-12">
                        <div class="section-heading wow fadeInUp">
                            <h2>Disfruta de nuestra galería</h2>
                            <p>Con las mejores lámparas de led solares en el mercado.</p>
                        </div>
                    </div>
                </div>
                 <div class="contentArea">
                        <div class="divPanel notop page-content">
                            <div class="row-fluid">
                                   <div id="gridArea" class="yoxview wow fadeInUp">
                                    <?php
                                        /**
                                         * Generara un listado de la galería por medio del objeto declarado en la clase "Galeria_Mdl".
                                         */
                                        foreach($galeria as $gal):
                                    ?>
                                        <ul id="tiles">
                                            <li class="wow fadeInUp">
                                            <?php $ruta1=base_url(). "libraries/libraries-backend/images/thumbnails/galeria/"?>
                                            <?php $ruta2=base_url(). "libraries/libraries-backend/images/thumbnails/"?>
                                                
                                            <?php 
                                             /**
                                              * El if declara que si el campo imagen_Producto no esta vacio se mostrara la imagen asignada.
                                              * Pero en caso de que este vacio se le asignará una por default.
                                              */                                            
                                            if ($gal->imagen_Galeria != null){ ?>
                                                     <a href="<?=$ruta1.$gal->imagen_Galeria;?>"><img src="<?=$ruta1.$gal->imagen_Galeria;?>" alt="<?=$gal->titulo_Galeria;?>" title="<?=$gal->titulo_Galeria;?>"/></a>
                                             <?php }else{ ?>
                                                     <a href="<?=$ruta2.$gale->imagen_Galeria;?>"><img src="<?=$ruta1.$gal->imagen_Galeria;?>" alt="<?=$gal->titulo_Galeria;?>" title="<?=$gal->titulo_Galeria;?>"/></a>
                                             <?php } ?>                                               
                                            </li>   
                                        </ul>
                                    <?php
                                        endforeach;
                                    ?>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
        </div>
    </section>
    <!-- ##### Featured Properties Area End ##### -->




