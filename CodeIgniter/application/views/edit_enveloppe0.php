<!DOCTYPE html>
<html lang="en">


<body>
  <div id="wrapper">

  <div id="page-wrapper" align="center">
    <nav class="navbar navbar-light" style="background-color: #bdbdbd;">
      <div class="container-fluid">
        <ul class="nav navbar-nav">
          <li class="dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" href="#">Menu<span class="caret"></span></a>
            <ul class="dropdown-menu">
              <li><a href="#">Remplir enveloppe</a></li>
              <li><a href="#">Modifier enveloppe</a></li>
              <li><a href="#">Supprimer une enveloppe</a></li>
            </ul>
          </li>

        </ul>
      </div>
    </nav>
  </div>
    <section>
      <img src=<?php echo base_url("assets/images/thales.jpg")?> style="position: absolute; left: 395px;top: 160px" width=150 height=35 />
      <p class="textetitreenveloppe" style="position: absolute; left: 395px;top: 190px"> Division Aéronautique / Aerospace Division </p>
      <h4 style="position: absolute; left: 700px;top: 160px"> DEPOSE COMPOSANTS / COMPONENT REMOVAL</h4>

      <table border=1 width=1100 height=800 >
        <tr><!--ligne1-->
          <!--cellule1-->
          <table style="position: absolute; left: 395px;top: 216px" border=1 width=550 height=550> <!--partie gauche hight -->
            <tr><!--ligne1-->
              <td><!--cellule1-->
                <table style="position: absolute; left: 0px;top: 1px" border=1 width=275 height=480> <!--partie lieu depose -->
                  <tr><!--ligne1-->
                    <td><!--cellule1-->
                      <p class="texteenveloppe" style="position: absolute; Font-Weight: Bold;left: 50px;top: 6px"> Lieu de dépose / Removal place </p>
                      <p class="texteenveloppe" style="position: absolute;left: 65px;top: 17px"> Renseigner toutes les cases </p>
                      <p class="texteenveloppe" style="position: absolute;left: 95px;top: 27px"> Fill in all boxes </p>

                      <form role="form" method="post" action="">

                        <div class="form-group" style="position: absolute;left: 50px;top: 50px" >
                          <div class="col-xs-10">
                            <label class="texteenveloppe">DAE</label>
                            <input  class="form-control input-sm" type="text" name="TBU_EMS">
                            <p class="texteenveloppe"class="help-block">(Site/Unité)/(Place/Unit)</p>
                            <p class="texteenveloppe" style="position: absolute;left: -45px;top: 58px"> OU / OR </p>
                          </div>
                          <div class="col-xs-10">
                            <label class="texteenveloppe">EMS<br></label>
                            <input  class="form-control input-sm" type="text" name="TBU_EMS">
                            <p class="texteenveloppe"class="help-block">(Site/Unité)/(Place/Unit)</p>
                          </div>
                          <div class="col-xs-10">
                            <p class="texteenveloppe" style="position: absolute; Font-Weight: Bold;left: 50px;top: 6px"> Demandeur / Requested by </p>
                            <br>
                            <label class="texteenveloppe">Nom /Name</label>
                            <input  class="form-control input-sm" type="text" name="Nom_Dem"><br>
                          </div>
                          <div class="col-xs-10">
                            <label class="texteenveloppe">Service/Department</label>
                            <input  class="form-control input-sm" type="text" name="LIEUX_DEPOSE"><br>
                          </div>
                          <div class="col-xs-10">
                            <label class="texteenveloppe">Téléphone/Phone</label>
                            <input  class="form-control input-sm" type="text" name="Tel_Dem"><br>
                          </div>
                          <div class="col-xs-10">
                            <label class="texteenveloppe">Date dépose / Removal date</label>
                            <input  class="form-control input-sm" type="text" name="DATE_DEPOSE">
                          </div>
                          <div class="col-xs-10"><br>
                            <label class="texteenveloppe">Imputation / Imputation</label>
                            <input  class="form-control input-sm" type="text" name="N_CER">
                            <p class="texteenveloppe" style="position: absolute;left: -45px;top: 38px"> N°OE,OF <br>or Other </p>
                          </div>
                        </div>
                      </form>


                    </td>
                  </tr>
                </table>
                <table style="position: absolute; right: 1.2px;top:1px" border=1 width=275 height=549> <!--partie identification -->
                  <tr><!--ligne1-->
                    <td><!--cellule1-->
                      <p class="texteenveloppe" style="position: absolute; Font-Weight: Bold;left: 60px;top: 6px"> Identification / Identification </p>
                      <p class="texteenveloppe" style="position: absolute;left: 65px;top: 17px"> Renseigner toutes les cases </p>
                      <p class="texteenveloppe" style="position: absolute;left: 95px;top: 27px"> Fill in all boxes </p>
                      <hr style="width: 70%; color: black; height: 3px; background-color:black;position: absolute;left: 40px;top: 20px;" />
                      <p class="texteenveloppe" style="position: absolute; Font-Weight: Bold;left: 68px;top: 46px"> Equipement / Equipment </p>

                      <form class="form-horizontal" style="position: absolute;left: 20px;top: 70px" method="post" action="">
                        <div class="form-group">
                          <label  class="control-label col-sm-3" for="email" style="font-family: sans-serif;font-size: 0.7em;">Programme<br>Program</label>
                          <div class="col-sm-7">
                            <input type="text" class="form-control" name="PROGRAMME" >
                          </div>
                        </div>
                        <div class="form-group">
                          <label  class="control-label col-sm-3" for="email" style="font-family: sans-serif;font-size: 0.7em;">Equipement<br>Equipment</label>
                          <div class="col-sm-7">
                            <input type="text" class="form-control" name="PN_LRU" >
                          </div>
                        </div>
                        <div class="form-group" style="position: absolute;left: -35px;top: 90px">
                          <label  class="control-label col-sm-5" for="email" style="font-family: sans-serif;font-size: 0.7em;">N° de série<br>Serial Number</label>
                          <div class="col-sm-6">
                            <input type="text" class="form-control" name="SN_LRU" >
                          </div>
                        </div>
                      </form>
                      <hr style="width: 70%; color: black; height: 3px; background-color:black;position: absolute;left: 40px;top: 190px;" />
                      <p class="texteenveloppe" style="position: absolute; Font-Weight: Bold;left: 50px;top: 215px"> Carte/Sous ensemble/Board/Group </p>

                      <form class="form-horizontal" style="position: absolute;left:-11px;top: 230px" method="post" action="">
                        <div class="form-group">
                          <label  class="control-label col-sm-5" for="email" style="font-family: sans-serif;font-size: 0.7em;">Référence DAE<br> DAE Reference</label>
                          <div class="col-sm-7">
                            <input type="text" class="form-control" name="PN_SRU" >
                          </div>
                        </div>
                        <div class="form-group" style="position: absolute;left: 5px;top: 40px">
                          <label  class="control-label col-sm-5" for="email" style="font-family: sans-serif;font-size: 0.7em;">N° de série<br>Serial Number</label>
                          <div class="col-sm-7">
                            <input type="text" class="form-control" name="SN_SRU" >
                          </div>
                        </div>
                      </form>
                      <hr style="width: 70%; color: black; height: 3px; background-color:black;position: absolute;left: 40px;top: 300px;" />
                      <p class="texteenveloppe" style="position: absolute; Font-Weight: Bold;left: 50px;top: 330px"> Carte/Sous ensemble/Board/Group </p>

                      <form class="form-horizontal" style="position: absolute;left:-11px;top: 350px" method="post" action="">
                        <div class="form-group">
                          <label  class="control-label col-sm-5"  style="font-family: sans-serif;font-size: 0.7em;">Référence DAE<br> DAE Reference</label>
                          <div class="col-sm-7">
                            <input type="text" class="form-control" name="ref_sxt" >
                          </div>
                        </div>
                        <div class="form-group" style="position: absolute;left: 5px;top: 40px">
                          <label  class="control-label col-sm-5"  style="font-family: sans-serif;font-size: 0.7em;">Repère Topo<br>Location</label>
                          <div class="col-sm-7">
                            <input type="text" class="form-control" name="REP_TOPO" >
                          </div>
                        </div>
                        <div class="form-group" style="position: absolute;left: 5px;top: 80px">
                          <label  class="control-label col-sm-5"  style="font-family: sans-serif;font-size: 0.7em;">Réf.Fabricant<br>Mfr Part Number</label>
                          <div class="col-sm-7">
                            <input type="text" class="form-control" name="REFERENCE_FABRICANT" >
                          </div>
                        </div>
                        <div class="form-group" style="position: absolute;left: 5px;top: 120px">
                          <label  class="control-label col-sm-5"  style="font-family: sans-serif;font-size: 0.7em;">Fabricant<br>Manufacturer</label>
                          <div class="col-sm-7">
                            <input type="text" class="form-control" name="FABRICANT" >
                          </div>
                        </div>
                        <div class="form-group" style="position: absolute;left: 11px;top: 160px">
                          <label  class="control-label col-sm-5" for="email" style="font-family: sans-serif;font-size: 0.7em;">Code Date<br>Date Code</label>
                          <div class="col-sm-7">
                            <input type="text" class="form-control" name="DATE_CODE" >
                          </div>
                        </div>
                      </form>
                    </td>
                  </tr>
                </table>
              </td>
            </tr>
          </table>
          <!-- cadre Nom RPS-->
          <table style="position: absolute; left: 395px;top: 764px" border=1 width=550 height=78> <!--partie gauche bas -->
            <tr><!--ligne1-->
              <td><!--cellule1-->
                <form class="form-inline" method="post" action="">
                  <div class="form-group">
                    <label class="texteenveloppe" for="email">Nom RPS / Product manager Name:</label>
                    <input type="text" class=" col-sm-4" name="NomRPS">
                  </div>

                  <div class="checkbox">
                    <label class="texteenveloppe" for="email">Demande d'expertise /Analysis</label>
                    <label class="texteenveloppe">Oui <br>Yes</label>
                    <input class=" inputlg" type="checkbox" style="position: absolute; top: -2px;left: 190px;" name="DEC_EXP">
                  </div>
                  <div class="checkbox" style="position: absolute; left: 300px;top:45px;">
                    <label class="texteenveloppe">Non <br>No</label>
                    <input class=" inputlg" type="checkbox" style="position: absolute; top: -5px;left: -40px;" name="DEC_EXP">
                  </div>
                </form>
              </td>
            </tr>
          </table>
          <!-- cadre Réservé expertise-->
          <table style="position: absolute; left: 395px;top: 840px" border=1 width=550 height=176> <!--partie gauche bas -->
            <tr><!--ligne1-->
              <td><!--cellule1-->
                <p class="texteenveloppe" style="position: absolute; Font-Weight: Bold;left: 50px;top: 6px"> Réservé à l'expertise, réponse rapide. / Reserved for analysis, quick answer </p>
                <form class="form-inline" method="post" action="">
                  <div class="form-group" style="position: absolute;left: 50px;top: 26px">
                    <textarea class="form-control" rows="5"></textarea>
                  </div>

                </form>
              </td>
            </tr>
          </table>
          

          <!--PARTIE DROITE  -->
          <table style="position: absolute; left: 943px;top: 216px" border=1 width=551 height=300> <!--partie droite  -->
            <tr><!--ligne1-->
              <td><!--cellule1-->
                <table style="position: absolute; left: 0px;top: 1px" border=1 width=275 height=300> <!--partie phase detection -->
                  <tr><!--ligne1-->
                    <td><!--cellule1-->
                      <p class="texteenveloppe" style="position: absolute; Font-Weight: Bold;left: 60px;top: 6px"> Phase Détection / Detection step </p>
                      <p class="texteenveloppe" style="position: absolute;left: 65px;top: 17px"> Selectionner le choix approprié </p>
                      <p class="texteenveloppe" style="position: absolute;left: 85px;top: 27px"> Select appropriate choice </p>

                      <form role="form" style="position: absolute;left:15px;top: 60px" method="post" action="">
                        <div class="form-group">
                          <label  class=""  style="font-family: sans-serif;font-size: 0.7em;">Board or Equipment</label>
                          <div class="">
                            <select class="form-control" style="font-family: sans-serif;font-size: 0.8em;" name="avant_dv">
                              <option>Avant déverminage </br>/Before Burn In</option>
                              <option>En cours de déverminage <br>During Burn In</option>
                              <option>Après déverminage <br>After Burn In</option>

                            </select>
                          </div>
                          <div class="form-group" style="position: absolute;left:5px;top: 60px">
                            <div class="">
                              <select class="form-control" style="font-family: sans-serif;font-size: 0.8em;" name="avionnage">
                                <option>Avionnage / A/C  Mfr</option>
                                <option>Exploitation / In Service</option>

                              </select>
                            </div>
                            <div class="form-group" style="position: absolute;left:5px;top: 80px">
                              <label  class="" for="email" style="font-family: sans-serif;font-size: 0.7em;">Autre Precision / Other information</label>
                              <div class="col-sm-11">
                                <textarea class="form-control" rows="2" cols="35" name="Autre_Precisionphasedetect"></textarea>
                              </div>
                            </div>
                          </div>


                        </form>
                      </td>
                    </tr>
                  </table>
                  <table style="position: absolute; right: 1.2px;top:1px" border=1 width=277 height=300> <!--partie nature panne -->
                    <tr><!--ligne1-->
                      <td><!--cellule1-->
                        <p class="texteenveloppe" style="position: absolute; Font-Weight: Bold;left: 60px;top: 6px"> Nature de la panne et environnement <br> Kind of breakdown and environment </p>
                        <p class="texteenveloppe" style="position: absolute;left: 65px;top: 35px"> Selectionner le choix approprié </p>
                        <p class="texteenveloppe" style="position: absolute;left: 85px;top: 47px"> Select appropriate choice</p>

                        <form role="form" style="position: absolute;left:65px;top: 70px" method="post" action="">
                          <div class="form-group">
                            <div class="">
                              <select class="form-control" style="font-family: sans-serif;font-size: 0.8em;" name="Permanente">
                                <option>Intermittente / Occasional </option>
                                <option>Permanente / Permanent</option>

                              </select>
                            </div>
                            <div class="form-group" style="position: absolute;left:5px;top: 40px">
                              <div class="">
                                <select class="form-control" style="font-family: sans-serif;font-size: 0.8em;" name="A_lambiante">
                                  <option>A l'ambiante / Room T°</option>
                                  <option>A froid / Cold T°</option>
                                  <option>A chaud / Hot T°</option>

                                </select>
                              </div>
                              <div class="form-group" style="position: absolute;left:-10px;top: 50px">
                                <label  class=""  style="font-family: sans-serif;font-size: 0.7em;">Autre Precision / Other information</label>
                                <div class="col-sm-11">
                                  <textarea class="form-control" rows="4" cols="35" name="CAUSE"></textarea>
                                </div>
                              </div>
                            </div>


                          </form>

                        </td>
                      </tr>
                    </table>
                  </td>
                </tr>
              </table>
              <!-- cadre Nom RPS-->
              <table style="position: absolute; left: 943px;top: 515px" border=1 width=550 height=176> <!--examen visuel -->
                <tr><!--ligne1-->
                  <td><!--cellule1-->
                    <p class="texteenveloppe" style="position: absolute; Font-Weight: Bold;left: 180px;top: 6px"> Examen visuel / Visual Inspection </p>
                    <p class="texteenveloppe" style="position: absolute;left: 135px;top: 15px">  (Cocher les cases appropriées / Tick appropriate boxes) </p>

                    <p style="font-family: sans-serif;font-size: 0.7em;position: absolute;left:5px;top: 35px"> Composant<br> Component</p>
                    <p style="font-family: sans-serif;font-size: 0.7em;position: absolute;left:180px;top: 35px"> Brasure<br>Welding</p>
                    <p style="font-family: sans-serif;font-size: 0.7em;position: absolute;left:360px;top: 35px"> Environnement<br>Environment</p>

                    <form role="form" method="post" action="">
                      <div class="form-group"style="position: absolute;left:65px;top: 35px">
                        <div class="col-sm-15">
                          <select class="form-control" style="font-family: sans-serif;font-size: 0.8em;"name="Nothing_comp">
                            <option>Nothing </option>
                            <option>Other</option>

                          </select>
                        </div>
                      </div>
                      <div class="form-group"style="position: absolute;left:240px;top: 35px">
                        <div class="col-sm-13">
                          <select class="form-control" style="font-family: sans-serif;font-size: 0.8em;"name="nothing_Brasure">
                            <option>Nothing </option>
                            <option>Other</option>

                          </select>
                        </div>
                      </div>
                      <div class="form-group"style="position: absolute;left:440px;top: 35px">
                        <div class="col-sm-15">
                          <select class="form-control" style="font-family: sans-serif;font-size: 0.8em;"name="nothing_env">
                            <option>Nothing </option>
                            <option>Other</option>

                          </select>
                        </div>
                      </div>
                      <div class="form-group" style="position: absolute;left:16px;top: 80px">
                        <div class="col-sm-7">
                          <textarea class="form-control" rows="2" cols="35" name="comment_comp"></textarea>
                        </div>
                      </div>
                      <div class="form-group" style="position: absolute;left:190px;top: 80px">
                        <div class="col-sm-7">
                          <textarea class="form-control" rows="2" cols="35" name="comment_brasure"></textarea>
                        </div>
                      </div>
                      <div class="form-group" style="position: absolute;left:360px;top: 80px">
                        <div class="col-sm-11">
                          <textarea class="form-control" rows="2" cols="35" name="comment_env"></textarea>
                        </div>
                      </div>
                    </div>
                  </form>

                </td>
              </tr>
            </table>
            <!-- cadre Réservé expertise-->
            <table style="position: absolute; left: 943px;top: 690px" border=1 width=550 height=327> <!--Observation motif de depose -->
              <tr><!--ligne1-->
                <td><!--cellule1-->
                  <p class="texteenveloppe" style="position: absolute; Font-Weight: Bold;left: 150px;top: 6px"> Observation, motif de la dépose, dysfonctionnement observé, …  </p>
                  <p class="texteenveloppe" style="position: absolute; Font-Weight: Bold;left: 180px;top: 16px"> Remarks, cause of removal , observed dysfunction, ... </p>

                  <form role="form" method="post" action="">
                    <div class="form-group"style="position: absolute;left:105px;top: 55px">
                      <p class="texteenveloppe" style="position: absolute; Font-Weight: Bold;"> ANOMALIE</p>
                    </div>

                    <div class="form-group"style="position: absolute;left:370px;top: 55px">
                      <p class="texteenveloppe" style="position: absolute; Font-Weight: Bold;"> COMMENTAIRES</p>
                    </div>
                    <div class="form-group" style="position: absolute;left:16px;top: 80px">
                      <div class="col-sm-7">
                        <textarea class="form-control" rows="3" cols="55" name="Anomalie"></textarea>
                      </div>
                    </div>

                    <div class="form-group" style="position: absolute;left:290px;top: 80px">
                      <div class="col-sm-11">
                        <textarea class="form-control" rows="9" cols="55" name="COMMENTAIRES"></textarea>
                      </div>
                    </div>
                  </div>
                  <div class="form-group"style="position: absolute;left:105px;top: 195px">
                    <p class="textetitreenveloppe" style="position: absolute; Font-Weight: Bold;"> N°eSupport</p>
                  </div>
                  <div class="form-group" style="position: absolute;left:55px;top: 215px">
                    <div class="col-sm-15">
                      <input class="form-control" rows="3" cols="55" ></input>
                    </div>
                  </div>
                </div>
              </form>
            </td>
          </tr>
        </table>
      </td>
    </tr>
  </table>
  <div class="container">
    <br><br><br><br><br>
    <button  type="button" class="btn btn-success" style="position: relative;left:510px;top: 10px">Enregistrer</button>
  </div>

</div>
<!-- /#page-wrapper -->

</section>

<!-- jQuery -->
<script src=<?php echo base_url("assets/javascript/jquery.js")?>></script>
<!-- Bootstrap Core JavaScript -->
<script src=<?php echo base_url("assets/javascript/bootstrap.min.js")?>></script>

<!-- Morris Charts JavaScript -->
<script src=<?php echo base_url("assets/javascript/plugins/morris/raphael.min.js")?>></script>
<script src=<?php echo base_url("assets/javascript/plugins/morris/morris.min.js")?>></script>
<script src=<?php echo base_url("assets/javascript/plugins/morris/morris-data.js")?>></script>
</div>
<!-- /#wrapper -->
</body>

</html>
