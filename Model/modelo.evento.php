<?php

    class modeloEvento{
        public function insertarEvento($arg_nombre,$arg_calle,$arg_ciudad,$arg_estadio,$arg_cartelPromocional,$arg_rutaFotoTitulo,$arg_rutaVideoTrailer,$arg_rutaVideoClausura = "",$arg_rutaFotoResultado = ""){

            $modelo = new Conexion();
            $conexion = $modelo->get_conexion();
            $sql = "insert into evento (nombreEvento, fechaHora, calle, ciudad, nombreEstadio, cartelPromocional, rutaFotoTitulo, rutaVideoTrailer, rutaVideoClausura, rutaFotoResultados) values (:nombreEvento, :fechaHora, :calle, :ciudad, :nombreEstadio, :cartelPromocional, :rutaFotoTitulo, :rutaVideoTrailer, :rutaVideoClausura, :rutaFotoResultados)";

            $time = new DateTime();
            $statement = $conexion->prepare($sql);
            $statement->bindValue(':nombreEvento',$arg_nombre); 
            $statement->bindValue(':fechaHora',$time->getTimestamp());
            $statement->bindValue(':calle',$arg_calle);
            $statement->bindValue(':ciudad',$arg_ciudad);
            $statement->bindValue(':nombreEstadio',$arg_estadio);
            $statement->bindValue(':cartelPromocional',$arg_cartelPromocional);
            $statement->bindValue(':rutaFotoTitulo',$arg_rutaFotoTitulo);
            $statement->bindValue(':rutaVideoTrailer',$arg_rutaVideoTrailer);
            $statement->bindValue(':rutaVideoClausura',$arg_rutaVideoClausura);
            $statement->bindValue(':rutaFotoResultados',$arg_rutaFotoResultado); 
            
            if(!$statement){
                return "Error en statement";
            }else{
                $statement->execute();
                return "Inserción realizada";
                
                
            }
        }
        public function mostrarEventos(){
            $rows = null;
            $modelo = new Conexion();
            $conexion = $modelo->get_conexion();
            $sql = "select * from evento";
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

        public function eliminarEvento($id){
            $modelo = new Conexion();
            $conexion = $modelo->get_conexion();
            $sql = "delete from evento where eventoId = :id";
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