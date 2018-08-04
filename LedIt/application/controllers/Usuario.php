<?php
/**
 * Clase "Usuario" contiene las funciones de agregado,listado,modificación y eliminación.
 *
 *
 * @category   Class/Controller
 * @package    application
 * @subpackage controllers
 * @copyright  Copyright (c) 2018-2019 Revoltech Inc.
 * @version    Release: 1.0
 * @since      Class available since Release 1.0
 * @deprecated Class deprecated in Release 1.1
 */
defined('BASEPATH') OR exit('No direct script access allowed');
/**
 * La clase extiende o hereda de "CI_Controller" el cual servirá para interactuar con su modelo.
 */
class Usuario extends CI_Controller {
    function __construct(){
	    parent:: __construct();
        $this->load->helper('url');
	      $this->load->model('Usuario_Mdl');
        $this->load->library('session');
}
/**
 * La función permite el acceso para administrar el sitio, en el cual se verifica el usuario y contraseña, los cuales se obtinen del formulario de login para capturar los campos.
 */
public function registrarUsuario(){

  $this->Usuario_Mdl->set_user_name($this->input->post('user_name'));
  $this->Usuario_Mdl->set_user_email($this->input->post('user_email'));
  $this->Usuario_Mdl->set_user_password($this->input->post('user_password'));
  $this->Usuario_Mdl->set_user_age($this->input->post('user_age'));
  $this->Usuario_Mdl->set_user_mobile($this->input->post('user_mobile'));

    $verificarEmail = $this->Usuario_Mdl->verificarEmail($this->Usuario_Mdl->get_user_email());

    if($verificarEmail){
      $this->Usuario_Mdl->register_user();
      $this->session->set_flashdata('success_msg', 'Cuenta creada satisftoriamente.');
      redirect('User/login_view');

    }
    else{
      $this->session->set_flashdata('error_msg', 'El email ya existe, intenta ingresar otro');
      redirect('User');
    }
}
/**
 * La función permite el acceso para administrar el sitio, en el cual se verifica el usUario y contraseña, los cuales se obtinen del formulario de login para capturar los campos.
 */

public function login(){
  $loginUsuario=array(
  'correo_Usuario'=>$this->input->POST('correo_Usuario'),
  'password'=>$this->input->POST('password')
  );

  $data=$this->Usuario_Mdl->login($loginUsuario['correo_Usuario'],$loginUsuario['password']);

      if($data)
      {
        $this->session->set_userdata('id',$data['id_Usuario']);
        $this->session->set_userdata('correo',$data['correo_Usuario']);
        $this->session->set_userdata('nombre',$data['nombre_Usuario']);
        $this->session->set_userdata('perfil',$data['imagen_Usuario']);
        $this->session->set_userdata('usuario',$data['id_Privilegios_Usuario']);
        redirect('Admin/index/9','refresh');
      }

      else{
        $this->session->set_flashdata('error_msg', 'Usuario incorrecto, intenta de nuevo');
        redirect('Admin/index/1');
      }
}
/**
 * La función ejecuta el cierre de la sesión borrando los datos de la misma.
 */
    public function logout(){
        $this->session->sess_destroy() ;
        redirect('Admin','refresh');
    }
}
?>