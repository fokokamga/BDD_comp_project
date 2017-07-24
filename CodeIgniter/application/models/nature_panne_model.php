<?php

class nature_panne_model extends CI_Model
{
  function __construct()
  {
    parent::__construct();
  }

  function insert_env($data2)
  {
    $freq_panne=$data2['freq_panne'];
    $temperature=$data2['temperature'];
    $Vibration=$data2['Vibration'];
    $CAUSE=$data2['CAUSE'];
    $this->db->query ("INSERT INTO nature_panne	(freq_panne,temperature,Vibration,CAUSE,enveloppe_id_env) VALUES ('$freq_panne','$temperature','$Vibration','$CAUSE',LAST_INSERT_ID())");

    return;
  }


  function read()
  {
    $q = $this->db->get('nature_panne');
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
    $this->db->where('idnature_panne',$id);
    $this->db->delete('nature_panne');
  }

  function update($id,$data)
  {
    $this->db->where('idnature_panne',$id);
    $this->db->update('nature_panne',$data);
  }

  function get_all($id)
  {
    $this->db->where('idnature_panne',$id);
    $q = $this->db->get('nature_panne');
    if($q->num_rows()>0)
    {
      $row = $q->row();
      return $row;
    }
  }

  function create($data)
  {
    $this->db->insert('nature_panne',$data);
  }

}
