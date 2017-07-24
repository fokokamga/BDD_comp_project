
    <div class="container" >
        <div class="row">
            <div class="col-md-5 col-md-offset-4">
                <div class="login-panel panel panel-default">
                    <div class="panel-heading">
                        <h3 align="center">Connectez vous !</h3>
                    </div>
                    <div class="panel-body">
                          <?php echo form_open('User_controller/connexion'); ?>
                            <fieldset>
                                <div class="form-group">
                                    <label>N°TGI</label>
                                    <input class="form-control" placeholder="Votre N°TGI" name="N_TGI" type="text" autofocus>
                                </div>
                                <div class="form-group">
                                  <label>Mot de passe</label>
                                    <input class="form-control" placeholder="Votre mot de passe" name="password" type="password" value="">
                                </div>

                                <!-- Change this to a button or input when using this as a form -->
                                <input type="submit" class="btn btn-success btn-block" value="Connexion"/>
                            </fieldset>
                          <?php echo form_close(); ?>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-5 col-md-offset-4">
                <div class="login-panel panel panel-default">
                    <div class="panel-heading">
                        <h4 class="">Vous n'avez pas de compte, <a href=<?php echo site_url("User_controller/index");?> >inscrivez vous !</a></h4>
                    </div>

                </div>
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
