<?php

class Usuario_Mdl extends CI_Model
{
    function __construct(){
        parent::__construct();
    }
 

        public function login($user, $password){
            $data = array( 'user' => $user, 'password' => $password);
            $this->db->where($data);
            $usu = $this->db->get('usuarios');
            return $usu->num_rows();

    }

        public function logout(){
              $array_items = array('user' => '', 'password' => '');
                $this->session->unset_userdata($array_items);
        }


    public function registro($idUsuario, $nombre, $apellidoP, $apellidoM, $puesto, $cedula, $user, $pass, $privilegios, $status){
        $data= array(
            'idUsuario' => $idUsuario,
            'nombre' => $nombre,
            'apellidoP' => $apellidoP,
            'apellidoM' => $apellidoM,
            'puesto' => $puesto,
            'cedula' => $cedula,
            'user' => $user,
            'pass' => md5($pass),
            'privilegios' => $privilegios,
            'status' => $status
        );
        $this->db->insert('usuarios', $data);
    }



    public function listar(){
        $usu = $this->db->get('usuarios');

        return $usu->result();
    }


    public function listarUno($user){
        $data = array('idUsuario'=>$user);
        $this->db->where($data);
        $usu = $this->db->get('usuarios');

        return $usu->result();
    }


    public function modificar( $idUsuario, $nombre, $apellidoP, $apellidoM, $puesto, $cedula, $user, $pass, $privilegios, $status){
        $data= array(
            'idUsuario' => $idUsuario,
            'nombre' => $nombre,
            'apellidoP' => $apellidoP,
            'apellidoM' => $apellidoM,
            'puesto' => $puesto,
            'cedula' => $cedula,
            'user' => $user,
            'pass' => $pass,
            'privilegios' => $privilegios,
            'status' => $status,
        );
        $this->db->where("idUsuario = $idUsuario");
        $this->db->update('usuarios', $data);
    }


    public function eliminar($u){
        $data = array('idUsuario'=>$u);
        $this->db->where($data);
        $usu = $this->db->delete('usuarios');
    }


    public function cambiar($idUsuario, $status){
        $data= array(
            'status' => $status
        );
        $this->db->where("idUsuario = 'idUsuario'");
        $this->db->update('usuarios', $data);
    }
    
}