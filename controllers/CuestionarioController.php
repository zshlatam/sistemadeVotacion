<?php
include_once '../config/database.php';
include_once 'VotosReferenciaController.php';

# Abrimos la conexión con la db
$conexionDB = Database::crearInstancia();

// Helpers
//print_r($_POST); # helper para ver el contenido del form 
//print_r($_POST['como_se_entero_web']); 

// Variables
$nombre = isset($_POST['nombreapp'])?$_POST['nombreapp']:'';
$alias = isset($_POST['alias'])?$_POST['alias']:'';
$rut = isset($_POST['alias'])?$_POST['rut']:'';
$email= isset($_POST['email'])?$_POST['email']:'';
$comuna = isset($_POST['comuna'])?$_POST['comuna']:'';
$candidato = isset($_POST['candidato'])?$_POST['candidato']:'';
$web = isset($_POST['Web'])?$_POST['Web']:'';
$tv = isset($_POST['TV'])?$_POST['TV']:'';
$redes_sociales = isset($_POST['RRSS'])?$_POST['RRSS']:'';
$amigo = isset($_POST['Amigos'])?$_POST['Amigos']:'';

// Carga del cuestionario
$sql = "INSERT INTO votos (nombre_apellido, alias, RUT, email, id_comuna, id_candidato)
        VALUES (:nombre, :alias, :RUT, :email, :comuna, :candidato)";
$consulta = $conexionDB->prepare($sql);

// Utiliza bindValue en lugar de bindParam para asignar valores a las variables
$consulta->bindValue(':nombre', $nombre, PDO::PARAM_STR);
$consulta->bindValue(':alias', $alias, PDO::PARAM_STR);
$consulta->bindValue(':RUT', $rut, PDO::PARAM_STR);
$consulta->bindValue(':email', $email, PDO::PARAM_STR);
$consulta->bindValue(':comuna', $comuna, PDO::PARAM_INT);
$consulta->bindValue(':candidato', $candidato, PDO::PARAM_INT);
//$consulta->execute();

//Llama a execute() para ejecutar la consulta
if ($consulta->execute()) {

    $voto = $conexionDB->lastInsertId();# traemos la id de nuestro voto
    # Cargamos la tabla voto_referidos con la data del cuestionario
    if ($web !== '') {
        guardarReferencias($voto, $web,$conexionDB);
    }
    if ($tv !== '') {
        guardarReferencias($voto, $tv,$conexionDB);
    }
    if ($redes_sociales !== '') {
        guardarReferencias($voto, $redes_sociales,$conexionDB);
    }
    if ($amigo !== '') {
        guardarReferencias($voto, $amigo, $conexionDB);
    }
    
    header('Location: ../views/done.php ');
    exit();
    } else {
        // En caso de fallar, mostrar un mensaje de error
        $error = $consulta->errorInfo();
        echo "Error al ejecutar la consulta: " . $error[2];
    }

?>





