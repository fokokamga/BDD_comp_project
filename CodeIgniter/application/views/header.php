
<?php
defined ( 'BASEPATH' ) or exit ( 'No direct script access allowed' );
?>

<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Site de Gestion des Composants</title>

  <!-- Bootstrap Core CSS -->
  <link href=<?php echo base_url("assets/bootstrap/css/bootstrap.min.css");?> rel="stylesheet">
  <link href=<?php echo base_url("assets/DataTables/css/dataTables.bootstrap.min.css");?> rel="stylesheet">

  <!-- DataTables CSS -->
  <link href=<?php echo base_url("assets/DataTables/css/jquery.dataTables.min.css");?> rel="stylesheet">
  <link rel="stylesheet" type="text/css" href=<?php echo base_url("assets/Buttons-1.3.1/css/buttons.dataTables.min.css");?>>
  <!-- DataTables Responsive CSS -->

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
  <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
  <![endif]-->
  <style>
  .row.no-gutters {
  margin-right: 0;
  margin-left: 0;

}
.row.no-gutters > [class^="col-"],
.row.no-gutters > [class*=" col-"] {
  padding-right: 0;
  padding-left: 0;

}
.voffset  { margin-bottom: 10px; }
.voffset1 { margin-top: 5px; }
.voffset2 { margin-top: 10px; }
.voffset3 { margin-top: 15px; }
.voffset4 { margin-top: 30px; }
.voffset5 { margin-top: 40px; }
.voffset6 { margin-top: 60px; }
.voffset7 { margin-top: 80px; }
.voffset8 { margin-top: 100px; }
.voffset9 { margin-top: 150px; }
  </style>

</head>

<body>



  <!-- Navigation -->
  <nav class="navbar navbar-inverse">
    <div class="container-fluid">
      <div class="col-sm-12">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">COMPONENT MANAGEMENT</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
          <ul class="nav navbar-nav">
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-envelope"></span> Dépose Enveloppe<span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href=<?php echo site_url("Edit_enveloppe_controller/index");?>>Remplir enveloppe</a></li>
                <li><a href=<?php echo site_url("view_env_controller/index");?>>Voir les enveloppes saisies</a></li>
                <li><a href=<?php echo site_url("ExcelDataInsert");?>>Upload File/Charger fichier</a></li>
              </ul>
            </li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="true"><span class="glyphicon glyphicon-wrench"></span> Expertise<span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="#">Action</a></li>
                <li><a href="#">Another action</a></li>
                <li><a href="#">Something else here</a></li>
                <li role="separator" class="divider"></li>
                <li><a href="#">Separated link</a></li>
                <li role="separator" class="divider"></li>
                <li><a href="#">One more separated link</a></li>
              </ul>
            </li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-scale"></span> Appareils <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="#">Action</a></li>
                <li><a href="#">Another action</a></li>
                <li><a href="#">Something else here</a></li>
                <li role="separator" class="divider"></li>
                <li><a href="#">Separated link</a></li>
                <li role="separator" class="divider"></li>
                <li><a href="#">One more separated link</a></li>
              </ul>
            </li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Alertes Composants<span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="#">Action</a></li>
                <li><a href="#">Another action</a></li>

              </ul>
            </li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Composants<span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="#">Action</a></li>
                <li><a href="#">Another action</a></li>

              </ul>
            </li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Obsolescence<span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="#">Action</a></li>
                <li><a href="#">Another action</a></li>

              </ul>
            </li>

          </ul>
          <form class="navbar-form navbar-left">
            <div class="form-group">
              <input type="text" class="form-control" placeholder="Search">
            </div>
          </form>
          <ul class="nav navbar-nav navbar-right">
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">User Name <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="<?php echo site_url("User_controller/index");?>"><span class="glyphicon glyphicon-user"></span>  Mon Profil</a></li>
                <li><a href="#"><span class="glyphicon glyphicon-wrench"></span>  Paramètres</a></li>
                <li><a href="#"><span class="glyphicon glyphicon-off"></span>  Déconnexion</a></li>

              </ul>
            </li>
          </ul>
        </div><!-- /.navbar-collapse -->
      </div><!-- /.container-fluid -->
    </div>
  </nav>
