<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class view_enveloppe_model extends CI_Model {


	public function get_env()
	{
			$this->db->select('*');
	    $this->db->from('enveloppe');
	    $this->db->join('nature_panne', 'nature_panne.enveloppe_id_env = enveloppe.id_env');
	    $this->db->join('phase_detection', 'phase_detection.enveloppe_id_env = enveloppe.id_env');
	    $this->db->join('examen_visuel', 'examen_visuel.enveloppe_id_env = enveloppe.id_env');
	    $this->db->join('composant', 'composant.enveloppe_id_env = enveloppe.id_env');


		return $this->db->get("enveloppe");


	}
	public function get_env1()
	{
		return $this->db->get("nature_panne");
	}
	public function get_env2()
	{
		return  $this->db->get("phase_detection");
	}
	public function get_env3()
	{
		return $this->db->get("examen_visuel");
	}
	public function get_env4()
	{
		return  $this->db->get("utilisateur");
	}
	public function get_env5()
	{
		return  $this->db->get("produits");
	}
	public function get_env6()
	{
		return $this->db->get("codesfabricants");
	}
	public function get_env7()
	{
		return $this->db->get("composant");
	}
	public function get_env8()
	{
		return $this->db->get("rps");
	}
	public function get_env9()
	{
		return $this->db->get("expertise");
	}
}

?>
