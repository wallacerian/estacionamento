<?php 

defined('BASEPATH') OR exit("Ação nao permitida");

class Usuarios extends CI_Controller{

	public function index() {

		$data = array(
			'titulo' => 'Usuários cadastrado',
			'sub_titulo' => 'Chegou a hora de Listar  os usuários cadastrados no banco de dados',
			'usuarios' =>  $this->ion_auth->users()->result(), // get all users

			'styles' => array(
				'plugins/datatables.net-bs4/css/dataTables.bootstrap4.min.css',
			),
			
			'scripts' => array(
				'plugins/datatables.net/js/jquery.dataTables.min.js',
				'plugins/datatables.net-bs4/js/dataTables.bootstrap4.min.js',
				'plugins/datatables.net/js/estacionamento.js',
			),
			'usuarios' => $this->ion_auth->users()->result(),
		);

		
			$data = array(
				'titulo' => 'Usuários cadastrado',
				'sub_titulo' => 'Chegou a hora de Listar  os usuários cadastrados no banco de dados',
				'usuarios' =>  $this->ion_auth->users()->result(), // get all users
	
				'styles' => array(
					'plugins/datatables.net-bs4/css/dataTables.bootstrap4.min.css',
				),
				
				'scripts' => array(
					'plugins/datatables.net/js/jquery.dataTables.min.js',
					'plugins/datatables.net-bs4/js/dataTables.bootstrap4.min.js',
					'plugins/datatables.net/js/estacionamento.js',
				),
				'usuarios' => $this->ion_auth->users()->result(),
			);
			
	
	
		//	echo '<pre>';
		//print_r($data['usuarios']);
		//exit();

		$this->load->view('layout/header', $data);
		$this->load->view('usuarios/index');
		$this->load->view('layout/footer');
}

public function core($usuario_id = NULL) {

        if(!$usuario_id) {

			exit('Pode cadastrar novo usuario');

			//cadastro de novo usuário
		} else {

		   //Editar o usuário
		   if (!$this->ion_auth->user($usuario_id)->row()) {

			exit('Usuário não existe');

		   } else {

			  //Editar usuário

			  $data = array(
				'titulo' => 'Editar usuário',
				'sub_titulo' => 'Chegou a hora de Editar  o usuário',
				'icone_view' =>'ik ik-user',
				'usuario' =>  $this->ion_auth->user($usuario_id)->row(), // get all users
	
			);
			
	
	
			//echo '<pre>';
		//print_r($data['usuario']);
		//exit();
	
		$this->load->view('layout/header', $data);
		$this->load->view('usuarios/core');
		$this->load->view('layout/footer');
		   }
		}
}

}



