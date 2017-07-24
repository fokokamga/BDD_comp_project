<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Edit_enveloppe_controller extends CI_Controller {

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

 	}

	public function index()
	{
		$this->load->view('header.php');
		$this->load->view('edit_enveloppe.php');
		//$this->load->view('fail_env.php');
		$this->load->view('footer.php');
	}
	public function add_env()
	{
		$this->load->helper(array('form', 'url'));
		$this->load->model('Enveloppe_model');
		$this->load->library('form_validation');


		//REGLES DE VALIDATION DU FORMUKAIRE

		//$this->form_validation->set_rules('N_Enveloppe', '', 'required'); // à rajouter dans formulaire
		//$this->form_validation->set_rules('TBU_EMS', '', 'required');
		$this->form_validation->set_rules('DATE_DEPOSE', '', 'required',array('required'=>'You have not provided Date dépose / Removal date'));
		$this->form_validation->set_rules('LIEUX_DEPOSE', '', 'required',array('required'=>'You have not provided Service /Department'));
		//$this->form_validation->set_rules('COMMENTAIRES', '', 'required');
		$this->form_validation->set_rules('N_CER', '', 'required',array('required'=>'You have not provided N°OE,OF'));
		//$this->form_validation->set_rules('N_CR', 'Anomalie', 'required');
		//$this->form_validation->set_rules('PN_SRU', '', 'required');
		//$this->form_validation->set_rules('SN_SRU', '', 'required');
		//$this->form_validation->set_rules('PN_LRU', '', 'required');
		//$this->form_validation->set_rules('SN_LRU', '', 'required');
		$this->form_validation->set_rules('DEC_EXP', '', 'required',array('required'=>'You have not provided Demande d\'expertise/Analysis'));
		//$this->form_validation->set_rules('N_eSupport', '', 'required');

		//$this->form_validation->set_rules('freq_panne', '', 'required',array('required'=>'You have not provided %s.'));
		//$this->form_validation->set_rules('temperature', '', 'required',array('required'=>'You have not provided %s.'));
		//$this->form_validation->set_rules('Vibration', '', '');
		//$this->form_validation->set_rules('CAUSE', '', 'required');

		//$this->form_validation->set_rules('deverminage', '', 'required',array('required'=>'You have not provided %s.'));
		//$this->form_validation->set_rules('typdetect', '', 'required',array('required'=>'You have not provided %s.'));
		//$this->form_validation->set_rules('Autre_Precisionphasedetect', '', 'required');

		//$this->form_validation->set_rules('Nothing_comp', '', 'required',array('required'=>'You have not provided %s.'));
		//$this->form_validation->set_rules('comment_comp', '', 'required');
		//$this->form_validation->set_rules('nothing_Brasure', '', 'required',array('required'=>'You have not provided %s.'));
		//$this->form_validation->set_rules('comment_brasure', '', '');
		//$this->form_validation->set_rules('nothing_env', '', 'required',array('required'=>'You have not provided %s.'));
		//$this->form_validation->set_rules('comment_env', '', 'required');

		$this->form_validation->set_rules('Nom_Dem', '', 'required',array('required'=>'You have not provided Nom/Name'));
		$this->form_validation->set_rules('Tel_Dem', '', 'required',array('required'=>'You have not provided Téléphone/Phone'));

		$this->form_validation->set_rules('PROGRAMME', '', 'required',array('required'=>'You have not provided %s.'));

		//$this->form_validation->set_rules('ref_sxt', '', 'required');

		//$this->form_validation->set_rules('REP_TOPO', '', 'required');
		//$this->form_validation->set_rules('FABRICANT', '', 'required');
		//$this->form_validation->set_rules('REFERENCE_FABRICANT', '', 'required');
		//$this->form_validation->set_rules('DATE_CODE', '', 'required');

		$this->form_validation->set_rules('NomRPS', '', 'required',array('required'=>'You have not provided Nom RPS'));

		//$this->form_validation->set_rules('reponse_fast', '', 'required',array('required'=>'You have not provided %s.'));




		//FIN REGLES DE VALIDATION DU FORMUKAIR

		if ($this->form_validation->run() == TRUE)
		{
			$this->load->model('Enveloppe_model');
			$data1=array(
									'N_Enveloppe'=>$this->input->post('N_Enveloppe'),
									'TBU_EMS'=>$this->input->post('TBU_EMS'),
									'DATE_DEPOSE'=>$this->input->post('DATE_DEPOSE'),
									'LIEUX_DEPOSE'=>$this->input->post('LIEUX_DEPOSE'),
									'COMMENTAIRES'=>$this->input->post('COMMENTAIRES'),
									'N_CER'=>$this->input->post('N_CER'),
									'PN_SRU'=>$this->input->post('PN_SRU'),
									'SN_SRU'=>$this->input->post('SN_SRU'),
									'PN_LRU'=>$this->input->post('PN_LRU'),
									'SN_LRU'=>$this->input->post('SN_LRU'),
									'DEC_EXP'=>$this->input->post('DEC_EXP'),
									'N_CR'=>$this->input->post('N_CR'),
									'N_eSupport'=>$this->input->post('N_eSupport')

								);

			$data2=array(
									'freq_panne'=>$this->input->post('freq_panne'),
									'temperature'=>$this->input->post('temperature'),
									'Vibration'=>$this->input->post('Vibration'),
									'CAUSE'=>$this->input->post('CAUSE')
								);
			$data3=array(
									'deverminage'=>$this->input->post('deverminage'),
									'typdetect'=>$this->input->post('typdetect'),
									'Autre_Precisionphasedetect'=>$this->input->post('Autre_Precisionphasedetect')
									);
			$data4=array(
									'Nothing_comp'=>$this->input->post('Nothing_comp'),
									'comment_comp'=>$this->input->post('comment_comp'),
									'nothing_Brasure'=>$this->input->post('nothing_Brasure'),
									'comment_brasure'=>$this->input->post('comment_brasure'),
									'nothing_env'=>$this->input->post('nothing_env'),
									'comment_env'=>$this->input->post('comment_env')

									);
			$data5=array(
									'Nom_Dem'=>$this->input->post('Nom_Dem'),
									'Tel_Dem'=>$this->input->post('Tel_Dem')

									);

			$data6=array(
									'PROGRAMME'=>$this->input->post('PROGRAMME')

									);
			$data7=array(
									'ref_sxt'=>$this->input->post('ref_sxt')
									);

			$data8=array(
									'REP_TOPO'=>$this->input->post('REP_TOPO'),
									'FABRICANT'=>$this->input->post('FABRICANT'),
									'REFERENCE_FABRICANT'=>$this->input->post('REFERENCE_FABRICANT'),
									'DATE_CODE'=>$this->input->post('DATE_CODE')
									);
			$data9=array(
									'NomRPS'=>$this->input->post('NomRPS')
									);
			$data10=array(
									'reponse_fast'=>$this->input->post('reponse_fast')
									);
			$this->Enveloppe_model->add_enveloppe($data1,$data2,$data3,$data4,$data5,$data6,$data7,$data8,$data9,$data10);

			$this->load->view('header.php');
			$this->load->view('edit_enveloppe.php');
			$this->load->view('success_env.php');
			$this->load->view('footer.php');

		}
		else
		{

			$this->load->view('header.php');
			$this->load->view('edit_enveloppe.php');
			$this->load->view('footer.php');
			$this->load->view('fail_env.php');


		}


	}

	public function view_env()
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
		$this->load->library('javascript');

		$data['results'] = $this->Enveloppe_model->get_data();
		/*$data1['DATE_DEPOSE'] = $this->Enveloppe_model->get_data();
		$data1['LIEUX_DEPOSE'] = $this->Enveloppe_model->get_data();
		$data1['COMMENTAIRES'] = $this->Enveloppe_model->get_data();
		$data1['N_CER'] = $this->Enveloppe_model->get_data();
		$data1['N_CR'] = $this->Enveloppe_model->get_data();
		$data1['PN_SRU'] = $this->Enveloppe_model->get_data();
		$data1['SN_SRU'] = $this->Enveloppe_model->get_data();
		$data1['PN_LRU'] = $this->Enveloppe_model->get_data();
		$data1['SN_LRU'] = $this->Enveloppe_model->get_data();
		$data1['DEC_EXP'] = $this->Enveloppe_model->get_data();
		$data1['N_eSupport'] = $this->Enveloppe_model->get_data();*/



		/*$data2['results'] = $this->nature_panne_model->get_data(),
		$data3['results'] = $this->codesfabricants_model->get_data(),
		$data4['results'] = $this->examen_visuel_model->get_data(),
		$data5['results'] = $this->phase_detection_model->get_data(),
		$data6['results'] = $this->produits_model->get_data(),
		$data7['results'] = $this->rps_model->get_data(),
		$data8['results'] = $this->utilisateur_model->get_data(),
		$data9['results'] = $this->composant_model->get_data()*/



		$this->load->view('header.php');
		$this->load->view('view_enveloppe.php',$data);

		$this->load->view('footer.php');

	}

}
