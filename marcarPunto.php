<?php
$servername = "localhost";
                $user = "root";
                $password = "";
                $dbname = "proyectojs";
                $conn = new mysqli($servername, $user,$password, $dbname);
                if ($conn->connect_error) {
                    die("Error: " . $conn->connect_error);
                }else
                    echo "Conexión con BBDD correcta"."<br>";
                    if (!$conn->set_charset("utf8")) {
                  printf("Error cargando el conjunto de caracteres utf8: %s\n", $conn->error);
              exit();
              } else {
                  printf("Conjunto de caracteres actual: %s\n", $conn->character_set_name());
              }
$code= $_GET["codigo"];
$sql="SELECT foto FROM `madrid` where codigo=$code";


  echo "<img src='".$code['foto']. "'> ";

 ?>
