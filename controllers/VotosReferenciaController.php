<?php
include_once '../config/database.php';
$conexionDB = Database::crearInstancia();

// Funcion para guardar las referencias, se usara en cuestionarioController
function guardarReferencias($voto, $referencia,$conexionDB){
    $sql = "INSERT INTO votos_referencia (id_voto, id_referencia)
            VALUES (:id_voto, :id_referencia)";
    $consulta = $conexionDB->prepare($sql);
    // Utiliza bindValue en lugar de bindParam para asignar valores a las variables
    $consulta->bindValue(':id_voto', $voto, PDO::PARAM_INT);
    $consulta->bindValue(':id_referencia', $referencia, PDO::PARAM_INT);
    $consulta->execute();
}


?>