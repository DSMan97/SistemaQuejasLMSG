<?php
session_start();
$_SESSION['Nombre']=$_GET['Nombre'];
$_SESSION['codigo']=$_GET['codigo'];
?>
<html>
<body>
<a href="consultas.php"><img src="consultasymarcar.jpg" ></a>
</br>
</body>
<?php

echo $_GET['Nombre'];
echo " ";
echo "Código:".$_GET['codigo'];
?>
</html>
