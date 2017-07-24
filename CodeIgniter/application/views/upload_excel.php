
<div class="container-fluid">
  <div class="row">
    <div class="col-sm-4 col-sm-offset-4">
      <?php echo form_open_multipart('ExcelDataInsert/ExcelDataAdd');?>
      <h3>Importer un fichier de dépose / Upload Removal file</h3><br><br>
      <h5>Veuillez selectionner un fichier Exclel ne dépassant pas 15Mo</h5><br><br>
      <input  type="file" name="userfile" />
      <input  type="submit" value="upload" name="upload" />
    </form>
  </div>
</div>
</div>
<br><br><br><br><br><br><br><br><br><br>

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
