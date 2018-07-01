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
 * La clase extiende o hereda de "CI_Controller" el cual servira para interactuar con su módelo.
 */
class Usuario extends CI_Controller {
    function __construct(){
	    parent:: __construct();
	    $this->load->model('Usuario_Mdl');
}
/**
 * La función permite el acceso para administrar el sitio, en el cual se verifica el usUario y contraseña, los cuales se obtinen del formulario de login para capturar los campos.
 */
    public function login(){
        $email = $this->input->POST('correo_Usuario');
        $password = $this->input->POST('password');
        $val = $this->Usuario_Mdl->login($email, $password);
        if ($val === 0){
            redirect('controlBackEnd/index/1');
        }else{
            $this->session->set_userdata('usuarios', $email);
            redirect('controlBackEnd/index/2');
        }
    }
/**
 * La función permite cerrar la sesión actual de un usuario.
 */
    public function logout(){
        $this->session->sess_destroy() ;
        redirect('controlBackEnd/index/1');
    }
}
?>