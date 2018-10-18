<?php

    class modeloNoticia{

        public function insertarNoticia($arg_titular,$arg_descripcion,$arg_rutaFoto,$arg_fkidevento){

            $modelo = new Conexion();
            $conexion = $modelo->get_conexion();
            $sql = "insert into noticia (titular, descripcion, rutaFoto, fkidevento) values (:titular, :descripcion, :rutaFoto, :fkidevento)";

            $statement = $conexion->prepare($sql);
            $statement->bindValue(':titular',$arg_titular);
            $statement->bindValue(':descripcion',$arg_descripcion);
            $statement->bindValue(':rutaFoto',$arg_rutaFoto);
            $statement->bindValue(':fkidevento',$arg_fkidevento);
            
            if(!$statement){
                return 1;
            }else{
                $statement->execute();
                return 0;
                
                
            }
        }
        public function mostrarNoticias(){
            $rows = null;
            $modelo = new Conexion();
            $conexion = $modelo->get_conexion();
            $sql = "select * from noticia";
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

        public function eliminarNoticia($id){
            $modelo = new Conexion();
            $conexion = $modelo->get_conexion();
            $sql = "delete from noticia where idNoticia = :id";
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