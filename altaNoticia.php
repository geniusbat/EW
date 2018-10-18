<?php
include_once('conexion.php');
include_once('Model/modelo.noticia.php');
session_start();
print_r($_POST);
if(isset($_POST['titulo']) && validateTitulo($_POST['titulo'])
 && isset($_POST['descripcion']) && validateDescripcion($_POST['descripcion'])
 && isset($_POST['rutaFoto']) && validateRutaFoto($_POST['rutaFoto'])
 && isset($_POST['fkIdEvento']) && validateFkIdEvento($_POST['fkIdEvento'])){

    $modeloNoticia = new modeloNoticia();
    $res = $modeloNoticia->insertarNoticia($_POST['titulo'],$_POST['descripcion'],$_POST['rutaFoto'],$_POST['fkIdEvento']);

    if($res == 0){
        echo "<h1>Éxito</h1>";
        
    }else{
        echo "<h1>Error</h1>";
    }


}else{
    header('Location: formNoticias.php');
}

function validateTitulo($titulo){
    return True;
}

function validateDescripcion($descripcion){
    return True;
}

function validateRutaFoto($rutaFoto){
    return True;
}

function validateFkIdEvento($fkIdEvento){
    return True;
}