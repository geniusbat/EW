<?php 


require("class.phpmailer.php");
$mail = new PHPMailer();

//Luego tenemos que iniciar la validación por SMTP:
$mail->IsSMTP();
$mail->SMTPAuth = true;
$mail->Host = "mail.yopmail.com"; // A RELLENAR. Aquí pondremos el SMTP a utilizar. Por ej. mail.midominio.com
$mail->Username = "alejandro"; // A RELLENAR. Email de la cuenta de correo. ej.info@midominio.com La cuenta de correo debe ser creada previamente. 
$mail->Password = ""; // A RELLENAR. Aqui pondremos la contraseña de la cuenta de correo
$mail->Port = 25; // Puerto de conexión al servidor de envio. 
$mail->From = "alejandro@yopmail.com"; // A RELLENARDesde donde enviamos (Para mostrar). Puede ser el mismo que el email creado previamente.
$mail->FromName = ""; //A RELLENAR Nombre a mostrar del remitente. 
$mail->AddAddress("alebarrod@alum.us.es"); // Esta es la dirección a donde enviamos 
$mail->IsHTML(true); // El correo se envía como HTML 
$mail->Subject = "Prueba"; // Este es el titulo del email. 
$body = "Esto es un correo de prueba\n"; 
$body .= "Aquí continuamos el mensaje";
$mail->Body = $body; // Mensaje a enviar. $exito = $mail->Send(); // Envía el correo.
if($exito){
    echo "El correo fue enviado correctamente.";
}else{
    echo "Hubo un problema. Contacta a un administrador.";
} 

?>