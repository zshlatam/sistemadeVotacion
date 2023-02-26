<?php
include_once '../config/database.php';

$conexionDB = Database::crearInstancia();

# código para traer todos los registros de la tabla cursos
$consulta = $conexionDB->prepare("SELECT * FROM regiones");
$consulta->execute();

# declaramos otra var para guardar la lista de ese select
$regiones = $consulta->fetchAll(); # fetchall retorna todos los datos

?>