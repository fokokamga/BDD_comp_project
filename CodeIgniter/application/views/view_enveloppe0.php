
<?php
defined ( 'BASEPATH' ) or exit ( 'No direct script access allowed' );
?>



<div id="page-wrapper" align="center">
  <div class="container-fluid">
    <nav class="navbar navbar-light" style="background-color: #bdbdbd;">

      <div class="row">
        <div class="col-lg-12">
          <ul class="nav navbar-nav">
            <li class="dropdown">
              <a class="dropdown-toggle" data-toggle="dropdown" href="#">Menu<span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="http://127.0.0.1:3000/projects/CodeIgniter/index.php/edit_enveloppe_controller/index">Remplir enveloppe</a></li>
                <li><a href="#">Modifier enveloppe</a></li>
                <li><a href="http://127.0.0.1:3000/projects/CodeIgniter/index.php/edit_enveloppe_controller/view_env">Voir les enveloppes saisies</a></li>
              </ul>
            </li>

          </ul>
        </div>
      </div>

    </nav>
  </div>
</div>
<div class="row">
  <div class="container-fluid">

    <div class="col-sm-12">
      <!--<h2 align=center>Liste d'enveloppes saisies</h2>-->
      <div class="table-responsive">
        <table id="table" class="table table-bordered table-hover">
          <caption><h2 align=center>Liste d'enveloppes saisies</h2></caption>
          <thead>
            <tr>
              <th>id_env</th>
              <th>N_Enveloppe</th>
              <th>TBU_EMS</th>
              <th>Date_Saisie</th>
              <th>DATE_DEPOSE</th>
              <th>LIEUX_DEPOSE</th>
              <th>N_CER</th>
              <th>N_CR</th>
              <th>PN_SRU</th>
              <th>SN_SRU</th>
              <th>PN_LRU</th>
              <th>SN_LRU</th>
              <th>DEC_EXP</th>
              <th>N_eSupport</th>
              <th>COMMENTAIRES</th>
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
              <th>N_CER</th>
              <th>N_CR</th>
              <th>PN_SRU</th>
              <th>SN_SRU</th>
              <th>PN_LRU</th>
              <th>SN_LRU</th>
              <th>DEC_EXP</th>
              <th>N_eSupport</th>
              <th>COMMENTAIRES</th>
            </tr>
          </tfoot>
        </table>
      </div>
    </div>
  </div>
</div>

</div>

<!-- /#page-wrapper -->

<!-- jQuery -->

<script type="text/javascript">

var table;

$(document).ready(function() {

  //datatables
  table = $('#table').DataTable({
    responsive: true,
    "processing": true, //Feature control the processing indicator.
    "serverSide": true, //Feature control DataTables' server-side processing mode.
    "order": [], //Initial no order.
    // Load data for the table's content from an Ajax source
    "ajax": {
      "url": "<?php echo site_url('view_env_controller/ajax_list')?>",
      "type": "POST"
    },

    //Set column definition initialisation properties.
    "columnDefs": [
      {
        "targets": [ 0 ], //first column / numbering column
        "orderable": false, //set not orderable
      },
    ],

  });

});

</script>
