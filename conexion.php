<?php


class Conexion{
    public function get_conexion(){
        $host = "localhost";
        $user = "ew";
        $pass = "ew";
        $db = "ew";
        
        $conexion = new PDO("mysql:host=$host;dbname=$db", $user, $pass); //"mysql:host=$servername;dbname=$db"
        echo "Connected successfully";
        
        return $conexion;
        
    }
}   
?> 