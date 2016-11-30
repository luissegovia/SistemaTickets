<?php
	error_reporting(0);//esta linea sirve, para que no se muestre ningun wuarning en pantalla.
			$user=$_POST['user'];
			$empleado=$_POST['empleado'];
			$tipo=$_POST['tipousuario'];
			$pass=$_POST['psw'];
			$departamento=$_POST['depto'];
			include ("conexion_db.php");
			
				$conexion = crearConexion();
				$sqll="SELECT * FROM users WHERE user='{$user}' LIMIT 1;";
	$resultado = $conexion -> query($sqll);
		$fila = mysqli_fetch_object($resultado);
	$resultado->data_seek(0);
	if ($user==$fila->user) {
		echo"<!doctype html>";
					echo"<html>";
						echo"<body>";
		echo"<script>alert('el usuario ya existe, porfavor elige otro.');document.location.href='usuarios.php';</script>";
	echo"</body>";
echo"</html>";

}
else {
$sqll="INSERT INTO users (id_user,user,nom_user,password,departamento,tipo) VALUES (NULL, '{$user}','{$empleado}', '{$pass}', '{$departamento}','{$tipo}');";
$resultado = $conexion -> query($sqll);
if ($resultado) {
echo"<!doctype html>";
echo"<html>";
	echo"<body>";
		echo"<script>alert('Se creo correctamente el nuevo usuario.');document.location.href='usuarios.php';</script>";
	echo"</body>";
echo"</html>";

} else {
echo"<!doctype html>";
echo"<html>";
	echo"<body>";
		echo"<script>alert('No se creo correctamente el nuevo usuario, Intente de nuevo.');document.location.href='usuarios.php';</script>";
	echo"</body>";
echo"</html>";
}
}
?>