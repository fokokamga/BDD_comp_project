<?php

class examen_visuel_model extends CI_Model
{

  function __construct()
  {
    parent::__construct();
  }


  function insert_env($data4)
  {
    $Nothing_comp=$data4['Nothing_comp'];
    $comment_comp=$data4['comment_comp'];
    $nothing_Brasure=$data4['nothing_Brasure'];
    $comment_Brasure=$data4['comment_Brasure'];
    $nothing_env=$data4['nothing_env'];
    $comment_env=$data4['comment_env'];
    $this->db->query ('INSERT INTO examen_visuel(Nothing_comp,comment_comp,nothing_Brasure,comment_brasure,nothing_env,comment_env,enveloppe_id_env) VALUES ('$Nothing_comp','$comment_comp','$nothing_Brasure','$comment_brasure','$nothing_env','$comment_env',LAST_INSERT_ID())');

    return;
  }


  function read()
  {
    $q = $this->db->get('examen_visuel');
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
    $this->db->where('idExamen_visuel',$id);
    $this->db->delete('examen_visuel');
  }

  function update($id,$data)
  {
    $this->db->where('idExamen_visuel',$id);
    $this->db->update('examen_visuel',$data);
  }

  function get_all($id)
  {
    $this->db->where('idExamen_visuel',$id);
    $q = $this->db->get('examen_visuel');
    if($q->num_rows()>0)
    {
      $row = $q->row();
      return $row;
    }
  }

  function create($data)
  {
    $this->db->insert('examen_visuel',$data);
  }

}

/* End of file livreor_model.php */
/* Location: ./application/models/livreor_model.php */
