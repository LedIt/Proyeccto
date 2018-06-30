<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Proveedores extends CI_Controller {

function __construct(){
    parent:: __construct();
    $this->load->model('Proveedores_Mdl');
}


    public function nuevo(){
       
        $idProvee = $this->input->POST('idProvee');
        $nombre = $this->input->POST('nombre');
        $apellidoP = $this->input->POST('apellidoP');
        $apellidoM = $this->input->POST('apellidoM');
        $correo = $this->input->POST('correo');
        $telefono = $this->input->POST('telefono');
        $lab = $this->input->POST('lab');
       
    
        $this->Proveedores_Mdl->nuevo($idProvee, $nombre, $apellidoP, $apellidoM, $correo, $telefono, $lab);
        $this->listar();
    }
 
    public function listar(){
        $data['proveedores'] = $this->Proveedores_Mdl->listar();
        $this->load->view('template/header'); 
        $this->load->view('template/navAdmin'); 
        $this->load->view('admin/proveedores/listar_vw',$data);
        $this->load->view('template/footer'); 
    }

    public function frmModificar($p){
        $data['proveedores'] = $this->Proveedores_Mdl->listarUno($p);
        $this->load->view('template/header'); 
        $this->load->view('template/navAdmin'); 
        $this->load->view('admin/proveedores/form_vw',$data);
        $this->load->view('template/footer'); 
    }

    public function modificar(){
        $idProvee = $this->input->post('idProvee');
        $nombre = $this->input->POST('nombre');
        $apellidoP = $this->input->POST('apellidoP');
        $apellidoM = $this->input->POST('apellidoM');
        $correo = $this->input->POST('correo');
        $telefono = $this->input->POST('telefono');
        $lab = $this->input->POST('lab');
        
        $this->Proveedores_Mdl->modificar($idProvee, $nombre, $apellidoP, $apellidoM, $correo, $telefono, $lab);
        $this->listar();
    }

    public function eliminar($p){        
        $this->Proveedores_Mdl->eliminar($p);
        redirect('Proveedores/listar');
    }

    
    public function nuevoProveedor(){
        $this->load->view('template/header'); 
        $this->load->view('template/navAdmin'); 
        $this->load->view('admin/proveedores/formNew_vw'); 
        $this->load->view('template/footer'); 
    }

}
