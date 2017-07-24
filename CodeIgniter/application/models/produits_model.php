<?php

class produits_model extends CI_Model
{
  function __construct()
  {
    parent::__construct();
  }
  function insert_env($data6)
  {
    $this->db->insert ('produits',$data6);

    return;
  }

  function read()
  {
    $q = $this->db->get('produits');
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
    $this->db->where('id_produits',$id);
    $this->db->delete('produits');
  }

  function update($id,$data)
  {
    $this->db->where('id_produits',$id);
    $this->db->update('produits',$data);
  }

  function get_all($id)
  {
    $this->db->where('id_produits',$id);
    $q = $this->db->get('produits');
    if($q->num_rows()>0)
    {
      $row = $q->row();
      return $row;
    }
  }

  function create($data)
  {
    $this->db->insert('produits',$data);
  }
}
