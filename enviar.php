<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
  </head>
  <body>
    <?php
         $queja=$_GET['quejas'];
         $genero=$_GET['genero'];
         $texto=$_GET['texto'];
         $x=$_GET['X'];
         $y=$_GET['Y'];
         $id=$_GET['codigo'];
$servername="localhost";
$username="root";
$password="";
$dbname="proyectojs_quejas";
$conn=mysqli_connect($servername,$username,$password,$dbname);
if (!$conn) {
  die("Conection failed".mysqli_connect_error());
  # code...
}
$sql= "INSERT INTO quejas(id, queja, genero, x, y, descripcion) Values ('$id', '$queja', '$genero', '$x', '$y', '$texto')";
if (mysqli_query($conn, $sql)) {
    echo "Gracias por enviar su queja";
	echo "<br>";
	echo "Pinche "."<a href='index.html'>aqui</a>"." para volver al mapa";
} else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}
  mysqli_close($conn);
     ?>
  </body>
</html>
