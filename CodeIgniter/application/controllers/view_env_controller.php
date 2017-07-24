<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class view_env_controller extends CI_Controller {

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

	public function __construct()
	{
		parent::__construct();
		$this->load->model('view_enveloppe_model');



	}

	public function index()
	{

		$this->load->helper('url');
		$this->load->view('header');
		$this->load->view('view_enveloppe',array());
		$this->load->view('footer');


	}

	public function ajax_list()
	{
		// Datatables Variables
		$draw = intval($this->input->get("draw"));
		$start = intval($this->input->get("start"));
		$length = intval($this->input->get("length"));
		$env = $this->view_enveloppe_model->get_env();

		//$env1 = $this->view_enveloppe_model->get_env1();
		$env2 = $this->view_enveloppe_model->get_env2();
		$env3 = $this->view_enveloppe_model->get_env3();
		$env4 = $this->view_enveloppe_model->get_env4();
		$env5 = $this->view_enveloppe_model->get_env5();
		$env6 = $this->view_enveloppe_model->get_env6();
		$env7 = $this->view_enveloppe_model->get_env7();
		$env8 = $this->view_enveloppe_model->get_env8();
		$env9 = $this->view_enveloppe_model->get_env9();
		$dat = array();/*$dat1 = array();*/$dat2 = array();$dat3 = array();$dat4 = array();$dat5 = array();$dat6 = array();$dat7 = array();$dat8 = array();$dat9 = array();
		foreach($env->result() as $r) {
			$dat[] = array(

				$r->id_env,
				$r->N_Enveloppe,
				$r->TBU_EMS,
				$r->Date_Saisie,
				$r->DATE_DEPOSE,
				$r->LIEUX_DEPOSE,
				$r->COMMENTAIRES,
				$r->N_CER,
				$r->N_CR,
				$r->PN_SRU,
				$r->SN_SRU,
				$r->PN_LRU,
				$r->SN_LRU,
				$r->DEC_EXP,
				$r->N_eSupport





			);//var_dump($env);
		}
		$output = array(
			"draw" => $draw,
			"recordsTotal" => $env->num_rows(),
			"recordsFiltered" => $env->num_rows(),
			"dat" => $dat
		);

		echo json_encode($output);

		/*foreach($env1->result() as $r) {
			$dat1[] = array(
				$r->freq_panne,
				$r->temperature,
				$r->Vibration,
				$r->CAUSE
			);
		}
		$output1 = array(
			"draw" => $draw,
			"recordsTotal" => $env1->num_rows(),
			"recordsFiltered" => $env1->num_rows(),
			"dat" => $dat1
		);
		echo json_encode($output1);*/

		foreach($env2->result() as $r) {
			$dat2[] = array(
				$r->deverminage,
				$r->typdetect,
				$r->Autre_Precisionphasedetect

			);
		}
		$output2 = array(
			"draw" => $draw,
			"recordsTotal" => $env2->num_rows(),
			"recordsFiltered" => $env2->num_rows(),
			"dat" => $dat2
		);
		echo json_encode($output2);

		foreach($env3->result() as $r) {
			$dat3[] = array(
				$r->Nothing_comp,
				$r->comment_comp,
				$r->nothing_Brasure,
				$r->comment_brasure,
				$r->nothing_env,
				$r->comment_env

			);
		}
		$output3 = array(
			"draw" => $draw,
			"recordsTotal" => $env3->num_rows(),
			"recordsFiltered" => $env3->num_rows(),
			"dat" => $dat3
		);
		echo json_encode($output3);

		foreach($env4->result() as $r) {
			$dat4[] = array(
				$r->Nom_Dem,
				$r->Tel_Dem
			);
		}
		$output4 = array(
			"draw" => $draw,
			"recordsTotal" => $env4->num_rows(),
			"recordsFiltered" => $env4->num_rows(),
			"dat" => $dat4
		);
		echo json_encode($output4);

		foreach($env5->result() as $r) {
			$dat5[] = array(
				$r->PROGRAMME
			);
		}
		$output5 = array(
			"draw" => $draw,
			"recordsTotal" => $env5->num_rows(),
			"recordsFiltered" => $env5->num_rows(),
			"dat" => $dat5
		);
		echo json_encode($output5);

		foreach($env6->result() as $r) {
			$dat6[] = array(
				$r->ref_sxt
			);
		}
		$output6 = array(
			"draw" => $draw,
			"recordsTotal" => $env6->num_rows(),
			"recordsFiltered" => $env6->num_rows(),
			"dat" => $dat6
		);
		echo json_encode($output6);

		foreach($env7->result() as $r) {
			$dat7[] = array(
				$r->REP_TOPO,
				$r->FABRICANT,
				$r->REFERENCE_FABRICANT,
				$r->DATE_CODE
			);
		}
		$output7 = array(
			"draw" => $draw,
			"recordsTotal" => $env7->num_rows(),
			"recordsFiltered" => $env7->num_rows(),
			"dat" => $dat7
		);
		echo json_encode($output7);

		foreach($env8->result() as $r) {
			$dat8[] = array(
				$r->NomRPS
			);
		}
		$output8 = array(
			"draw" => $draw,
			"recordsTotal" => $env8->num_rows(),
			"recordsFiltered" => $env8->num_rows(),
			"dat" => $dat8
		);
		echo json_encode($output8);

		foreach($env9->result() as $r) {
			$dat9[] = array(
				$r->reponse_fast
			);
		}
		$output9 = array(
			"draw" => $draw,
			"recordsTotal" => $env9->num_rows(),
			"recordsFiltered" => $env9->num_rows(),
			"dat" => $dat9
		);
		echo json_encode($output9);
		exit();

	}


}
