<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User_controller extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	 public function index()
	 {

	 	//$this->load->database();
	 	//$this->load->model('enveloppe_model');
	 	$this->load->view('header.php');
	 	$this->load->view('login_user.php');
	 	$this->load->view('footer.php');
	 }

	public function connexion()
	{
		$this->load->helper(array('form', 'url'));
		//$this->load->model('utilisateur_model');
		$this->load->library('form_validation');

		//REGLES DE VALIDATION DU FORMUKAIRE
		$this->form_validation->set_rules('N_TGI', '', 'required');
		$this->form_validation->set_rules('Mot_de_passe', '', 'required');




		//FIN REGLES DE VALIDATION DU FORMUKAIR

		if ($this->form_validation->run() == true)
		{
			$this->load->view('header.php');
			$this->load->view('profil_user.php');
			$this->load->view('footer.php');
			$this->load->view('success_user.php');

		}
		else
		{

			$this->load->view('header.php');
			$this->load->view('login_user.php');
			$this->load->view('footer.php');
			$this->load->view('fail_user.php');


		}


	}

	public function view_user()
	{
		$this->load->model('Enveloppe_model');
		$this->load->model('nature_panne_model');
		$this->load->model('codesfabricants_model');
		$this->load->model('composant_model');
		$this->load->model('examen_visuel_model');
		$this->load->model('phase_detection_model');
		$this->load->model('produits_model');
		$this->load->model('rps_model');
		$this->load->model('utilisateur_model');

		$datarescue=array(
					$data1['results'] = $this->Enveloppe_model->get_data(),
					$data2['results'] = $this->nature_panne_model->get_data(),
					$data3['results'] = $this->codesfabricants_model->get_data(),
					$data4['results'] = $this->examen_visuel_model->get_data(),
					$data5['results'] = $this->phase_detection_model->get_data(),
					$data6['results'] = $this->produits_model->get_data(),
					$data7['results'] = $this->rps_model->get_data(),
					$data8['results'] = $this->utilisateur_model->get_data(),
					$data9['results'] = $this->composant_model->get_data()
				);


		//$this->load->view('header.php');
		$this->load->view('view_enveloppe.php',$datarescue);

		//$this->load->view('footer.php');

	}

}
