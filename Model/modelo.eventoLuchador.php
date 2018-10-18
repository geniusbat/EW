<?php

    class modeloEventoLuchador{

        public function insertarEventoLuchador($arg_fkidEvento,$arg_fkidLuchador){

            $modelo = new Conexion();
            $conexion = $modelo->get_conexion();
            $sql = "insert into eventoLuchador (fkidEvento, fkidLuchador) values (:fkidEvento, :fkidLuchador)";

            $statement = $conexion->prepare($sql);
            $statement->bindValue(':fkidEvento',$arg_fkidEvento);
            $statement->bindValue(':fkidLuchador',$arg_fkidLuchador);
            
            if(!$statement){
                return 1;
            }else{
                $statement->execute();
                return 0;
                
                
            }
        }
        public function mostrarEventosLuchadores(){
            $rows = null;
            $modelo = new Conexion();
            $conexion = $modelo->get_conexion();
            $sql = "select * from eventoLuchador";
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

        public function eliminarEventoLuchador($id){
            $modelo = new Conexion();
            $conexion = $modelo->get_conexion();
            $sql = "delete from eventoLuchador where id = :id";
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