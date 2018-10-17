<?php


class Conexion{
    public function get_conexion(){
        $host = "localhost";
        $user = "ew";
        $pass = "ew";
        $db = "ew";
        try{
            $conexion = new PDO("mysql:host=$host;dbname=$db", $user, $pass);
            
            return $conexion;
        
        }catch (PDOException $e) {
            print "¡Error!: " . $e->getMessage() . "<br/>";
            
        }
        
    }
}   
?> 