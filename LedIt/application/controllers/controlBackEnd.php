<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class controlBackEnd extends CI_Controller {

	function __construct(){
	parent:: __construct();
	$this->load->model('Faq_Mdl');
	$this->load->model('Noticia_Mdl');
	$this->load->model('Usuario_Mdl');

	}

	public function index($option = 1)
	{
		
		Switch($option){
			case 1:
			$this->load->view('admin/backend/login_vw');
			break;

			case 2:
			$this->load->view('admin/backend/template/header');
			$this->load->view('admin/backend/inicio_vw');
			$this->load->view('admin/backend/template/footer');
			break;

			case 3:
			$this->load->view('admin/backend/template/header');
			$data['faqs'] = $this->Faq_Mdl->listarFaq();
			$this->load->view('admin/backend/faqs/listar_vw',$data);
			$this->load->view('admin/backend/template/footer');
			break;

			case 4:
			$this->load->view('admin/backend/template/header');
			$this->load->view('admin/backend/galeria/listar_vw');
			$this->load->view('admin/backend/template/footer');
			break;

			case 5:
			$this->load->view('admin/backend/template/header');
			$data['noticias'] = $this->Noticia_Mdl->listarNoticia();
			$this->load->view('admin/backend/noticias/listar_vw',$data);
			$this->load->view('admin/backend/template/footer');
			break;


		}
		
	}
}