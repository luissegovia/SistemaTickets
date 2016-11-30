<?php 
$fecha = time();
$fecha2 = date("Y-m-d",$fecha);
$user=$_POST['user'];
$descripcion=$_POST['descr'];
$asignado=$_POST['asignado'];
$categoria=$_POST['categoria'];
$prioridad=$_POST['prioridad'];
$status=$_POST['status'];

include ("conexion_db.php");
			
$conexion = crearConexion();
$sqll="INSERT INTO folios (id_folio, usuario, descripcion, asignado, categoria, prioridad, status, fecha) VALUES (NULL, '{$user}', '{$descripcion}', '{$asignado}', '{$categoria}', '{$prioridad}', '{$status}','{$fecha2}');";
$resultado = $conexion -> query($sqll);
if ($resultado) {
echo"<!doctype html>";
echo"<html>";
	echo"<body>";
		echo"<script>alert('Se creo un nuevo Folio.');document.location.href='nuevo.php';</script>";
	echo"</body>";
echo"</html>";

} else {
echo"<!doctype html>";
echo"<html>";
	echo"<body>";
		echo"<script>alert('No se creo correctamente el nuevo Folio, Intente de nuevo.');document.location.href='nuevo.php';</script>";
	echo"</body>";
echo"</html>";
}


 ?>