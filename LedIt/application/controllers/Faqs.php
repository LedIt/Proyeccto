<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Examples extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->database();
        $this->load->helper('url');
        $this->load->library('grocery_CRUD');
    }

    
    public function faqs(){
        $faq = new grocery_CRUD();
        $faq->set_theme('bootstrap-v4');
        $faq->set_table('faqs');
        $faq->set_relation('id_Usuario_Faq','usuarios','nombre_Usuario');
        $faq->required_fields('pregunta_Faq','respuesta_Faq','status_Faq');
        $faq->set_field_upload('file_url','assets/uploads/files');
        $faq->$faqs->render();

        $this->load->view('admin/backend/template/header');
        $this->load->view('admin/backend/faqs/listar_vw'(array)$imagen);
        $this->load->view('admin/backend/template/footer');
    }


}
