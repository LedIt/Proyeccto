<?php

class Faq_Mdl extends CI_Model
{
    function __construct(){
        parent::__construct();
    }
 
    public function nuevoFaq($id_Faq, $id_Usuario_Faq, $pregunta_Faq, $respuesta_Faq, $status_Faq){
        $data= array(
            'id_Faq' => $id_Faq,
            'id_Usuario_Faq' => $id_Usuario_Faq,
            'pregunta_Faq' => $pregunta_Faq,
            'respuesta_Faq'=> $respuesta_Faq,
            'satatus_Faq'=> $status_Faq
        );
        $this->db->insert('faqs', $data);
    }

    public function listarFaq(){
        $faq = $this->db->get('faqs');
        return $faq->result();
    }

    public function listarFaqFront(){
        $faq = $this->db->get('faqs');
        return $faq->result();
    }

    public function listarUnoFaq($faq){
        $data = array('id_Faq'=>$faq);
        $this->db->where($faq);
        $f = $this->db->get('faqs');
        return $f->result();
    }

   public function modificarFaq($id_Faq, $id_Usuario_Faq, $pregunta_Faq, $respuesta_Faq, $status_Faq){
        $data= array(
            'id_Faq' => $id_Faq,
            'id_Usuario_Faq' => $id_Usuario_Faq,
            'pregunta_Faq' => $pregunta_Faq,
            'respuesta_Faq'=> $respuesta_Faq,
            'satatus_Faq'=> $status_Faq,
        );
        $this->db->where("id_Faq = $i_Faq");
        $this->db->update('faqs', $data);
    }

    public function eliminarFaq($f){
        $data = array('id_Faq'=>$f);
        $this->db->where($data);
        $faq = $this->db->delete('faqs');
    }

    public function cambiarStatusFaq($id_Faq, $status_Faq){
        $data= array(
            'status_Faq' => $status_Faq
        );
        $this->db->where("id_Faq = 'id_Faq'");
        $this->db->update('faqs', $data);
    }
    
}