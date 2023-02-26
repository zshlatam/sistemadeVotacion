<?php
include_once '../config/database.php';

// Conecta a la base de datos
$conexionDB = Database::crearInstancia();
// Recupera el valor del rut enviado por la solicitud POST
$rut = $_POST['rut'];
#echo($rut);
# código para traer todos los registros de la tabla cursos
$consulta = $conexionDB->prepare("SELECT RUT FROM votos WHERE RUT = :rut");
$consulta->bindParam(':rut',$rut);
$consulta->execute();
$resultado = $consulta->fetch(PDO::FETCH_ASSOC);
#print_r($resultado);
#print_r('---');

// Verifica si existe el rut en la base de datos

// $resultado = $conexion->query($sql);


if ($resultado) {
  // Si el rut existe, devuelve una respuesta "existe"
  echo "existe";
} else {
  // Si el rut no existe, devuelve una respuesta vacía
  echo "";
}

// Cierra la conexión a la base de datos
// $conexion->close();
?>
