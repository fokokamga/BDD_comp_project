<?php

class rps_model extends CI_Model
{
  function __construct()
  {
    parent::__construct();
  }

  function read()
  {
    $q = $this->db->get('articles');
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
    $this->db->where('id',$id);
    $this->db->delete('articles');
  }

  function update($id,$data)
  {
    $this->db->where('id',$id);
    $this->db->update('articles',$data);
  }

  function get_article($id)
  {
    $this->db->where('id',$id);
    $q = $this->db->get('articles');
    if($q->num_rows()>0)
    {
      $row = $q->row();
      return $row;
    }
  }

  function create($data)
  {
    $this->db->insert('articles',$data);
  }
}
}

/* End of file livreor_model.php */
/* Location: ./application/models/livreor_model.php */
