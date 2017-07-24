<?php

class phase_detection_model extends CI_Model
{
  function __construct()
  {
    parent::__construct();
  }
  function insert_env($data3)
  {
    $deverminage=$data3['deverminage'];
    $typdetect=$data3['typdetect'];
    $Autre_Precisionphasedetect=$data3['Autre_Precisionphasedetect'];
    $this->db->query ("INSERT INTO phase_detection(deverminage,typdetect,Autre_Precisionphasedetect,enveloppe_id_env) VALUES ('$deverminage','$typdetect','$Autre_Precisionphasedetect',LAST_INSERT_ID())");

    return;
  }

  function read()
  {
    $q = $this->db->get('phase_detection');
    if($q->num_rows()>0)
    {
      foreach($q->result() as $row)
      {
        $data[] = $row;
      }
      return $data;
    }
  }

  function delete($id)
  {
    $this->db->where('idPhase_Detection',$id);
    $this->db->delete('phase_detection');
  }

  function update($id,$data)
  {
    $this->db->where('idPhase_Detection',$id);
    $this->db->update('phase_detection',$data);
  }

  function get_all($id)
  {
    $this->db->where('idPhase_Detection',$id);
    $q = $this->db->get('phase_detection');
    if($q->num_rows()>0)
    {
      $row = $q->row();
      return $row;
    }
  }

  function create($data)
  {
    $this->db->insert('phase_detection',$data);
  }

}
