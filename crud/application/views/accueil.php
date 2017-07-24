<!DOCTYPE html>
<html>
  <meta charset="UTF-8">
  <head>
    <link rel="stylesheet" href="<?php echo base_url();?>css/style.css" />
    <title></title>
  </head>
  <body>
    <div id="content">
      
      <h1><?php echo $heading;?></h1>
      
      <?php
      if($rows != null):
      foreach($rows as $r):?>
      
      <div class="article">
        
        <h2><?php echo $r->titre;?></h2>
        <p><?php echo nl2br($r->contenu);?></p>
        <span class="delete"><a href="<?php echo site_url('site/delete/'.$r->id);?>">X</a></span>
        <span class="update"><a href="<?php echo site_url('site/update/'.$r->id);?>">Modifier</a></span>
        <span class="date"><?php echo date('d/m/Y H:i',strtotime($r->date));?></span>
        
      </div>
      
      <?php endforeach; endif;?>
      
      
      <?php echo form_open('site');?>
      
      <label for="titre">Titre:</label>
      <?php echo form_error('titre','<span class="error">','</span>');?>
      <input type="text" name="titre" value="<?php echo set_value('titre');?>" />
      
      <label for="contenu">Contenu:</label>
      <?php echo form_error('contenu','<span class="error">','</span>');?>
      <textarea name="contenu"><?php echo set_value('contenu');?></textarea>
      
      <input type="submit" value="Ajouter" />
      
      
      
      <?php echo form_close();?>
      
    </div>
  </body>
</html>