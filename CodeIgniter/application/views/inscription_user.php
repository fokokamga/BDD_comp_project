<!DOCTYPE html>
<html lang="en">
<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Site de Gestion des Composants</title>

  <!--chargement  du  CSS -->
  <link href = <?php echo base_url("assets/css/enveloppe.css") ?> rel="stylesheet">

  <!-- Bootstrap Core CSS -->
  <link href = <?php echo base_url("assets/css/bootstrap.min.css") ?> rel="stylesheet">

  <!-- Custom CSS -->
  <link href=<?php echo base_url("assets/css/sb-admin.css")?> rel="stylesheet">

  <!-- Morris Charts CSS -->
  <link href=<?php echo base_url("assets/css/plugins/morris.css")?> rel="stylesheet">

  <!-- Custom Fonts -->
  <link href=<?php echo base_url("assets/font-awesome/css/font-awesome.min.css")?> rel="stylesheet" type="text/css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
  <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
  <![endif]-->
  <STYLE type="text/css">
  .titresite{position: absolute; top: 12px; right: -440px;}
  </STYLE>
</head>

<body>
  <section>
  <div id="wrapper">

    <div id="page-wrapper" align="center">
      <div class="container-fluid">
        <nav class="navbar navbar-light" style="background-color: #bdbdbd;">
          <div class="row">
            <div class="col-lg-12">
              <ul class="nav navbar-nav">
                <li class="dropdown">
                  <a class="dropdown-toggle" data-toggle="dropdown" href="#">Menu<span class="caret"></span></a>
                  <ul class="dropdown-menu">
                    <li><a href=<?php echo site_url("User_controller/index");?>>ajouter utilisateur</a></li>
                    <li><a href="#">Modifier utlisateur</a></li>
                    <li><a href="#">Supprimer utilisateur</a></li>
                  </ul>
                </li>
              </ul>
            </div>
          </div>
        </nav>
      </div>
    </div>
    <section>
      <h3 align="center">  Vous n'avez pas de compte, inscrivez vous !!</h3>
      <div align="center">
        <br /><br />
        <?php echo form_open('User_controller'); ?>

        <div class="form-group">
          <label class="control-label col-sm-5" for="N_TGI">N°TGI :</label>
          <div class="col-sm-2" >
            <input class="form-control" type="text" placeholder="Votre N°TGI"  name="N_TGI" <!--value="<?php/* if(isset($mail)) { echo $mail; } */?>"/>
            </div>
          </div>
        </br></br>
        <div class="form-group">
          <label class="control-label col-sm-5" for="Nom_Dem">Nom :</label>
          <div class="col-sm-2" >
            <input class="form-control" type="text" placeholder="Votre nom"  name="Nom_Dem" value="" />
          </div>
        </div>
      </br></br>
      <div class="form-group">
        <label class="control-label col-sm-5" for="prenom">Prenom :</label>
        <div class="col-sm-2" >
          <input class="form-control" type="text" placeholder="Votre prénom"  name="prenom"  />
        </div>
      </div>
    </br></br>
    <div class="form-group">
      <label class="control-label col-sm-5" for="Service_Dem">Service :</label>
      <div class="col-sm-2" >
        <input class="form-control" type="text"   name="Service_Dem"  />
      </div>
    </div>
  </br></br>
  <div class="form-group">
    <label class="control-label col-sm-5" for="Tel_Dem">Téléphone :</label>
    <div class="col-sm-2" >
      <input class="form-control" type="text"   name="Tel_Dem"  />

    </div>
  </div>
</br></br>
<div class="form-group">
  <label class="control-label col-sm-5" for="fonction">Fonction :</label>
  <div class="col-sm-2" >
    <input class="form-control" type="text"   name="fonction"  />
  </div>
</div>
</br></br>
<div class="form-group">
  <label class="control-label col-sm-5" for="Privilege">Privilège :</label>
  <div class="col-sm-2" >
    <input class="form-control" type="text" placeholder="administrateur, utilisateur ?" id="ville" name="Privilege"  />
  </div>
</div>
</br></br>
<div class="form-group">
  <label class="control-label col-sm-5" for="Mot_de_passe">Mot de passe:</label>
  <div class="col-sm-2" >
    <input class="form-control" type="text" placeholder="votre Mot de passe"  name="Mot_de_passe"  />
  </div>
</div>

</br></br>
<br />
<div class="form-group">
  <input class="btn btn-default" type="submit" name="forminscription" value="Je m'inscris" />
</div>
<?php echo form_close(); ?>

<p align="center"><h5>Si vous souhaitez clôturer votre compte,  envoyez un mail à  l'administrateur </h5></p>
<!--

-->
</div>

<!-- jQuery -->
<script src=<?php echo base_url("assets/javascript/jquery.js")?>></script>
<!-- Bootstrap Core JavaScript -->
<script src=<?php echo base_url("assets/javascript/bootstrap.min.js")?>></script>

<!-- Morris Charts JavaScript -->
<script src=<?php echo base_url("assets/javascript/plugins/morris/raphael.min.js")?>></script>
<script src=<?php echo base_url("assets/javascript/plugins/morris/morris.min.js")?>></script>
<script src=<?php echo base_url("assets/javascript/plugins/morris/morris-data.js")?>></script>
</section>
</body>
</html>
