<?php

    class modeloColaborador{

        public function insertarColaborador($arg_rutaLogo,$arg_link,$arg_fkidevento){

            $modelo = new Conexion();
            $conexion = $modelo->get_conexion();
            $sql = "insert into colaborador (rutaLogo, link, fkidevento) values (:rutaLogo, :link, :fkidevento)";

            $statement = $conexion->prepare($sql);
            $statement->bindValue(':rutaLogo',$arg_rutaLogo);
            $statement->bindValue(':link',$arg_link);
            $statement->bindValue(':fkidevento',$arg_fkidevento);
            
            if(!$statement){
                return 1;
            }else{
                $statement->execute();
                return 0;
                
                
            }
        }
        public function mostrarColaboradores(){
            $rows = null;
            $modelo = new Conexion();
            $conexion = $modelo->get_conexion();
            $sql = "select * from colaborador";
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

        public function eliminarColaborador($id){
            $modelo = new Conexion();
            $conexion = $modelo->get_conexion();
            $sql = "delete from colaborador where idColaborador = :id";
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