


<div class="container-fluid">


  <!-- /.panel-heading -->
  <div class="table-responsive">

    <a href="<?php echo site_url("view_env_controller/index");?>"><button class="btn btn-default btn-lg" ><i class="glyphicon glyphicon-refresh"></i> Reload/Rafraichir</button></a>




  <table width="100%" cellspacing="0" class="table table-striped table-bordered table-hover" id="dat">
    <caption><h2 align=center>LISTE D'ENVELOPPES SAISIES</h2></caption>
    <thead>
      <tr>
        <th>id_env</th>
        <th>N_Enveloppe</th>
        <th>TBU_EMS</th>
        <th>Date_Saisie</th>
        <th>DATE_DEPOSE</th>
        <th>LIEUX_DEPOSE</th>
        <th>COMMENTAIRES</th>
        <th>N_CER</th>
        <th>N_CR</th>
        <th>PN_SRU</th>
        <th>SN_SRU</th>
        <th>PN_LRU</th>
        <th>SN_LRU</th>
        <th>DEC_EXP</th>
        <th>N_eSupport</th>

        <th>freq_panne</th>
        <th>temperature</th>
        <th>Vibration</th>
        <th>CAUSE</th>

        <th>deverminage</th>
        <th>typdetect</th>
        <th>Autre_Precisionphasedetect</th>

        <th>Nothing_comp</th>
        <th>comment_comp</th>
        <th>nothing_Brasure</th>
        <th>comment_brasure</th>
        <th>nothing_env</th>
        <th>comment_env</th>

        <th>Nom_Dem</th>
        <th>Tel_Dem</th>

        <th>PROGRAMME</th>

        <th>ref_sxt</th>

        <th>REP_TOPO</th>
        <th>FABRICANT</th>
        <th>REFERENCE_FABRICANT</th>
        <th>DATE_CODE</th>

        <th>NomRPS</th>
        <th>reponse_fast</th>
      </tr>
    </thead>
    <tbody>
    </tbody>
    <tfoot>
      <tr>
        <th>id_env</th>
        <th>N_Enveloppe</th>
        <th>TBU_EMS</th>
        <th>Date_Saisie</th>
        <th>DATE_DEPOSE</th>
        <th>LIEUX_DEPOSE</th>
        <th>COMMENTAIRES</th>
        <th>N_CER</th>
        <th>N_CR</th>
        <th>PN_SRU</th>
        <th>SN_SRU</th>
        <th>PN_LRU</th>
        <th>SN_LRU</th>
        <th>DEC_EXP</th>
        <th>N_eSupport</th>

        <th>freq_panne</th>
        <th>temperature</th>
        <th>Vibration</th>
        <th>CAUSE</th>

        <th>deverminage</th>
        <th>typdetect</th>
        <th>Autre_Precisionphasedetect</th>

        <th>Nothing_comp</th>
        <th>comment_comp</th>
        <th>nothing_Brasure</th>
        <th>comment_brasure</th>
        <th>nothing_env</th>
        <th>comment_env</th>

        <th>Nom_Dem</th>
        <th>Tel_Dem</th>

        <th>PROGRAMME</th>

        <th>ref_sxt</th>

        <th>REP_TOPO</th>
        <th>FABRICANT</th>
        <th>REFERENCE_FABRICANT</th>
        <th>DATE_CODE</th>

        <th>NomRPS</th>
        <th>reponse_fast</th>
      </tr>
    </tfoot>
  </table>
  <!-- /.table-responsive -->
  </div>

<!-- /.panel-body -->

<!-- /.panel -->

<!-- /.col-lg-12 -->
</div>



<!-- jQuery -->
<script src=<?php echo base_url("assets/jquery-1.12.4.js");?>></script>

<!-- Bootstrap Core JavaScript -->
<script src=<?php echo base_url("assets/bootstrap/js/bootstrap.min.js");?>></script>

<!-- Metis Menu Plugin JavaScript -->

<!-- DataTables JavaScript -->
<script src=<?php echo base_url("assets/DataTables/js/jquery.dataTables.min.js");?>></script>
<script src=<?php echo base_url("assets/DataTables/js/dataTables.bootstrap.min.js");?>></script>
<script type="text/javascript" src=<?php echo base_url("assets/JSZip-3.1.3/jszip.min.js");?>></script>
<script type="text/javascript" src=<?php echo base_url("assets/pdfmake-0.1.27/build/pdfmake.min.js");?>></script>
<script type="text/javascript" src=<?php echo base_url("assets/pdfmake-0.1.27/build/vfs_fonts.js");?>></script>
<script type="text/javascript" src=<?php echo base_url("assets/Buttons-1.3.1/js/dataTables.buttons.min.js");?>></script>
<script type="text/javascript" src=<?php echo base_url("assets/Buttons-1.3.1/js/buttons.colVis.min.js");?>></script>
<script type="text/javascript" src=<?php echo base_url("assets/Buttons-1.3.1/js/buttons.flash.min.js");?>></script>
<script type="text/javascript" src=<?php echo base_url("assets/Buttons-1.3.1/js/buttons.html5.min.js");?>></script>
<script type="text/javascript" src=<?php echo base_url("assets/Buttons-1.3.1/js/buttons.print.min.js");?>></script>



<!-- Page-Level Demo Scripts - Tables - Use for reference -->
<script type="text/javascript">
var table;

$(document).ready(function() {

  table = $('#dat').DataTable({
    "pagingType": "full_numbers",
    "scrollY": 500,
    "scrollX": true,
    searching:	true,
    dom: 'Bfrltip',
        buttons: [
            'copy', 'csv', 'excel', 'pdf', 'print'
        ],
    "ajax": {
      url : "<?php echo site_url("view_env_controller/ajax_list") ?>",
      type : 'GET'
    }
  });
});
</script>
