<?php
session_start();
print_r($_SESSION);
if(!isset($_SESSION['nombreAdmin'])){
    header('Location: loggin.php');
}
?>
<!DOCTYPE html>
<html>
<head>

</head>
<body>

<h2>Añadir noticias</h2>

<form action="altaNoticia.php" method="post">
  Título:<br>
  <input type="text" name="titulo" value="Título">
  <br>
  Descripción:<br>
  <textarea type="textarea" name="descripcion">Descripción de la noticia</textarea>
  <br>
  Ruta de la foto:<br>
  <input type="text" name="rutaFoto" value="">
  <br>
  Evento al que corresponde:<br>
  <input type="text" name="fkIdEvento" value="1">
  <br><br>
  <input type="submit" value="Submit">
</form> 

</body>
</html>
