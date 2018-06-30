<?php

class Noticia_Mdl extends CI_Model
{
    function __construct(){
        parent::__construct();
    }
 
    public function nuevoNoticia($id_Noticia, $id_Usuario_Noticia, $titulo_Noticia, $imagen_Noticia, $descripcion_Corta_Noticia, $descripcion_Larga_Noticia, $fecha_Noticia, $status_Noticia){
        $data= array(
            'id_Noticia' => $id_Noticia,
            'id_Usuario_Noticia' => $id_Usuario_Noticia,
            'titulo_Noticia' => $titulo_Noticia,
            'imagen_Noticia' => $imagen_Noticia,
            'descripcion_Corta_Noticia' => $descripcion_Corta_Noticia,
            'descripcion_Largas_Noticia' => $descripcion_Larga_Noticia,
            'fecha_Noticia' => $fecha_Noticia,
            'status_Noticia' => $status_Noticia 
        );
        $this->db->insert('noticias', $data);
    }

    public function listarNoticia(){
        $noti = $this->db->get('noticias');
        return $noti->result();
    }

    public function listarNoticiaFront(){
        $noti = $this->db->get('noticias');
        return $noti->result();
    }

    public function listarUnoNoticia($noti){
        $data = array('id_Noticia'=>$id_Noticia);
        $this->db->where($data);
        $noti = $this->db->get('noticias');
        return $noti->result();
    }

    public function modificarNoticia($id_Noticia, $id_Usuario_Noticia, $titulo_Noticia, $imagen_Noticia, $descripcion_Corta_Noticia, $descripcion_Larga_Noticia, $fecha_Noticia, $status_Noticia){
        $data= array(
            'id_Noticia' => $id_Noticia,
            'id_Usuario_Noticia' => $id_Usuario_Noticia,
            'titulo_Noticia' => $titulo_Noticia,
            'imagen_Noticia' => $imagen_Noticia,
            'descripcion_Corta_Noticia' => $descripcion_Corta_Noticia,
            'descripcion_Largas_Noticia' => $descripcion_Larga_Noticia,
            'fecha_Noticia' => $fecha_Noticia,
            'status_Noticia' => $status_Noticia 
        );
        $this->db->where("id_Noticia = $id_Noticia");
        $this->db->update('noticias', $data);
    }

    public function eliminarNoticia($n){
        $data = array('id_Noticia'=>$n);
        $this->db->where($data);
        $noti = $this->db->delete('noticias');
    }

     public function cambiarStatusNoticia($id_Noticia, $status_Noticia){
        $data= array(
            'status_Noticia' => $status_Noticia
        );
        $this->db->where("id_Noticia = 'id_Noticia'");
        $this->db->update('noticias', $data);
    }
    
}