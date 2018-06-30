<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class controlFrontEnd extends CI_Controller {

	function __construct(){
	parent:: __construct();
	$this->load->model('Faq_Mdl');
	$this->load->model('Noticia_Mdl');
	$this->load->model('Usuario_Mdl');
	}


	public function index($option = 1)
	{
		$this->load->view('frontend/template/header');
		Switch($option){
			
			case 1:
			$this->load->view('frontend/inicio_vw');
			break;

			case 2:
			$this->load->view('frontend/productos_vw');
			break;

			case 3:$this->load->view('frontend/galeria_vw');
			break;
			
			case 4:
			$data['faqs'] = $this->Faq_Mdl->listarFaqFront();
			$this->load->view('frontend/faq_vw',$data);
			break;
			
			case 5:
			$data['noticias'] = $this->Noticia_Mdl->listarNoticiaFront();
			$this->load->view('frontend/noticias_vw',$data);
			break;

			case 6:
			$this->load->view('frontend/contacto_vw');
			break;

			case 7:
			$this->load->view('frontend/login_vw');
			break;

			case 8:
			$this->load->view('frontend/registro_vw');
			break;

			case 9:
			$this->load->view('frontend/carrito_vw');
			break;
		}
		$this->load->view('frontend/template/footer');

	}
}

?>



