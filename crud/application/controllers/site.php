<?php
class Site extends CI_Controller {

  function __construct()
  {
    parent::__construct();
  }

  function index()
  {
    $this->form_validation->set_rules('titre','Titre','trim|required|xss_clean');
    $this->form_validation->set_rules('contenu','Contenu','trim|required|xss_clean');
    
    if($this->form_validation->run())
    {
      $data = array('titre'=>$this->input->post('titre'), 'contenu'=>$this->input->post('contenu'));
      $this->site_model->create($data);
      redirect('site');
    }
    else
    {
      $data['heading'] = 'Mes articles';
      $data['rows'] = $this->site_model->read();
      $this->load->view('accueil',$data);
    }
  }
  
  function delete()
  {
    if($this->uri->segment(3))
    {
      $this->site_model->delete($this->uri->segment(3));
      redirect('site');
    }
    else
    {
      redirect(site_url());
    }
  }
  
  function update()
  {
    if($this->uri->segment(3))
    {
      $this->form_validation->set_rules('titre','Titre','trim|required|xss_clean');
      $this->form_validation->set_rules('contenu','Contenu','trim|required|xss_clean');
      
      if($this->form_validation->run())
      {
        $data = array('titre'=>$this->input->post('titre'), 'contenu'=>$this->input->post('contenu'));
        
        $this->site_model->update($this->uri->segment(3), $data);
        redirect('site');
      }
      else
      {
        $data['rows'] = $this->site_model->get_article($this->uri->segment(3));
        $data['heading'] = $data['rows']->titre;
        $this->load->view('update',$data);
      }
    }
    else
    {
      redirect('site');
    }
  }
}
?>