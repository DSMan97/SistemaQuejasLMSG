<!DOCTYPE html>
<html>
<head>
  <style type="text/css">

  </style>
<title>Escribe la queja que desee</title>
</head>
<body>
<?php
session_start();
$_SESSION['codigo'];
$_SESSION['Nombre'];
$nombre=$_SESSION['Nombre'];
$codigo=$_SESSION['codigo'];
   ?>
  <form method="get" action="enviar.php" name="form">
<br>
<br>
<select name="quejas">
  <option >SOCIAL</option>
  <option >CONFLICTIVA</option>
  <option >AMBIENTAL</option>
  <br>
  <br>
  <label name="Sexo">Sexo:</label> <br>
  <input type="radio"  name="genero" value="Hombre">Hombre<br>
  <input type="radio"  name="genero" value="Mujer">Mujer<br>
<textarea rows="4" cols="50" name="texto"></textarea>
<input type="submit" value="Enviar"/>
</form>
<?php
echo "<input type='visibility' name='X' value='$_GET[img_x]' method='get'>";
?>
<br>
<br>
<!-- <p>Y</p> -->
<?php
echo "<input type='visibility' name='Y' value='$_GET[img_y]' method='get'>";
?>
<?php
echo "<input type='visibility' name='Nombre' value='$nombre' method='get'>";
?>
<?php
echo "<input type='visibility' name='codigo' value='$codigo' method='get'>";
?>
</body>
</html>