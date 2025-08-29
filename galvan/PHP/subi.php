
<?php
include "conexion.php";
$nombre=$_POST["nombre"];
$apellido=$_POST["apellido"];
$fecha=$_POST["fecha"];
$mail=$_POST["email"];
$usuario=$_POST["usuario"];
$clave=$_POST["contra"];

$SQL="SELECT * FROM usuarios WHERE usuario ='$usuario'";
if ($resultado = $con->query($SQL)){
	if($resultado->num_rows>0){
		header("Location:login.php?existe=si&nombre=$nombre&apellido=$apellido&fecha=$fecha&email=$mail");
		echo "usuario existente";
	}
	else{
		$SQL="INSERT INTO usuarios (nombre, apellido, fecha, email, usuario,contra) VALUES ('$nombre','$apellido','$fecha','$mail','$usuario','$clave')";
		if ($resultado = $con->query($SQL)){
			echo "Esta todo bien";
		}
	header("Location:..\index.php");
	}
}

?>