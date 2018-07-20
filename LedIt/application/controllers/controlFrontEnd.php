<?php
/**
 * Clase "controlFrontEnd" controla accesos y navegación entre las diferentes vistas del lado del FrontEnd.
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
 * La clase extiende o hereda de "CI_Controller" el cual servira para cargar las diferentes vistas.
 */
class controlFrontEnd extends CI_Controller {
    function __construct(){
        parent:: __construct();
        $this->load->model('Faq_Mdl');
        $this->load->model('Noticia_Mdl');
        $this->load->model('Usuario_Mdl');
        $this->load->model('Galeria_Mdl');
        $this->load->model('Producto_Mdl');
        $this->load->model('Categoria_Mdl');
    }
/**
 * Función que ayuda a navegar entre las views del FrontEnd.
 */
public function calendario(){
		$config['start_day'] = 'Monday';

		$this->load->library('calendar', $config);
		$data['titulo']='Libreria Calendar';
		$data['contenido']='Calendario';

		
		$this->load->view('frontend/template/footer', $data);
	}

	public function index($option = 1)
	{
		$this->load->view('frontend/template/header');
		Switch ($option){
		    case 1:
			    $data['productos'] =$this->Producto_Mdl->ListarProductoFront();
			    $this->load->view('frontend/inicio_vw',$data);
			    break;

		    case 2:
			    $data['categorias'] =$this->Categoria_Mdl->ListarCategoriaFront();
			    $this->load->view('frontend/categorias_vw',$data);
			    break;

		    case 3:
			    $data['galeria'] =$this->Galeria_Mdl->ListarGaleriaFront();
			    $this->load->view('frontend/galeria_vw',$data);
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



