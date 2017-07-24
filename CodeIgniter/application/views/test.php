


<div class="container-fluid">

  <?php echo form_open('Edit_enveloppe_controller','class="form-horizontal"'); ?>

  <div class="row no-gutters">
    <div class="col-lg-4">
      <img src=<?php echo base_url("assets/images/thales.jpg")?>  width=150 height=35 />
      <p> Division Aéronautique / Aerospace Division </p>
    </div>
    <div class="col-lg-4">
      <h4 > DEPOSE COMPOSANTS / COMPONENT REMOVAL</h4>
    </div>
    <div class="col-lg-4">
      <button  type="submit" class="btn btn-default btn-lg"  value="Enregistrer"><span class="glyphicon glyphicon-floppy-disk"></span> Enregistrer/Save</button>
    </div>
  </div>
  <!-- /.row no-gutters -->


  <div class="row no-gutters ">
    <div class="col-lg-2">
      <div class="panel panel-primary">
        <div class="panel-body">
          <h6 align="center"><strong> Lieu de dépose / Removal place </strong></h6>
          <h6 align="center"> Renseigner toutes les cases </h6>
          <h6 align="center"> Fill in all boxes </h6>
          <div class="form-group form-group-sm">
            <label class="control-label" for="TBU_EMS">DAE</label>
            <div class="col-sm-11">
              <input class="form-control" type="text" name="TBU_EMS" value="<?php echo set_value('TBU_EMS'); ?>">
            </div>
            <h6 align="center">(Site/Unité)/(Place/Unit)</h6>
          </div>
          <h6 align="left">OU/OR</h6>
          <div class="form-group form-group-sm">
            <label class="control-label "for="TBU_EMS">EMS</label>
            <div class="col-sm-11">
              <input class="form-control" type="text" name="TBU_EMS" value="<?php echo set_value('TBU_EMS'); ?>">
            </div>
            <h6 align="center">(Site/Unité)/(Place/Unit)</h6>
          </div>
          <div class="form-group form-group-sm">
            <h6 align="center"><strong>Demandeur / Requested by</strong></h6>
            <label class="control-label "for="Nom_Dem">Nom/Name</label>
            <div class="col-sm-11">
              <input class="form-control" type="text" name="Nom_Dem" value="<?php echo set_value('Nom_Dem'); ?>">
            </div>
          </div>
          <div class="form-group form-group-sm">
            <label class="control-label  "for="LIEUX_DEPOSE">Service /Department</label>
            <div class="col-sm-11">
              <input class="form-control" type="text" name="LIEUX_DEPOSE" value="<?php echo set_value('LIEUX_DEPOSE'); ?>">
            </div>
          </div>
          <div class="form-group form-group-sm">
            <label class="control-label  "for="Tel_Dem">Téléphone/Phone</label>
            <div class="col-sm-11">
              <input class="form-control" type="text" name="Tel_Dem" value="<?php echo set_value('Tel_Dem'); ?>">
            </div>
          </div>
          <div class="form-group form-group-sm">
            <label class="control-label  "for="DATE_DEPOSE">Date dépose / Removal date</label>
            <div class="col-sm-11">
              <input class="form-control" type="text" name="DATE_DEPOSE" value="<?php echo set_value('DATE_DEPOSE'); ?>">
            </div>
          </div>
          <hr style="width: 80%; color: black; height: 3px; background-color:black;" />

          <div class="form-group form-group-sm">
            <h6 align="center"><strong>Imputation/Imputation</strong></h6>
            <label class="control-label  "for="N_CER">N°OE,OF or Other</label>
            <div class="col-sm-11">
              <input class="form-control" type="text" name="N_CER" value="<?php echo set_value('N_CER'); ?>">
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-lg-2">
      <div class="panel panel-primary">
        <div class="panel-body">
          <h6 align="center"><strong> Identification / Identification</strong></h6>
          <h6 align="center">  Renseigner toutes les cases </h6>
          <h6 align="center"> Fill in all boxes </h6>
          <hr style="width: 80%; color: black; height: 3px; background-color:black;" />
          <h6 align="center"> <strong>Equipement / Equipment </strong></h6>

          <div class="form-group form-group-sm">
            <label class="control-label" for="PROGRAMME">Programme/Program</label>
            <div class="col-sm-11">
              <input class="form-control" type="text" name="PROGRAMME" value="<?php echo set_value('PROGRAMME'); ?>">
            </div>
          </div>
          <div class="form-group form-group-sm">
            <label class="control-label "for="PN_LRU">Equipement/Equipment</label>
            <div class="col-sm-11">
              <input class="form-control" type="text" name="PN_LRU" value="<?php echo set_value('PN_LRU'); ?>">
            </div>
          </div>
          <div class="form-group form-group-sm">
            <label class="control-label "for="SN_LRU">N° de série/Serial Number</label>
            <div class="col-sm-11">
              <input class="form-control" type="text" name="SN_LRU" value="<?php echo set_value('SN_LRU'); ?>">
            </div>
          </div>
          <hr style="width: 80%; color: black; height: 3px; background-color:black;" />
          <h6 align="center"> <strong>Carte/Sous ensemble/Board/Group </strong></h6>
          <div class="form-group form-group-sm">
            <label class="control-label  "for="ref_sxt">Référence DAE/DAE Reference</label>
            <div class="col-sm-11">
              <input class="form-control" type="text" name="ref_sxt" value="<?php echo set_value('ref_sxt'); ?>">
            </div>
          </div>
          <div class="form-group form-group-sm">
            <label class="control-label  "for="REP_TOPO">Repère Topo/Location</label>
            <div class="col-sm-11">
              <input class="form-control" type="text" name="REP_TOPO" value="<?php echo set_value('REP_TOPO'); ?>">
            </div>
          </div>
          <div class="form-group form-group-sm">
            <label class="control-label  "for="REFERENCE_FABRICANT">Réf.Fabricant/Mfr Part Number</label>
            <div class="col-sm-11">
              <input class="form-control" type="text" name="REFERENCE_FABRICANT" value="<?php echo set_value('REFERENCE_FABRICANT'); ?>">
            </div>
          </div>
          <div class="form-group form-group-sm">
            <label class="control-label  "for="FABRICANT">Fabricant/Manufacturer</label>
            <div class="col-sm-11">
              <input class="form-control" type="text" name="FABRICANT" value="<?php echo set_value('FABRICANT'); ?>">
            </div>
          </div>
          <div class="form-group form-group-sm">
            <label class="control-label  "for="DATE_CODE">Code Date/Date Code</label>
            <div class="col-sm-11">
              <input class="form-control" type="text" name="DATE_CODE" value="<?php echo set_value('DATE_CODE'); ?>">
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-lg-4" >

      <div class="col-lg-6">
        <div class="panel panel-primary">
          <div class="panel-body">
            <h6 align="center"><strong> Phase Détection / Detection step</strong></h6>
            <h6 align="center">  Selectionner le choix approprié </h6>
            <h6 align="center"> Select appropriate choice</h6>
            <hr style="width: 80%; color: black; height: 3px; background-color:black;" />
            <h6 align="center"> <strong>Board or Equipment </strong></h6>

            <div class="form-group form-group-sm">
              <div class="col-lg-11">
                <select class="form-control" name="deverminage"value="<?php echo set_value('deverminage'); ?>">
                  <option value=""></option>
                  <option value="Avant déverminage/Before Burn In">Avant déverminage </br>/Before Burn In</option>
                  <option value="En cours de déverminage/During Burn In">En cours de déverminage <br>During Burn In</option>
                  <option value="Après déverminage/After Burn In">Après déverminage <br>After Burn In</option>
                </select>
              </div>
            </div>
            <div class="form-group form-group-sm">
              <div class="col-lg-11">
                <select class="form-control" name="typdetect" value="<?php echo set_value('typdetect'); ?>">
                  <option value=""></option>
                  <option value="Avionnage">Avionnage / A/C  Mfr</option>
                  <option value="Exploitation/In Service">Exploitation / In Service</option>
                </select>
              </div>
            </div>
            <div class="form-group form-group-sm">
              <label  class="form-control" for="Autre_Precisionphasedetect" >Autre Precision / Other information</label>
              <div class="col-lg-11">
                <textarea class="form-control" row no-gutterss="2" cols="35" name="Autre_Precisionphasedetect" value="<?php echo set_value('Autre_Precisionphasedetect'); ?>"></textarea>
              </div>
            </div>
          </div>
        </div>

      </div>
      <div class="col-lg-6" >
        <div class="panel panel-primary" >
          <div class="panel-body" >
            <h6 align="center"><strong> Nature de la panne et environnement <br> Kind of breakdown and environment</strong></h6>
            <h6 align="center">  Selectionner le choix approprié </h6>
            <h6 align="center"> Select appropriate choice</h6>

            <div class="form-group form-group-sm">
              <div class="col-lg-10">
                <select class="form-control"  name="freq_panne" value="<?php echo set_value('freq_panne'); ?>">
                  <option value=""> </option>
                  <option value="Intermittente/Occasional">Intermittente / Occasional </option>
                  <option value="Permanente/Permanent">Permanente / Permanent</option>
                </select>
              </div>
            </div>
            <div class="form-group form-group-sm">
              <div class="col-lg-11">
                <select class="form-control" name="temperature" value="<?php echo set_value('temperature'); ?>">
                  <option value=""> </option>
                  <option value="A l ambiante/Room">A l'ambiante / Room T°</option>
                  <option value="A froid/Cold">A froid / Cold T°</option>
                  <option value="A chaud/Hot">A chaud / Hot T°</option>
                </select>
              </div>
            </div>
            <div class="form-group form-group-sm">
              <label for="Vibration"class="checkbox-inline">
                <input class=" inputsm" type="checkbox"  name="Vibration" value="<?php echo set_value('Vibration'); ?>">Vibration
              </label>
            </div>
            <div class="form-group form-group-sm">
              <label  class="form-control" for="CAUSE" >Autre Precision / Other information</label>
              <div class="col-lg-11">
                <textarea class="form-control" row no-gutterss="2" cols="35" name="CAUSE" value="<?php echo set_value('CAUSE'); ?>"></textarea>
              </div>
            </div>
          </div>
        </div>

      </div>

      <div class="row ">
        <div class="col-lg-12">
          <div class="panel panel-primary">
            <h6 align="center"> <strong>Examen visuel / Visual Inspection</strong> </h6>
            <h6 align="center">  (Séletionner l'option appropriée / Select appropriate option)  </h6>
            <div class="form-group form-group-sm">
              <div class="col-lg-4 ">
                <label class="control-label" for="Nothing_com">Composant/ Component</label>
                <select class="form-control" name="Nothing_comp" value="<?php echo set_value('Nothing_comp'); ?>">
                  <option value="Nothing ">Nothing </option>
                  <option value="Other">Other</option>
                </select>
              </div>
              <div class="col-lg-4">
                <textarea class="form-control" rows="4" cols="55" name="comment_comp" value="<?php echo set_value('comment_comp'); ?>"></textarea>
              </div>
            </div>


            <div class="form-group form-group-sm ">
              <div class="col-lg-4  ">
                <label class="control-label" for="nothing_Brasure"> Brasure/Welding</label>
                <select class="form-control" name="nothing_Brasure" value="<?php echo set_value('nothing_Brasure'); ?>">
                  <option value="Nothing ">Nothing </option>
                  <option value="Other">Other</option>
                </select>
              </div>
              <div class="col-lg-4 ">
                <textarea class="form-control" rows="3" cols="55" name="comment_brasure" value="<?php echo set_value('comment_brasure'); ?>"></textarea>
              </div>
            </div>


            <div class="form-group form-group-sm">
              <div class="col-lg-4 ">
                <label class="control-label" for="nothing_env"> Environnement/Environment</label>
                <select class="form-control" style="font-family: sans-serif;font-size: 0.8em;"name="nothing_env" value="<?php echo set_value('nothing_env'); ?>">
                  <option value="Nothing ">Nothing </option>
                  <option value="Other">Other</option>
                </select>
              </div>
              <div class="col-lg-4 ">
                <textarea class="form-control" rows="3" cols="55" name="comment_env" value="<?php echo set_value('comment_env'); ?>"></textarea>
              </div>
            </div>
          </div>
        </div>

      </div>
    </div>

  </div>

  <div class="row no-gutters">
    <div class="col-lg-4 ">
      <div class="panel panel-primary">
        <div class="panel-body">
          <div class="form-group form-group-sm">
            <label class="control-label col-sm-4 "for="NomRPS">Nom RPS<br>Product manager Name:</label>
            <div class="col-lg-7">
              <input class="form-control" type="text" name="NomRPS" value="<?php echo set_value('NomRPS'); ?>">
            </div>
          </div>
          <div class="col-lg-9">
            <div class="form-group form-group-sm">
              <label class="control-label col-lg-6 "for="DEC_EXP">Demande d'expertise<br>Analysis :</label>
              <label for="DEC_EXP"class="checkbox-inline">
                <input class=" inputsm" type="checkbox"  name="DEC_EXP"value="oui">Oui <br>Yes
              </label>
              <label for="DEC_EXP" class="checkbox-inline">
                <input class=" inputsm" type="checkbox"  name="DEC_EXP"value="non">Non <br>No
              </label>
            </div>

          </div>
        </div>
      </div>
    </div>
    <div class="col-lg-4">
      <div class="panel panel-primary">
        <h6 align="center"> <strong>Observation, motif de la dépose, dysfonctionnement observé, …<br>Remarks, cause of removal , observed dysfunction, ...</strong> </h6>
        <div class="form-group form-group-sm">
          <div class="col-lg-4 ">
            <label class="control-label" for="N_CR">ANOMALIE</label><br>
            <div class="col-lg-12">
              <input class="form-control" type="text" name="N_CR" value="<?php echo set_value('N_CR'); ?>">
            </div>
          </div>
        </div>

        <div class="form-group form-group-sm">
          <div class="col-lg-9 ">
            <label class="control-label" for="COMMENTAIRES">COMMENTAIRES</label><br>
            <div class="col-lg-8">
              <textarea class="form-control" row ="4" cols="65"></textarea>
            </div>
          </div>
        </div>
        <div class="form-group form-group-sm">
          <div class="col-lg-4  ">
            <label class="control-label" for="N_eSupport"> N°eSupport</label><br>
            <div class="col-lg-12">
              <input class="form-control" type="text" name="N_eSupport" value="<?php echo set_value('N_eSupport'); ?>">
            </div>
          </div>
        </div>
        <div class="form-group form-group-sm">
          <div class="col-lg-4 offset-md-4">
            <label class="control-label" for="COMMENTAIRES">N°Enveloppe</label><br>
            <div class="col-lg-5">
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="row no-gutters ">
    <div class="col-lg-4">
      <div class="panel panel-primary">
        <div class="form-group form-group-sm">
          <label class="control-label col-lg-10 "for="">Réservé à l'expertise,réponse rapide./Reserved for analysis,quick answer </label>
          <div class="col-lg-9"><br>
            <textarea class="form-control" row ="3" cols="45"></textarea>
          </div>
        </div>
      </div>
    </div>

  </div>

  <?php echo form_close(); ?>
</div>


<!-- jQuery -->
<script src=<?php echo base_url("assets/jQuery/jquery-2.2.4.min.js");?>></script>

<!-- Bootstrap Core JavaScript -->
<script src=<?php echo base_url("assets/bootstrap/js/bootstrap.min.js");?>></script>

<!-- Metis Menu Plugin JavaScript -->

<!-- DataTables JavaScript -->
<script src=<?php echo base_url("assets/DataTables/js/jquery.dataTables.min.js");?>></script>
<script src=<?php echo base_url("assets/DataTables/js/dataTables.bootstrap.min.js");?>></script>
