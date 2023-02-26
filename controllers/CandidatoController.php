<?php
include_once '../config/database.php';

$conexionDB = Database::crearInstancia();

# código para traer todos los registros de la tabla 
$consulta = $conexionDB->prepare("SELECT * FROM candidatos");
$consulta->execute();

# declaramos otra var para guardar la lista de ese select
$candidatos = $consulta->fetchAll(); # fetchall retorna todos los datos

//print_r($candidatos);
// foreach ($candidatos as $candidato){
//     echo $candidato['nombre'];
// }


/* ejemplo de if
if($accion == 'agregar') {
    echo "si agrega el id " . $id; # prueba
}else{
    echo "no es agregar";
}*/

?>