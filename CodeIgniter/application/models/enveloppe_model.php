<?php

class Enveloppe_model extends CI_Model
{
  function __construct()
  {
    parent::__construct();
    //$N_Enveloppe=50695;
    $this->db->select('N_Enveloppe');
    $this->db->get('enveloppe');
    $this->db->set('N_Enveloppe', 50695);

  }

  public function add_enveloppe($data1,$data2,$data3,$data4,$data5,$data6,$data7,$data8,$data9,$data10)

  {
    /*  $this->db->select('*');
    $this->db->from('enveloppe');
    $this->db->join('nature_panne', 'nature_panne.enveloppe_id_env = enveloppe.id_env');
    $this->db->join('phase_detection', 'phase_detection.enveloppe_id_env = enveloppe.id_env');
    $this->db->join('examen_visuel', 'examen_visuel.enveloppe_id_env = enveloppe.id_env');
    $this->db->join('composant', 'composant.enveloppe_id_env = enveloppe.id_env');*/


    /*$this->db->insert ('enveloppe',$data1);
    $this->db->select('id_env');
    $id_env = $this->db->get('enveloppe');
    //$this->db->query('UPDATE enveloppe SET N_Enveloppe = N_Enveloppe+1 WHERE id_env='$id_env') ');

    $da1 = array($data2,'enveloppe_id_env'=> $id_env);
    $this->db->insert ('nature_panne',$da1);

    $da2 = array($data3, 'enveloppe_id_env'=> $id_env);
    $this->db->insert ('phase_detection',$da2);

    $da3 = array($data4, 'enveloppe_id_env'=> $id_env);
    $this->db->insert ('examen_visuel',$da3);

    $this->db->insert ('utilisateur',$data5);

    $this->db->insert ('produits',$data6);

    $this->db->select('id_produit');
    $id_produit = $this->db->get('produits');

    $da5 = array($data8, 'enveloppe_id_env'=> $id_env);
    $this->db->insert ('composant',$da5);

    $this->db->select('code_thav');
    $code_thav = $this->db->get('composant');

    $da4 = array($data7, 'composant_code_thav'=> $code_thav);
    $this->db->insert ('codesfabricants',$da4);

    $this->db->insert ('expertise',$data10);

    $this->db->select('Ordre_exp');
    $Ordre_exp = $this->db->get('expertise');

    $da6 = array($data9, 'produits_id_produit'=> $id_produit,'enveloppe_id_env'=> $id_env,'utilisateur_id_user'=> $id_user,'expertise_Ordre_exp'=> $Ordre_exp);
    $this->db->insert ('rps',$da6);*/

    $this->db->insert ('enveloppe',$data1);
      $freq_panne=$data2['freq_panne'];
      $temperature=$data2['temperature'];
      $Vibration=$data2['Vibration'];
      $CAUSE=$data2['CAUSE'];


    $this->db->query ("INSERT INTO nature_panne	(freq_panne,temperature,Vibration,CAUSE,enveloppe_id_env) VALUES ('$freq_panne','$temperature','$Vibration','$CAUSE',LAST_INSERT_ID())");
    //$this->db->query ('INSERT INTO phase_detection(deverminage,typdetect,Autre_Precisionphasedetect) VALUES ('deverminage','typdetect','Autre_Precisionphasedetect',LAST_INSERT_ID())');
    //$this->db->query ('INSERT INTO examen_visuel(Nothing_comp,comment_comp,nothing_Brasure,comment_brasure,nothing_env,comment_env,enveloppe_id_env) VALUES ('Nothing_comp','comment_comp','nothing_Brasure','comment_brasure','nothing_env','comment_env',LAST_INSERT_ID())');
    /*$this->db->query ('INSERT INTO composant(REP_TOPO,FABRICANT,REFERENCE_FABRICANT,DATE_CODE,enveloppe_id_env) VALUES ('REP_TOPO','FABRICANT','REFERENCE_FABRICANT','DATE_CODE',LAST_INSERT_ID())');


    $this->db->query ('INSERT INTO codesfabricants(ref_sxt,composant_code_thav) VALUES ('ref_sxt',LAST_INSERT_ID())');


    $this->db->insert ('utilisateur',$data5);
    $this->db->insert ('produits',$data6);
    $this->db->query ('INSERT INTO expertise(reponse_fast) VALUES ('reponse_fast')');

    $this->db->query ('INSERT INTO rps	(NomRPS,produits_id_produit,enveloppe_id_env,utilisateur_id_user,expertise_Ordre_exp) VALUES ('NomRPS',LAST_INSERT_ID(),LAST_INSERT_ID(),LAST_INSERT_ID())');

    */
    /*$this->db->select('*');
    $this->db->from('composant');
    $this->db->join('codesfabricants', 'codesfabricants.composant_code_thav = composant.code_thav');*/


    //  $query = $this->db->get();

    $this->db->insert ('enveloppe',$data1);
    //$incr=$this->db->query('UPDATE enveloppe SET N_Enveloppe = N_Enveloppe+1 WHERE id_env='$id_env') ');
    $this->db->insert ('nature_panne',$data2);
    $this->db->insert ('phase_detection',$data3);
    $this->db->insert ('examen_visuel',$data4);
    $this->db->insert ('utilisateur',$data5);
    $this->db->insert ('produits',$data6);
    $this->db->insert ('expertise',$data10);
    $this->db->insert ('composant',$data8);
    $this->db->insert ('codesfabricants',$data7);
    $this->db->insert ('rps',$data9);


    return;
  }

  public function get_num_env()
  {
    //$this->db->update('enveloppe', $data, "id_env=LAST_INSERT_ID()");

    $this->db->query('UPDATE enveloppe SET N_Enveloppe = N_Enveloppe+1 WHERE id_env=LAST_INSERT_ID()) ');

  }

  /*public function get_data()
  {
  $this->db->order_by('id_env','desc');
  $query1=$this->db->get('enveloppe');
  if($query1->num_rows() > 0){
  foreach ($query1->result() as $row)
  {
  $data1[]=$row;
}

}
return $data1;

}*/

}

/* End of file livreor_model.php */
/* Location: ./application/models/livreor_model.php */
