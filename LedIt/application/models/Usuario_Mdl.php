<?php
/**
 * Clase "Usuario_Mdl" procesa y realiza las funciones de agregado,listado,modificación y eliminación interactuando deirectamente con los datos.
 *
 *
 * @category   Class/Model
 * @package    application
 * @subpackage models
 * @copyright  Copyright (c) 2018-2019 Revoltech Inc.
 * @version    Release: 1.0
 * @since      Class available since Release 1.0
 * @deprecated Class deprecated in Release 1.1
 */

/**
 * La clase extiende o hereda de "CI_Model" el cual servira para comunicarse con su controlador.
 */
class Usuario_Mdl extends CI_Model{
    function __construct(){
        parent::__construct();
    }
/**
 * La función valida los datos ingresados en el formulario de login para conceder o denegar el acceso a la parte de administrador del sitio.
 */ 
    public function login($email, $password){
            $data = array( 'correo_Usuario' => $email, 'password' => $password);
            $this->db->where($data);
            $usu = $this->db->get('usuarios');
            return $usu->num_rows();
        }
/**
 * La función ejecuta el cierre de la sesión borrando los datos de la misma.
 */
    public function logout(){
              $array_items = array('correo_Usuario' => '', 'password' => '');
                $this->session->unset_userdata($array_items);
        }
}
?>