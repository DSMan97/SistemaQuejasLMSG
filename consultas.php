<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>test</title>
   
    <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false&amp;language=es"></script>
</head>
</html>

<?php
session_start();
$_SESSION['Nombre'];
$_SESSION['codigo'];
?>
<?php
$_SESSION['Nombre'];
$_SESSION['codigo'];
?>
<?php

try{
  $conexion=new PDO('mysql:host=localhost;dbname=proyectojs_quejas','root','');
  $cadena_sql="select Foto from madrid where (Codigo=". $_SESSION['codigo'].")";
  $resultado=$conexion->query($cadena_sql);

  foreach ($resultado as $fila) {
        echo "<form action='formulario.php' method='get'>";
        echo '<input type="image" name="img" id="recuadro" target="_new" width="1000px" height="600px" class="imagen"  onclick="coordenadas()" onmouseover="mostrar()" onmousemove="mover()" onmouseout="ocultar()" src="'.$fila['Foto'].'" >';
        echo "</form>";

  }
}
catch(PDOException $e){}
   ?>
