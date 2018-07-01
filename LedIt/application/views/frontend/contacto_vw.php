<!-- ##### Breadcumb Area Start ##### -->
    <section class="breadcumb-area bg-img" style="background-image: url(<?=base_url();?>libraries/img/bg-img/s4.jpg);">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                      <div class="breadcumb-content wow fadeInUp">
                        <h3 class="breadcumb-title"><i class="fa fa-doc"></i>Contacto</h3>
                    </div>
                    <br>
                    <div class="breadcumb-content">
                         <div class="breadcumb-content wow fadeInUp">
                        <h3 class="breadcumb-title"><i class="fa fa-comment"></i></h3>
                    </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ##### Breadcumb Area End ##### -->
    <section class="south-contact-area section-padding-100">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="contact-heading">
                        <h6>Información de contacto</h6>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-12 col-lg-4">
                    <div class="content-sidebar">
                        <!-- Office Hours -->
                        <div class="weekly-office-hours">
                            <ul>
                                <li class="d-flex align-items-center justify-content-between"><span style="color: #0a1123;">Lunes - Viernes</span> <span>09:00 AM - 6:00 PM</span></li>
                                <li class="d-flex align-items-center justify-content-between"><span style="color: #0a1123;">Sábado</span> <span>09:00 AM - 5:00 PM</span></li>
                                <li class="d-flex align-items-center justify-content-between"><span style="color: #0a1123;">Domingo</span> <span>09:00 AM - 03:00 PM</span></li>
                            </ul>
                        </div>
                        <!-- Address -->
                        <div class="address mt-30">
                            <h6><img src="<?=base_url();?>libraries/img/icons/phone-call.png" alt=""> 447-690-07-88</h6>
                            <h6><img src="<?=base_url();?>libraries/img/icons/envelope.png" alt=""> josemanuel@ledit.mx <br> led_it@live.com</h6>
                            <h6><img src="<?=base_url();?>libraries/img/icons/location.png" alt=""> Alvaro Obregon 26-A Col. Centro CP 61250 <br> Maravatio, Michoacan.</h6>
                        </div>
                    </div>
                </div>
                <!-- Contact Form Area -->
                <div class="col-12 col-lg-8">
                    <div class="contact-form">
                        <form action="<?=base_url().'index.php/Contactos/nuevoContacto';?>" method="POST">
                            <div class="form-group">
                                <input type="text" class="form-control" name="text" id="contact-name" placeholder="Your Name">
                            </div>
                            <div class="form-group">
                                <input type="number" class="form-control" name="number" id="contact-number" placeholder="Your Phone">
                            </div>
                            <div class="form-group">
                                <input type="email" class="form-control" name="email" id="contact-email" placeholder="Your Email">
                            </div>
                            <div class="form-group">
                                <textarea class="form-control" name="message" id="message" cols="30" rows="10" placeholder="Your Message"></textarea>
                            </div>
                            <button type="submit" class="btn south-btn btn-3">Send Message</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Google Maps -->
    <div class="map-area mb-100">
        <div class="container">
            <div class="row">
                <div class="col-12">
                   <div class="contact-heading">
                        <h6>Ubicación</h6>
                    </div>
                         <iframe class="googleMap" src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3751.7557738648165!2d-100.44384559999999!3d19.892532!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x85d2d09cc7ac5a87%3A0x6bcd2e5dc3e01cfc!2zw4FsdmFybyBPYnJlZ8OzbiAyNg!5e0!3m2!1ses!2s!4v1403459955944">
                         </iframe>
                </div>
            </div>
        </div>
    </div>