<?php
/**
 * Clase "controlBackEnd" controla accesos y navegación entre las diferentes vistas del lado del BackEnd.
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
 * La clase extiende o hereda de "CI_Controller" el cual servira para interactuar con los modelos.
 */
class controlBackEnd extends CI_Controller {
    function __construct(){
        parent:: __construct();
        $this->load->database();
        $this->load->helper('url');
        $this->load->library('grocery_CRUD');
        $this->load->model('Grocery_crud_model');
    }
/**
 * Función que ayuda a navegar entre las views del FrontEnd.
 */
	public function index($option = 1)
	{
		Switch ($option){
		    case 1:
			    $this->load->view('admin/backend/login_vw');
			    break;

			case 2:
			    $this->load->view('admin/backend/template/header');
			    $this->load->view('admin/backend/inicio_vw');
			    $this->load->view('admin/backend/template/footer');
			    break;    

		    case 3:
		        $galeria = new grocery_CRUD();
		        $galeria->set_theme('bootstrap-v4');
		        $galeria->set_table('galeria');
		        $galeria->set_relation('id_Usuario_Galeria','usuarios','nombre_Usuario');
		        $galeria->required_fields('id_Usuario_Galeria','titulo_Galeria','imagen_Galeria','status_Galeria');
		        $galeria->set_field_upload('imagen_Galeria','libraries/libraries-backend/images/thumbnails/galeria');
		        $galerias = $galeria->render();
		        $this->load->view('admin/backend/template/header');
		        $this->load->view('admin/backend/galeria/listar_vw',(array)$galerias);
		        $this->load->view('admin/backend/template/footer-grocery');

		       
		        break;

			case 4:
				$faq = new grocery_CRUD();
				$faq->set_theme('bootstrap-v4');
		        $faq->set_table('faqs');
		        $faq->set_relation('id_Usuario_Faq','usuarios','nombre_Usuario');
		        $faq->required_fields('id_Usuario_Faq','pregunta_Faq','respuesta_Faq','status_Faq');
		        $faqs = $faq->render();
		        $this->load->view('admin/backend/template/header');
		        $this->load->view('admin/backend/faqs/listar_vw',(array)$faqs);
		        $this->load->view('admin/backend/template/footer-grocery');

		        break;

		    case 5:
			    $noticia = new grocery_CRUD();
				$noticia->set_theme('bootstrap-v4');
		        $noticia->set_table('noticias');
		        $noticia->set_relation('id_Usuario_Noticia','usuarios','nombre_Usuario');
		        $noticia->required_fields('id_Usuario_Noticia','titulo_Noticia','imagen_Noticia','descripcion_Corta_Noticia','descripcion_Larga_Noticia','fecha_Noticia','status_Noticia');
		        $noticia->set_field_upload('imagen_Noticia','libraries/libraries-backend/images/thumbnails/noticias');
		        $noticias = $noticia->render();
		        $this->load->view('admin/backend/template/header');
		        $this->load->view('admin/backend/noticias/listar_vw',(array)$noticias);
		        $this->load->view('admin/backend/template/footer-grocery');
		        break;


		    case 6:
			    $usuario = new grocery_CRUD();
				$usuario->set_theme('bootstrap-v4');
		        $usuario->set_table('usuarios');
		        $usuario->required_fields('nombre_Usuario','apellido_Paterno_Usuario','apellido_Materno_Usuario','estado_Usuario','ciudad_Usuario','numero_Interior_Usuario','numero_Exterior_Usuario','telefono_Usuario','correo_Usuario','password','privilegios_Usuario','status_Usuario');
		        $usuarios = $usuario->render();
		        $this->load->view('admin/backend/template/header');
		        $this->load->view('admin/backend/usuarios/listar_vw',(array)$usuarios);
		        $this->load->view('admin/backend/template/footer-grocery');
		        break;

		    case 7:
			    $producto = new grocery_CRUD();
				$producto->set_theme('bootstrap-v4');
		        $producto->set_table('productos');
		        $producto->set_relation('id_Usuario_Producto','usuarios','nombre_Usuario');
		        $producto->set_relation('id_Categoria_Producto','categorias','nombre_Categoria');
		        $producto->required_fields('id_Usuario_Producto','imagen_Producto','modelo_Producto','nombre_Producto','potencia_Producto','voltaje_Producto','color_Luz_Producto','flujo_Luminoso_Producto','material_Producto','precio_Producto','stock_Producto','status_Producto');
		        $producto->set_field_upload('imagen_Producto','libraries/libraries-backend/images/thumbnails/productos');
		        $productos = $producto->render();
		        $this->load->view('admin/backend/template/header');
		        $this->load->view('admin/backend/productos/listar_vw',(array)$productos);
		        $this->load->view('admin/backend/template/footer-grocery');
		        break;

		    case 8:
 				$categoria = new grocery_CRUD();
				$categoria->set_theme('bootstrap-v4');
		        $categoria->set_table('categorias');
		        $categoria->required_fields('nombre_Categoria','imagen_Categoria','descripcion_Categoria','status_Categoria');
		        $categoria->set_field_upload('imagen_Categoria','libraries/libraries-backend/images/thumbnails/categorias');
		        $categorias = $categoria->render();
		        $this->load->view('admin/backend/template/header');
		        $this->load->view('admin/backend/categorias/listar_vw',(array)$categorias);
		        $this->load->view('admin/backend/template/footer-grocery');
		        break;
			
			}
		}
	}