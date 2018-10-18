<?php

    class modeloFotoEvento{

        public function insertarFotoEvento($arg_ruta,$arg_fkidevento){

            $modelo = new Conexion();
            $conexion = $modelo->get_conexion();
            $sql = "insert into fotoEvento (ruta, fkidevento) values (:ruta, :fkidevento)";

            $statement = $conexion->prepare($sql);
            $statement->bindValue(':ruta',$arg_ruta);
            $statement->bindValue(':fkidevento',$arg_fkidevento);
            
            if(!$statement){
                return 1;
            }else{
                $statement->execute();
                return 0;
                
                
            }
        }
        public function mostrarFotosEventos(){
            $rows = null;
            $modelo = new Conexion();
            $conexion = $modelo->get_conexion();
            $sql = "select * from fotoEvento";
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

        public function eliminarFotoEvento($id){
            $modelo = new Conexion();
            $conexion = $modelo->get_conexion();
            $sql = "delete from fotoEvento where idFotoEvento = :id";
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