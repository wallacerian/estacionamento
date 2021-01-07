<?php

defined('BASEPATH') or exit("Ação nao permitida");

class Precificacoes extends CI_Controller
{

	public function __construct()
	{

		parent::__construct();
		if (!$this->ion_auth->logged_in()) {
			redirect('login');
		}
	}


	public function index()
	{

		$data = array(
			'titulo' => 'Precificações cadastradas',
			'sub_titulo' => 'Chegou a hora de Listar  as precificações cadastradas no banco de dados',
			'icone_view' => 'fas fa-dollar-sign',
			'styles' => array(
				'plugins/datatables.net-bs4/css/dataTables.bootstrap4.min.css',
			),

			'scripts' => array(
				'plugins/datatables.net/js/jquery.dataTables.min.js',
				'plugins/datatables.net-bs4/js/dataTables.bootstrap4.min.js',
				'plugins/datatables.net/js/estacionamento.js',
			),
			'precificacoes' => $this->core_model->get_all('precificacoes'),
		);




		//echo '<pre>';
		//print_r($data['precificacoes']);
		//exit();

		$this->load->view('layout/header', $data);
		$this->load->view('precificacoes/index');
		$this->load->view('layout/footer');
	}

	public function core($precificacao_id = NULL)
	{

		if (!$precificacao_id) {
			//Cadastrando
		} else {
			//Atualizando
			if (!$this->core_model->get_by_id('precificacoes', array('precificacao_id' => $precificacao_id))) {
				$this->session->set_flashdata('error', 'Precificação não encontrada');
				redirect($this->router->fetch_class());
			} else {
				/*
				[precificacao_id] => 1
				[precificacao_categoria] => Veiculo pequeno
				[precificacao_valor_hora] => 10,00
				[precificacao_valor_mensalidade] => 130,00
				[precificacao_numero_vagas] => 30
				[precificacao_ativa] => 1
				
                   */
				$this->form_validation->set_rules('precificacao_categoria', 'Categoria', 'trim|required
				');

				if($this->form_validation->run()){
				  
					echo '<pre>';
					print_r($this->input->post());
					exit();
				}else{
					$data = array(
						'titulo' => 'Editar precificação',
						'sub_titulo' => 'Chegou a hora de editar  a precificação',
						'icone_view' => 'fas fa-dollar-sign',
						'scripts' => array(
							'plugins/mask/jquery.mask.min.js',
							'plugins/mask/custom.js',
						),
						'precificacao' => $this->core_model->get_by_id('precificacoes', array('precificacao_id' => $precificacao_id)),
					);
	
					
	
					$this->load->view('layout/header', $data);
					$this->load->view('precificacoes/core');
					$this->load->view('layout/footer');
				}
				
			}
		}
	}
}
