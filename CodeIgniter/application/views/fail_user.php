<!-- set up the modal to start hidden and fade in and out -->
<div id="myModal" class="modal fade">
  <div class="modal-dialog">
    <div class="modal-content">
      <!-- dialog body -->
      <div class="modal-body text-center">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
          <div class="alert alert-danger">
            <strong>ECHEC DE CONNEXION</strong> <br><a href=<?php echo site_url("User_controller/index");?>>Cliquer ici pour rééssayer</a>
            <br><br><br><br>
            <font size="2" color=""><?php echo validation_errors(); ?></font>
          </div>

        </div>
      </div>
      <!-- dialog buttons -->

    </div>
  </div>
</div>




<!-- jQuery -->
<script src=<?php echo base_url("assets/jQuery/jquery-2.2.4.min.js");?>></script>

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



<!-- sometime later, probably inside your on load event callback -->
<script>
    $("#myModal").on("show", function() {    // wire up the OK button to dismiss the modal when shown
        $("#myModal a.btn").on("click", function(e) {
            console.log("button pressed");   // just as an example...
            $("#myModal").modal('hide');     // dismiss the dialog
        });
    });
    $("#myModal").on("hide", function() {    // remove the event listeners when the dialog is dismissed
        $("#myModal a.btn").off("click");
    });

    $("#myModal").on("hidden", function() {  // remove the actual elements from the DOM when fully hidden
        $("#myModal").remove();
    });

    $("#myModal").modal({                    // wire up the actual modal functionality and show the dialog
      "backdrop"  : "static",
      "keyboard"  : true,
      "show"      : true                     // ensure the modal is shown immediately
    });
</script>
