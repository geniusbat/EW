<?php
include_once('conexion.php');
include_once('Model/modelo.admin.php');
session_start();
print_r($_POST);
if(isset($_POST['nombreAdmin']) && validateNombreAdmin($_POST['nombreAdmin'])
 && isset($_POST['passAdmin']) && validatePassAdmin($_POST['passAdmin'])){

    $modeloAdmin = new modeloAdmin();
    $res = $modeloAdmin->validarAdmin($_POST['nombreAdmin'],$_POST['passAdmin']);

    if($res){
        $adminData = $modeloAdmin->mostrarAdmin($_POST['nombreAdmin']);
        
        if($adminData != null){
            $_SESSION['idAdmin'] = $adminData[0]['idAdmin'];
            $_SESSION['nombreAdmin'] = $adminData[0]['nombreAdmin'];
            $_SESSION['passAdmin'] = $adminData[0]['passAdmin'];
        }
        
    }


}else{
    header('Location: loggin.php');
}

function validateNombreAdmin($nombreAdmin){
    return True;
}

function validatePassAdmin($passAdmin){
    return True;
}