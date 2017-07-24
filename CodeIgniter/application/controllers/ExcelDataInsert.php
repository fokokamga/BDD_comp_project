<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class ExcelDataInsert extends CI_Controller
{

  public function __construct() {
    parent::__construct();
    $this->load->library('Excel');//load PHPExcel library
    //$this->load->model('upload_model');//To Upload file in a directory
    $this->load->model('excel_data_insert_model');
  }
  public function index(){
    $this->load->view('header.php');
    $this->load->view('upload_excel.php');
    $this->load->view('footer.php');

  }

  public	function ExcelDataAdd()	{
    $this->excel_data_insert_model->delete_User();
    //Path of files were you want to upload on localhost (C:/xampp/htdocs/ProjectName/uploads/excel/)
    $configUpload['upload_path'] = FCPATH.'uploads/excel/';
    $configUpload['allowed_types'] = 'xls|xlsx|csv';
    $configUpload['max_size'] = '15000';
    $this->load->library('upload', $configUpload);
    $this->upload->do_upload('userfile');
    $upload_data = $this->upload->data(); //Returns array of containing all of the data related to the file you uploaded.
    $file_name = $upload_data['file_name']; //uploded file name
    $extension=$upload_data['file_ext'];    // uploded file extension

    //$objReader =PHPExcel_IOFactory::createReader('Excel5');     //For excel 2003
    $objReader= PHPExcel_IOFactory::createReader('Excel2007');	// For excel 2007
    //Set to read only
    $objReader->setReadDataOnly(true);
    //Load excel file
    $objPHPExcel=$objReader->load(FCPATH.'uploads/excel/'.$file_name);
    $totalrows=$objPHPExcel->setActiveSheetIndex(0)->getHighestRow();   //Count Numbe of rows avalable in excel
    $objWorksheet=$objPHPExcel->setActiveSheetIndex(0);

    //loop from first data untill last data
    for($i=2;$i<=$totalrows;$i++)
    {
      $N_Enveloppe= $objWorksheet->getCellByColumnAndRow(0,$i)->getValue();
      $TBU_EMS= $objWorksheet->getCellByColumnAndRow(1,$i)->getValue(); //Excel Column 1
    //  $Date_Saisie= $objWorksheet->getCellByColumnAndRow(2,$i)->getValue(); //Excel Column 1
      $DATE_DEPOSE= $objWorksheet->getCellByColumnAndRow(3,$i)->getValue(); //Excel Column 2
      $LIEUX_DEPOSE=$objWorksheet->getCellByColumnAndRow(4,$i)->getValue(); //Excel Column 3
      $COMMENTAIRES=$objWorksheet->getCellByColumnAndRow(5,$i)->getValue(); //Excel Column 4
      $N_CER=$objWorksheet->getCellByColumnAndRow(6,$i)->getValue(); //Excel Column 3
      $N_CR=$objWorksheet->getCellByColumnAndRow(7,$i)->getValue(); //Excel Column 4
      $PN_SRU=$objWorksheet->getCellByColumnAndRow(8,$i)->getValue(); //Excel Column 3
      $SN_SRU=$objWorksheet->getCellByColumnAndRow(9,$i)->getValue(); //Excel Column 4
      $PN_LRU=$objWorksheet->getCellByColumnAndRow(10,$i)->getValue(); //Excel Column 3
      $SN_LRU=$objWorksheet->getCellByColumnAndRow(11,$i)->getValue(); //Excel Column 4
      $DEC_EXP=$objWorksheet->getCellByColumnAndRow(12,$i)->getValue(); //Excel Column 3
      $N_eSupport=$objWorksheet->getCellByColumnAndRow(13,$i)->getValue(); //Excel Column 4

      $freq_panne=$objWorksheet->getCellByColumnAndRow(14,$i)->getValue(); //Excel Column 3
      $temperature=$objWorksheet->getCellByColumnAndRow(15,$i)->getValue(); //Excel Column 4
      $Vibration=$objWorksheet->getCellByColumnAndRow(16,$i)->getValue(); //Excel Column 3
      $CAUSE=$objWorksheet->getCellByColumnAndRow(17,$i)->getValue(); //Excel Column 4

      $deverminage=$objWorksheet->getCellByColumnAndRow(18,$i)->getValue(); //Excel Column 4
      $typdetect=$objWorksheet->getCellByColumnAndRow(19,$i)->getValue(); //Excel Column 3
      $Autre_Precisionphasedetect=$objWorksheet->getCellByColumnAndRow(20,$i)->getValue(); //Excel Column 4

      $Nothing_comp=$objWorksheet->getCellByColumnAndRow(21,$i)->getValue(); //Excel Column 4
      $comment_comp=$objWorksheet->getCellByColumnAndRow(22,$i)->getValue(); //Excel Column 3
      $nothing_Brasure=$objWorksheet->getCellByColumnAndRow(23,$i)->getValue(); //Excel Column 4
      $comment_brasure=$objWorksheet->getCellByColumnAndRow(24,$i)->getValue(); //Excel Column 4
      $nothing_env=$objWorksheet->getCellByColumnAndRow(25,$i)->getValue(); //Excel Column 3
      $comment_env=$objWorksheet->getCellByColumnAndRow(26,$i)->getValue(); //Excel Column 4

      $Nom_Dem=$objWorksheet->getCellByColumnAndRow(27,$i)->getValue(); //Excel Column 3
      $Tel_Dem=$objWorksheet->getCellByColumnAndRow(28,$i)->getValue(); //Excel Column 4

      $PROGRAMME=$objWorksheet->getCellByColumnAndRow(29,$i)->getValue(); //Excel Column 3
      $ref_sxt=$objWorksheet->getCellByColumnAndRow(30,$i)->getValue(); //Excel Column 4

      $REP_TOPO=$objWorksheet->getCellByColumnAndRow(31,$i)->getValue(); //Excel Column 3
      $FABRICANT=$objWorksheet->getCellByColumnAndRow(32,$i)->getValue(); //Excel Column 4
      $REFERENCE_FABRICANT=$objWorksheet->getCellByColumnAndRow(33,$i)->getValue(); //Excel Column 3
      $DATE_CODE=$objWorksheet->getCellByColumnAndRow(34,$i)->getValue(); //Excel Column 4

      $NomRPS=$objWorksheet->getCellByColumnAndRow(35,$i)->getValue(); //Excel Column 3
      $reponse_fast=$objWorksheet->getCellByColumnAndRow(36,$i)->getValue(); //Excel Column 4


      $data_env=array('N_Enveloppe'=>$N_Enveloppe,
                      'TBU_EMS'=>$TBU_EMS ,
                      //'Date_Saisie'=>$Date_Saisie ,
                      'DATE_DEPOSE'=>$DATE_DEPOSE,
                      'LIEUX_DEPOSE'=>$LIEUX_DEPOSE,
                      'COMMENTAIRES'=>$COMMENTAIRES ,
                      'N_CER'=>$N_CER ,
                      'N_CR'=>$N_CR ,
                      'PN_SRU'=>$PN_SRU ,
                      'SN_SRU'=>$SN_SRU ,
                      'PN_LRU'=>$PN_LRU,
                      'SN_LRU'=>$SN_LRU ,
                      'DEC_EXP'=>$DEC_EXP ,
                      'N_eSupport'=>$N_eSupport

                      );
      $data_env1=array('freq_panne'=>$freq_panne,
      									'temperature'=>$temperature,
      									'Vibration'=>$Vibration,
      									'CAUSE'=>$CAUSE

                      );
      $data_env2=array('deverminage'=>$deverminage,
    									'typdetect'=>$typdetect,
    									'Autre_Precisionphasedetect'=>$Autre_Precisionphasedetect
                      );
      $data_env3=array('Nothing_comp'=>$Nothing_comp,
      									'comment_comp'=>$comment_comp,
      									'nothing_Brasure'=>$nothing_Brasure,
      									'comment_brasure'=>$comment_brasure,
      									'nothing_env'=>$nothing_env,
      									'comment_env'=>$comment_env
                      );
      $data_env4=array('Nom_Dem'=>$Nom_Dem,
								'Tel_Dem'=>$Tel_Dem
                      );

      $data_env5=array('PROGRAMME'=>$PROGRAMME
                    );
      $data_env6=array('ref_sxt'=>$ref_sxt
                      );
      $data_env7=array('REP_TOPO'=>$REP_TOPO,
									'FABRICANT'=>$FABRICANT,
									'REFERENCE_FABRICANT'=>$REFERENCE_FABRICANT,
									'DATE_CODE'=>$DATE_CODE
                      );
      $data_env8=array('NomRPS'=>$NomRPS
                      );
      $data_env9=array('reponse_fast'=>$reponse_fast
                      );
      $this->excel_data_insert_model->Add_User($data_env,$data_env1,$data_env2,$data_env3,$data_env4,$data_env5,$data_env6,$data_env7,$data_env8,$data_env9);


    }
    unlink('././uploads/excel/'.$file_name); //File Deleted After uploading in database .
    $this->load->view('header.php');
    $this->load->view('success_excel.php');
    $this->load->view('upload_excel.php');
    $this->load->view('footer.php');



  }

}
?>
