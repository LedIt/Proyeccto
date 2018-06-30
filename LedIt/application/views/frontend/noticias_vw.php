 <!-- ##### Breadcumb Area Start ##### -->
    <section class="breadcumb-area bg-img" style="background-image: url(<?=base_url();?>libraries/img/bg-img/s4.jpg);">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <div class="breadcumb-content">
                    <div class="breadcumb-content wow fadeInUp">
                        <h3 class="breadcumb-title"><i class="fa fa-doc"></i>Noticias</h3>
                    </div>
                    <br>
                    <div class="breadcumb-content">
                         <div class="breadcumb-content wow fadeInUp">
                        <h3 class="breadcumb-title"><i class="fa fa-file"></i></h3>
                    </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ##### Breadcumb Area End ##### -->



<section class="south-blog-area section-padding-100">
        <div class="container">
            <div class="row">
                <div class="col-12 col-lg-12">
                <div class="contact-heading">
                    <h6>Noticias</h6>
                </div>

              <?php
                foreach($noticias as $noti):
              ?>
                    <!-- Single Blog Area -->
                    <div align="center" class="single-blog-area mb-50">
                        <!-- Post Thumbnail -->
                        <div class="blog-post-thumbnail">
                            
                    <?php $ruta=base_url(). "libraries/libraries-backend/img/thumbnails/"?>
                        
                    <?php if($noti->imagen_Noticia != null){ ?>
                        <img src="<?=$ruta.$noti->imagen_Noticia;?>">

                     <?php }else{ ?>

                        <img width="50%" src="<?=$ruta.'ledit.png';?>">

                     <?php } ?>

                        </div>
                        <!-- Post Content -->
                        <div align="center" class="post-content">
                            <!-- Date -->
                            <div class="post-date">
                                <a href="#"><?=$noti->fecha_Noticia;?></a>
                            </div>
                            <!-- Headline -->
                            <a href="#" class="headline"><?=$noti->titulo_Noticia;?></a>
                            <!-- Post Meta -->
                            <div class="post-meta">
                                <p>By <a href="#">Admin</a> | in <a href="#">Uncategorized</a> | <a href="#">2 Comments</a></p>
                            </div>
                            <p><?=$noti->descripcion_Corta_Noticia;?></p>
                            <!-- Read More btn -->
                            <a href="#" class="btn south-btn btn-3">Leer más</a>
                        </div>
                    </div>
        <?php
          endforeach;
        ?>
                

                        </div>

                    </div>
                </div>
            </div>

        </div>
    </section>





    <!-- ##### Blog Area End ##### -->