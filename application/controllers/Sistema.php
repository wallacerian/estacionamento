<?php

defined('BASEPATH')  OR exit('Ação não permitida');

class Sistema extends CI_Controller{
	
	public function _construct() {
		parent::_construct();
		
		if (!$this->ion_auth->logged_in()) {
			redirect('login');
		}
	}

	public function index(){
		
		$data = array(
			'titulo' => 'Editar informaçoes do sistema',
			'sub_titulo' => 'Chegou a hora de Editar as informações do sistema',
			'icone_view' =>'ik ik-settings',
			'scripts' => array(
				'plugins/mask/jquery.mask.min.js',
				'plugins/mask/custom.js',
			),
			'sistema' => $this->core_model->get_by_id('sistema', array('sistema_id' => 1)),

		);
		


	//	echo '<pre>';
	  //  print_r($data['sistema']);
		// exit();

	$this->load->view('layout/header', $data);
	$this->load->view('sistema/index');
	$this->load->view('layout/footer');
	}
}
