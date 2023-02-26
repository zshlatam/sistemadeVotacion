<?php
include_once '../config/database.php';

$conexionDB = Database::crearInstancia();

# código para traer todos los registros de la tabla 
$consulta = $conexionDB->prepare("SELECT * FROM referencias");
$consulta->execute();

# declaramos otra var para guardar la lista de ese select
$referencias= $consulta->fetchAll(); # fetchall retorna todos los datos


?>