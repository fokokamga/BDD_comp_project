<?php

class composant_model extends CI_Model
{
  function __construct()
  {
    parent::__construct();
  }
  function insert_env($data8)
  {
    $REP_TOPO=$data8['REP_TOPO'];
    $FABRICANT=$data8['FABRICANT'];
    $REFERENCE_FABRICANT=$data8['REFERENCE_FABRICANT'];
    $DATE_CODE=$data8['DATE_CODE'];
    $this->db->query ("INSERT INTO composant(REP_TOPO,FABRICANT,REFERENCE_FABRICANT,DATE_CODE,enveloppe_id_env) VALUES ('$REP_TOPO','$FABRICANT','$REFERENCE_FABRICANT','$DATE_CODE',LAST_INSERT_ID())");

    return;
  }


  function read()
  {
    $q = $this->db->get('composant');
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
    $this->db->where('code_thav',$id);
    $this->db->delete('composant');
  }

  function update($id,$data)
  {
    $this->db->where('code_thav',$id);
    $this->db->update('composant',$data);
  }

  function get_all($id)
  {
    $this->db->where('code_thav',$id);
    $q = $this->db->get('composant');
    if($q->num_rows()>0)
    {
      $row = $q->row();
      return $row;
    }
  }

  function create($data)
  {
    $this->db->insert('composant',$data);
  }
}
}

/* End of file livreor_model.php */
/* Location: ./application/models/livreor_model.php */
