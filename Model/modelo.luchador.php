<?php

    class modeloLuchador{

        public function insertarLuchador($arg_nombre,$arg_rutaLogo,$arg_descripcion,$arg_rutaVideoPersonal){

            $modelo = new Conexion();
            $conexion = $modelo->get_conexion();
            $sql = "insert into luchador (nombre, rutaLogo, descripcion, rutaVideoPersonal) values (:nombre, :rutaLogo, :descripcion, :rutaVideoPersonal)";

            $statement = $conexion->prepare($sql);
            $statement->bindValue(':nombre',$arg_nombre); 
            $statement->bindValue(':rutaLogo',$arg_rutaLogo);
            $statement->bindValue(':descripcion',$arg_descripcion);
            $statement->bindValue(':rutaVideoPersonal',$arg_rutaVideoPersonal);
            
            if(!$statement){
                return 1;
            }else{
                $statement->execute();
                return 0;
                
                
            }
        }
        public function mostrarLuchadores(){
            $rows = null;
            $modelo = new Conexion();
            $conexion = $modelo->get_conexion();
            $sql = "select * from luchador";
            $statement = $conexion->prepare($sql);
            

            if(!$statement){
                return null;
            }else{
                $statement->execute(); 

                while($result = $statement->fetch()){
                    $rows[] = $result;
                }
                return $rows;
            }
        }

        public function eliminarLuchador($id){
            $modelo = new Conexion();
            $conexion = $modelo->get_conexion();
            $sql = "delete from luchador where idLuchador = :id";
            $statement = $conexion->prepare($sql);
            $statement->bindValue(':id',$id);            

            if(!$statement){
                return 1;
            }else{
                $statement->execute();
                return 0;
            }
            


        }

    }

?>