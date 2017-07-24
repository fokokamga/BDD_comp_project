<?php
class Excel_data_insert_model extends CI_Model {

  public function  __construct() {
    parent::__construct();

  }

  public function Add_User($data_env,$data_env1,$data_env2,$data_env3,$data_env4,$data_env5,$data_env6,$data_env7,$data_env8,$data_env9){
    $this->db->insert('enveloppe', $data_env);
    $this->db->insert ('nature_panne',$data_env1);
    $this->db->insert ('phase_detection',$data_env2);
    $this->db->insert ('examen_visuel',$data_env3);
    $this->db->insert ('utilisateur',$data_env4);
    $this->db->insert ('produits',$data_env5);
    $this->db->insert ('codesfabricants',$data_env6);
    $this->db->insert ('composant',$data_env7);
    $this->db->insert ('rps',$data_env8);
    $this->db->insert ('expertise',$data_env9);

  }

  public function delete_User(){
    $this->db->empty_table('enveloppe');
    $this->db->empty_table('nature_panne');
    $this->db->empty_table('phase_detection');
    $this->db->empty_table('examen_visuel');
    $this->db->empty_table('utilisateur');
    $this->db->empty_table('produits');
    $this->db->empty_table('codesfabricants');
    $this->db->empty_table('composant');
    $this->db->empty_table('rps');
    $this->db->empty_table('expertise');
  }


}

?>
