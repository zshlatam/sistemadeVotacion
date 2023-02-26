<?php
include_once '../config/database.php';

// Obtener la región seleccionada desde la solicitud POST
$region = $_POST['region'];

function obtenerComunasPorRegion($region) {
  // Realizar la consulta a la base de datos para obtener las comunas de la región
  $sql = "SELECT id, nombre FROM comunas WHERE id_region = :region_id";
  $conexionDB = Database::crearInstancia();
  $consulta= $conexionDB->prepare($sql);
  $consulta->bindParam(':region_id', $region);
  $consulta->execute();
  $comunas = $consulta->fetchAll(PDO::FETCH_ASSOC);

  $resultados= $comunas;

  return $resultados;
}
// Consultar la base de datos para obtener las comunas de la región
// Aquí se asume que se tiene una función llamada obtenerComunasPorRegion($region) que realiza la consulta a la base de datos y devuelve un array de objetos JSON con las comunas correspondientes
$comunas = obtenerComunasPorRegion($region);

// Devolver los resultados como un objeto JSON
echo json_encode($comunas);
?>
