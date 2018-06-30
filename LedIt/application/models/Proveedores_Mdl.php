<?php

class Proveedores_Mdl extends CI_Model
{
    function __construct(){
        parent::__construct();
    }
 


    public function nuevo($idProvee, $nombre, $apellidoP, $apellidoM, $correo, $telefono, $lab){
        $data= array(
            'idProvee' => $idProvee,
            'nombre' => $nombre,
            'apellidoP' => $apellidoP,
            'apellidoM' => $apellidoM,
            'correo' => $correo,
            'telefono' => $telefono,
            'lab' => $lab
        );
        $this->db->insert('proveedores', $data);
    }

    public function listar(){
        //get = "SELECT * FROM [tabla]
        $pro = $this->db->get('proveedores');

        return $pro->result();
    }

    public function listarUno($pro){
        $data = array('idProvee'=>$idProvee);
        $this->db->where($data);
        $p = $this->db->get('proveedores');
        return $p->result();
    }

   public function modificar($idProvee, $nombre, $apellidoP, $apellidoM, $correo, $telefono, $lab){
        $data= array(
            'idProvee' => $idProvee,
            'nombre' => $nombre,
            'apellidoP' => $apellidoP,
            'apellidoM' => $apellidoM,
            'correo' => $correo,
            'telefono' => $telefono,
            'lab' => $lab
        );
        $this->db->where("idProvee = $idProvee");
        $this->db->update('proveedores', $data);
    }

    public function eliminar($p){
        $data = array('idProvee'=>$p);
        $this->db->where($data);
        $provee = $this->db->delete('proveedores');
    }
    
}