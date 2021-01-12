<?php 

defined('BASEPATH') OR exit("Ação nao permitida");

class Mensalistas extends CI_Controller{

	public function __construct() {
 
        parent::__construct();
        if (!$this->ion_auth->logged_in()) {
            redirect('login');
        }
    }

       
	public function index() {

		$data = array(
			'titulo' => 'Mensalistas cadastrados',
			'sub_titulo' => 'Chegou a hora de Listar  os mensalistas cadastrados no banco de dados',
			'icone_view' => 'fas fa-users',
			'styles' => array(
				'plugins/datatables.net-bs4/css/dataTables.bootstrap4.min.css',
			),
			'scripts' => array(
				'plugins/datatables.net/js/jquery.dataTables.min.js',
				'plugins/datatables.net-bs4/js/dataTables.bootstrap4.min.js',
				'plugins/datatables.net/js/estacionamento.js',
			),
			'mensalistas' => $this->core_model->get_all('mensalistas'),
		);

		
	
		//	echo '<pre>';
		//print_r($data['mensalistas']);
		//exit();

		$this->load->view('layout/header', $data);
		$this->load->view('mensalistas/index');
		$this->load->view('layout/footer');
}

}
