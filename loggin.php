<?php
session_start();
if(isset($_SESSION) && isset($_SESSION['nombreAdmin'])){
    header('Location: altaNoticia.php');
}


?>
<!DOCTYPE html>
<html>
<head>

</head>
<body>

<h2>Añadir noticias</h2>

<form action="actionLoggin.php" method="post">
  Título:<br>
  <input type="text" name="nombreAdmin" value="Título">
  <br>
  Contraseña:<br>
  <input type="password" name="passAdmin">
  <br><br>
  <input type="submit" value="Submit">
</form> 

</body>
</html>
