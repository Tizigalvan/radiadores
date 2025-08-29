<?php
try {
    $base= new PDO ("mysql:host=localhost; dbname=radia", "root", "");
    $base->setAttribute (PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $sql= "SELECT * FROM usuarios WHERE usuario= :usuario AND contra= :clave";
    $resultado= $base->prepare($sql);
    $usuario=htmlentities(addslashes ($_POST["usuario"])); //omite caracteres especiales
    $clave=htmlentities(addslashes ($_POST["clave"]));
    //el marcador se corresponde con log
    $resultado->bindValue(":usuario", $usuario);
    $resultado->bindValue(":clave", $clave);
    $resultado->execute(); //ejecutamos
    $dato=$resultado->fetch(); //convierto a un arreglo para metodo pdo
	//corroboramos si el usuario existe en la bbdd   
    $cantidad_registro=$resultado->rowCount(); //el resultado es 0 o 1
    if ($cantidad_registro!=0) {
        session_start();
        $_SESSION["usuario"]=$_POST["usuario"];
        $_SESSION["id"]=$dato['id'];
        $_SESSION["email"]=$dato['email'];
        $_SESSION["apellido"]=$dato['apellido'];

    	header("Location:login.php");
    }else {    	
		header("Location:..\index.php");
    }
} catch (Exception $e) {
    die ("Error: " .$e->getMessage());
}
?>