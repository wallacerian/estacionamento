<?php

defined('BASEPATH') OR exit('Ação não permitida');

class Login extends CI_Controller{

	public function index() {

		$data = array(
			'titulo' => 'login',
		);

		$this->load->view('layout/header', $data);
		$this->load->view('login/index');
		$this->load->view('layout/footer');
	}

	public function auth() {

	 $identity = html_escape($this->input->post('email'));
     $password =  html_escape($this->input->post('password'));
     $remember = FALSE; // remember the user
	
	 if($this->ion_auth->login($identity, $password, $remember)){
		 $this->session->set_flashdata('sucesso', 'sejá bem vindo (a)!');
         redirect('/');
	  } else {
		 $this->session->set_flashdata('error', 'Verique seu e-mail ou senha');
		 redirect($this->router->fetch_class());
	  }
	}
	public function logout() {

		$this->ion_auth->logout();
		redirect($this->router->fetch_class());
	}
}
