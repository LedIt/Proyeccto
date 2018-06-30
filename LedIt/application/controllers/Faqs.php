<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Faqs extends CI_Controller {

function __construct(){
    parent:: __construct();
    $this->load->model('Faq_Mdl');
}


    public function nuevoFaq(){
        $id_Faq = $this->input->POST('id_Faq');
        $id_Usuario_Faq = $this->input->POST('id_Usuario_Faq');
        $pregunta_Faq = $this->input->POST('pregunta_Faq');
        $respuesta_Faq = $this->input->POST('respuesta_Faq');
        $status_Faq = $this->input->POST('status_Faq');
        $this->Faq_Mdl->nuevo($id_Faq, $id_Usuario_Faq, $pregunta_Faq, $respuesta_Faq, $status_Faq);
        $this->listarFaq();
    }
 
    public function listarFaq(){
        $data['faqs'] = $this->Faq_Mdl->listarFaq();
        $this->load->view('admin/backend/template/header');  
        $this->load->view('admin/backend/faqs/listar_vw',$data);
        $this->load->view('admin/backend/template/footer'); 
    }

    public function listarFaqFront(){
        $data['faqs'] = $this->Faq_Mdl->listarFaqFront();
        $this->load->view('frontend/template/header');  
        $this->load->view('frontend/faq_vw',$data);
        $this->load->view('frontend/template/footer'); 
    }

    public function formModificarFaq($f){
        $data['faqs'] = $this->Faq_Mdl->listarUnoFaq($f);
           $this->load->view('admin/backend/template/header');  
        $this->load->view('admin/bacend/Faqs/formUpdate_vw',$data);
        $this->load->view('admin/backend/template/footer');
    }

    public function modificarFaq(){
        $id_Faq = $this->input->post('id_Faq');
        $id_Usuario_Faq = $this->input->post('id_Usuario_Faq');
        $pregunta_Faq = $this->input->post('pregunta_Faq');
        $respuesta_Faq = $this->input->post('respuesta_Faq');
        $status_Faq = $this->input->post('status_Faq');
        
        $this->Faq_Mdl->modificar($id_Faq, $id_Usuario_Faq, $pregunta_Faq, $respuesta_Faq, $status_Faq);
        $this->listarFaq();
    }

    public function eliminarFaq($f){        
        $this->Faq_Mdl->eliminarFaq($f);
        redirect('Faqs/listarFaq');
    }

    public function cambiarStatusFaq($id_Faq, $status_Faq){ 
        if($status_Faq == 1){
            $status_Faq = 0;
        }else{
            $status_Faq =1;
        }      
        $this->Faq_Mdl->cambiarStatusFaq($id_Faq, $status_Faq);
        redirect('Faqs/listarFaq');
    }


    public function nuevoFaq(){
        $this->load->view('admin/backend/template/header'); 
        $this->load->view('admin/backend/faqs/formNuevo_vw'); 
        $this->load->view('admin/backend/template/footer'); 
    }

}
