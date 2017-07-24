<?php

class codesfabricants_model extends CI_Model
{
  function __construct()
  {
    parent::__construct();
  }

  function insert_env($data7)
  {
    $ref_sxt=$data7['ref_sxt'];
    $this->db->query ("INSERT INTO codesfabricants(ref_sxt,composant_code_thav) VALUES ('$ref_sxt',LAST_INSERT_ID())");

    return;
  }
  function read()
  {
    $q = $this->db->get('codesfabricants');
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
    $this->db->where('id_codefab',$id);
    $this->db->delete('codesfabricants');
  }

  function update($id,$data)
  {
    $this->db->where('id_codefab',$id);
    $this->db->update('codesfabricants',$data);
  }

  function get_all($id)
  {
    $this->db->where('id_codefab',$id);
    $q = $this->db->get('codesfabricants');
    if($q->num_rows()>0)
    {
      $row = $q->row();
      return $row;
    }
  }

  function create($data)
  {
    $this->db->insert('codesfabricants',$data);
  }
}
}

/* End of file livreor_model.php */
/* Location: ./application/models/livreor_model.php */
