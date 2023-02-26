<?php
# creamos la clase
Class Database{
    public static $instancia = null; # creamos una instancia para la conexión
    public static function crearInstancia(){

        if (!isset(self::$instancia)) { # preguntamos !si la instancia tiene algo

            $opciones[PDO::ATTR_ERRMODE] = PDO::ERRMODE_EXCEPTION;
            self::$instancia = new PDO('mysql:host=localhost:8889;dbname=app_votaciones','tester','123123123',$opciones);
            //echo "conectado..."; # retorna este mensaje si se conecta a la db
        }
        return self::$instancia; # retorna null
    }
}

?>