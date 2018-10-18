
<?php
require_once("conexion.php");
require_once("model/modelo.evento.php");
$modelo = new modelo();
$res = $modelo->insertarEvento("Evento5","calle prueba","ciudad prueba","estadio prueba","a","b","c");

/*$conexion = $modelo->mostrarEventos();
foreach($conexion as $a){
    echo implode($a)."<br><br>->";
}*/