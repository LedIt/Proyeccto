<?php
defined('BASEPATH') OR exit('No direct script access allowed');


class Noticias extends CI_Controller {
function __construct(){
	parent:: __construct();
	$this->load->model('Noticias_Mdl');
}
 
    public function nuevoNoticia(){
        $config['upload_path'] = "./libraries/libraries-backend/img/thumbnails";
        $config['allowed_types'] = "gif|jpg|png|jpeg|svg";
        $config['max_size'] = "6000";

        $this->load->library('upload', $config);

        if($this->upload->do_upload('imagen_Noticia')){
        $data['imagen_Noticia']= $this->upload->data();
        $id_Noticia = $this->input->POST('id_Noticia');
        $id_Usuario_Noticia = $this->input->POST('id_Usuario_Noticia');
        $titulo_Noticia = $this->input->POST('titulo_Noticia');
        $imagen_Noticia= $data['imagen_Noticia']['file_name'];
        $descripcion_Corta_Noticia = $this->input->POST('descripcion_Corta_Noticia');
        $descripcion_Larga_Noticia = $this->input->POST('descripcion_Larga_Noticia');
        $fecha_Noticia = $this->input->POST('fecha_Noticia');
        $status_Noticia = $this->input->POST('status_Noticia');

        $this->Noticias_Mdl->nuevoNoticia($id_Noticia, $id_Usuario_Noticia, $imagen_Noticia, $descripcion_Corta_Noticia, $descripcion_Larga_Noticia, $descripcion_Corta_Noticia, $fecha_Noticia, $status_Noticia);
        $this->listar();

        }else{
            echo"Error" . $this->upload->display_errors();

        }  
    }
 

    public function listarNoticia(){
        $data['noticias'] = $this->Noticia_Mdl->listarNoticia();
        $this->load->view('admin/backend/template/header'); 
        $this->load->view('admin/backend/noticias/listar_vw',$data);
        $this->load->view('admin/backend/template/footer'); 
    }


    public function listarNoticiaFront(){
        $data['noticias'] = $this->Noticia_Mdl->listarNoticiaFront();
        $this->load->view('frontend/template/header'); 
        $this->load->view('frontend/galeria_vw',$data);
        $this->load->view('frontend/template/footer'); 
    }

    public function formModificarNoticia($n){
        $data['noticias'] = $this->Noticias_Mdl->listarUnoNoticia($n);
        $this->load->view('admin/backend/template/header');  
        $this->load->view('admin/backend/noticias/formUpdate_vw',$data);
         $this->load->view('admin/backend/template/footer');
    }

    public function modificarNoticia(){
        $id_Noticia = $this->input->POST('id_Noticia');
        $id_Usuario_Noticia = $this->input->POST('id_Usuario_Noticia');
        $titulo_Noticia = $this->input->POST('titulo_Noticia');
        $imagen_Noticia = $this->input->POST('imagen_Noticia');
        $descripcion_Corta_Noticia = $this->input->POST('descripcion_Corta_Noticia');
        $descripcion_Larga_Noticia = $this->input->POST('descripcion_Larga_Noticia');
        $fecha_Noticia = $this->input->POST('fecha_Noticia');
        $status_Noticia = $this->input->POST('status_Noticia');
        
        $this->Noticia_Mdl->modificarNoticia($id_Noticia, $id_Usuario_Noticia, $titulo_Noticia, $imagen_Noticia, $descripcion_Corta_Noticia, $descripcion_Larga_Noticia, $fecha_Noticia, $status_Noticia);
        $this->listar();
    }

    public function eliminarNoticia($n){        
        $this->Noticia_Mdl->eliminarNoticia($n);
        redirect('Noticias/listarNoticia');
    }


    public function cambiarStatusNoticia($id_Noticia, $status_Noticia){ 
        if($status_Noticia == 1){
            $status_Noticia = 0;
        }else{
            $status_Noticia =1;
        }      
        $this->Noticia_Mdl->cambiarStatusNoticia($id_Noticia, $status_Noticia);
        redirect('Noticias/listarNoticia');
    }
   
    public function nuevoMedi(){
        $this->load->view('template/header'); 
        $this->load->view('template/navAdmin'); 
        $this->load->view('admin/medicamentos/formNew_vw'); 
        $this->load->view('template/footer'); 
    }
}

