<?php

    class modeloAdmin{

        public function insertarAdmin($arg_nombreAdmin,$arg_passAdmin){

            $modelo = new Conexion();
            $conexion = $modelo->get_conexion();
            $sql = "insert into admin (nombreAdmin, passAdmin) values (:nombreAdmin, :passAdmin)";

            $statement = $conexion->prepare($sql);
            $statement->bindValue(':nombreAdmin',$arg_nombreAdmin);
            $statement->bindValue(':passAdmin',$arg_passAdmin);
            
            if(!$statement){
                return 1;
            }else{
                $statement->execute();
                return 0;
                
                
            }
        }
        public function mostrarAdmins(){
            $rows = null;
            $modelo = new Conexion();
            $conexion = $modelo->get_conexion();
            $sql = "select * from admin";
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

        public function eliminarAdmin($id){
            $modelo = new Conexion();
            $conexion = $modelo->get_conexion();
            $sql = "delete from admin where idAdmin = :id";
            $statement = $conexion->prepare($sql);
            $statement->bindValue(':id',$id);            

            if(!$statement){
                return 1;
            }else{
                $statement->execute();
                return 0;
            }
            
        }

        public function mostrarAdmin($arg_nombreAdmin){
            $rows = null;
            $modelo = new Conexion();
            $conexion = $modelo->get_conexion();
            $sql = "select * from admin where nombreAdmin = :nombreAdmin";
            $statement = $conexion->prepare($sql);
            $statement->bindValue(':nombreAdmin',$arg_nombreAdmin);

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

        public function validarAdmin($arg_nombreAdmin, $arg_passAdmin){
            $res = false;
            $modelo = new Conexion();
            $conexion = $modelo->get_conexion();
            $sql = "select * from admin where nombreAdmin = :nombreAdmin AND passAdmin = :passAdmin";
            $statement = $conexion->prepare($sql);
            $statement->bindValue(':nombreAdmin',$arg_nombreAdmin);  
            $statement->bindValue(':passAdmin',$arg_passAdmin);  

            if(!$statement){
                return null;
            }else{
                $statement->execute();
                $results = $statement->fetch();
                if($results['nombreAdmin'] == $arg_nombreAdmin && $results['passAdmin'] == $arg_passAdmin){
                    $res = true;
                }
                echo $res;
                return $res;
            }
        }

    }

?>