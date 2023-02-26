<?php
// Extraemos la data del archivo .json
$jsonString = file_get_contents('comunas-regiones.json');
$data = json_decode($jsonString, true);

//creamos la conexión
$servername = 'localhost:8889';
$username =  'tester';
$password = '123123123';
$dbname = 'app_votaciones';

$conn = mysqli_connect($servername, $username, $password, $dbname);
if (!$conn) {
    die("La conexión a la base de datos falló: " . mysqli_connect_error());
}

// Empezamos con el poblado de las tablas regiones y comunas de la db
// para eso usaremos las funciones de mysqli  <- MySQL Improved
foreach ($data['regiones'] as $regionData) {
    $region = mysqli_real_escape_string($conn, $regionData['region']);
    
    $sql = "INSERT INTO regiones (nombre) VALUES ('$region')";
    if (!mysqli_query($conn, $sql)) {
        echo "Error al insertar región: " . mysqli_error($conn);
    } else {
        $regionId = mysqli_insert_id($conn);
        foreach ($regionData['comunas'] as $comunaData) {
            $comuna = mysqli_real_escape_string($conn, $comunaData);
            
            $sql = "INSERT INTO comunas (nombre, id_region) VALUES ('$comuna', '$regionId')";
            if (!mysqli_query($conn, $sql)) {
                echo "Error al insertar comuna: " . mysqli_error($conn);
            }
        }
    }
}
header('Location: ../views/cuestionario.php ');

?>