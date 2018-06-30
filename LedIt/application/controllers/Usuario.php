<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Usuario extends CI_Controller {

function __construct(){
	parent:: __construct();
	$this->load->model('Usuario_Mdl');
}

   
public function login(){
    $user = $this->input->POST('user');
    $password = $this->input->POST('password');
    $val = $this->Usuario_Mdl->login($user, $password);

        if($val === 0){
            redirect('controlBackEnd/index/1');
        }else{
            $this->session->set_userdata('usuarios', $user);
            redirect('controlBackEnd/index/2');
          }

        }

        public function logout(){
            $this->session->sess_destroy() ;
            redirect('controlBackEnd/index/1');
        }


    public function registroUsuario(){
        //$user = $_POST['user];
        $id_Usuario = $this->input->POST('idUsuario');
        $nombre_Usuario = $this->input->POST('nombre');
        $apellido_Paterno_Usuario = $this->input->POST('apellidoP');
        $apellido_Materno_Usuario= $this->input->POST('apellidoM');
        $estado_Usuario = $this->input->POST('puesto');
        $ciudad_Usuario = $this->input->POST('cedula');
        $calle_Usuario = $this->input->POST('user');
        $numero_Interior_Usuario = $this->input->POST('pass');
        $privilegios = $this->input->POST('privilegios');
        $status = $this->input->POST('status');

        $this->form_validation->set_rules('nombre', 'Nombre', 'trim|required|alpha');
        $this->form_validation->set_rules('apellidoP', 'Apellido Paterno', 'trim|required' );
        $this->form_validation->set_rules('apellidoM', 'Apellido Materno', 'trim|required' );
        $this->form_validation->set_rules('puesto', 'Puesto', 'trim|required' );
        $this->form_validation->set_rules('cedula', 'Cedula', 'trim|required' );
        $this->form_validation->set_rules('user', 'Usuario', 'trim|required' );
        $this->form_validation->set_rules('pass', 'Contraseña', 'trim|required' );
        $this->form_validation->set_rules('privilegios', 'Privilegios', 'trim|required' );
        $this->form_validation->set_rules('status', 'Estatus', 'trim|required' );

        $this->form_validation->set_message('trim', 'El campo %s no puede llevar espacios');
        $this->form_validation->set_message('required', 'El campo %s es obligatorio');
        $this->form_validation->set_message('alpha', 'El campo %s solo acepta letras');
        $this->form_validation->set_message('min_length', 'El campo %s debe tener más de 8 caracteres');
        $this->form_validation->set_message('max_length', 'El campo %s debe terner menos de 15 caracteres');

    if ($this->form_validation->run() === false) {
            $this->load->view('template/header');
            $this->load->view('template/nav');
            $this->load->view('front/registro_vw');
            $this->load->view('template/footer');
        }  else {
        $this->Usuario_Mdl->registro($idUsuario, $nombre, $apellidoP, $apellidoM, $puesto, $cedula, $user, $pass, $privilegios, $status);
        redirect('control/index');
            }  
        }


    public function nuevo(){
        //$user = $_POST['user'];
        $idUsuario = $this->input->POST('idUsuario');
        $nombre = $this->input->POST('nombre');
        $apellidoP = $this->input->POST('apellidoP');
        $apellidoM = $this->input->POST('apellidoM');
        $puesto = $this->input->POST('puesto');
        $cedula = $this->input->POST('cedula');
        $user = $this->input->POST('user');
        $pass = $this->input->POST('pass');
        $privilegios = $this->input->POST('privilegios');
        $status = $this->input->POST('status');
    
        $this->Usuario_Mdl->registro($idUsuario, $nombre, $apellidoP, $apellidoM, $puesto, $cedula, $user, $pass, $privilegios, $status);
        $this->listar();
    }
 
    public function listar(){
        $data['usuarios'] = $this->Usuario_Mdl->listar();
        $this->load->view('template/header'); 
        $this->load->view('template/navAdmin'); 
        $this->load->view('admin/usuarios/listar_vw',$data);
        $this->load->view('template/footer'); 
    }

    public function frmModificar($u){
        $data['usuarios'] = $this->Usuario_Mdl->listarUno($u);
        $this->load->view('template/header'); 
        $this->load->view('template/navAdmin'); 
        $this->load->view('admin/usuarios/form_vw',$data);
        $this->load->view('template/footer'); 
    }

    public function modificar(){
        $idUsuario = $this->input->post('idUsuario');
        $nombre = $this->input->post('nombre');
        $apellidoP = $this->input->post('apellidoP');
        $apellidoM = $this->input->post('apellidoM');
        $puesto = $this->input->post('puesto');
        $cedula = $this->input->post('cedula');
        $user = $this->input->post('user');
        $pass = $this->input->post('pass');
        $privilegios = $this->input->post('privilegios');
        $status = $this->input->post('status');
        
        $this->Usuario_Mdl->modificar($idUsuario, $nombre, $apellidoP, $apellidoM, $puesto, $cedula, $user, $pass, $privilegios, $status);
        $this->listar();
    }

    public function eliminar($u){        
        $this->Usuario_Mdl->eliminar($u);
        redirect('Usuario/listar');
    }

    public function cambiar($idUsuario, $status){ 
        if($status == 1){
            $status = 0;
        }else{
            $status =1;
        }      
        $this->Usuario_Mdl->cambiar($idUsuario,$status);
        redirect('Usuario/listar');
    }


    public function nuevoUser(){
        $this->load->view('template/header'); 
        $this->load->view('template/navAdmin'); 
        $this->load->view('admin/usuarios/formNew_vw'); 
        $this->load->view('template/footer'); 
    }

}
