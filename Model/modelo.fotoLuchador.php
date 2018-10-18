<?php

    class modeloFotoLuchador{

        public function insertarFotoLuchador($arg_ruta,$arg_fkidluchador){

            $modelo = new Conexion();
            $conexion = $modelo->get_conexion();
            $sql = "insert into fotoLuchador (ruta, fkidluchador) values (:ruta, :fkidluchador)";

            $statement = $conexion->prepare($sql);
            $statement->bindValue(':ruta',$arg_ruta);
            $statement->bindValue(':fkidluchador',$arg_fkidluchador);
            
            if(!$statement){
                return 1;
            }else{
                $statement->execute();
                return 0;
                
                
            }
        }
        public function mostrarFotosLuchadores(){
            $rows = null;
            $modelo = new Conexion();
            $conexion = $modelo->get_conexion();
            $sql = "select * from fotoLuchador";
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

        public function eliminarFotoLuchador($id){
            $modelo = new Conexion();
            $conexion = $modelo->get_conexion();
            $sql = "delete from fotoLuchador where idFoto = :id";
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