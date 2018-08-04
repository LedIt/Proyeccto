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

  private $_user_id;
  private $_user_name;
  private $_user_email;
  private $_user_password;
  private $_user_age;
  private $_user_mobile;

    function __construct($_user_id=null, $_user_name=null, $_user_email=null, $_user_password=null, $_user_age=null, $_user_mobile=null){
    $this->_user_id = $_user_id;
    $this->_user_name = $_user_name;
    $this->_user_email = $_user_email;
    $this->_user_password = $_user_password;
    $this->_user_age = $_user_age;
    $this->_user_mobile = $_user_mobile;
    }

public function get_user_id(){
  return $this->_user_id;
}
public function set_user_id($_user_id){
  $this->_user_id = $_user_id;
}


public function get_user_name(){
  return $this->_user_name;
}
public function set_user_name($_user_name){
  $this->_user_name = $_user_name;
}


public function get_user_email(){
  return $this->_user_email;
}
public function set_user_email($_user_email){
  $this->_user_email = $_user_email;
}


public function get_user_password(){
  return $this->_user_password;
}
public function set_user_password($_user_password){
  $this->_user_password = $_user_password;
}


public function get_user_age(){
  return $this->_user_age;
}
public function set_user_age($_user_age){
  $this->_user_age = $_user_age;
}


public function get_user_mobile(){
  return $this->_user_mobile;
}
public function set_user_mobile($_user_mobile){
  $this->_user_mobile = $_user_mobile;
}
/**
 * La función valida los datos ingresados en el formulario de login para conceder o denegar el acceso a la parte de administrador del sitio.
 */ 

public function register_user(){
$this->db->set('user_id',0);
$this->db->set('user_name',$this->_user_name);
$this->db->set('user_email',$this->_user_email);
$this->db->set('user_password',$this->_user_password);
$this->db->set('user_age',$this->_user_age);
$this->db->set('user_mobile',$this->_user_mobile);
$this->db->insert('user');
}


public function login($correo, $password){
$data = array(
'correo_Usuario' => $correo,
'password' =>$password
);

  $this->db->where($data);
  if($query=$this->db->get_where('usuarios','id_Status_Usuario = 1'))
  {
      return $query->row_array();
  }
  else{
    return false;
  }
}

public function email_check($email){
  $this->db->select('*');
  $this->db->from('user');
  $this->db->where('user_email',$email);
  $query=$this->db->get();

  if($query->num_rows()>0){
    return false;
  }else{
    return true;
  }

}



}
?>