<?php
require_once('conexion_db.php');
$conexion=conectar();
?>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="php/css/estilosemp.css">
	<script type="text/javascript" src="js/funciones.js"></script>
	<title>Eliminacion de Empleados</title>
</head>
<body>
	<center>
		<h1>Eliminacion de Empleados</h1>
		<p>
		<?php
		$numemp=$_POST['txtNumEmp'];
		$sql=mysqli_query($conexion,"SELECT * FROM empleados where numemp = '".$numemp."'");
		if ($sql) {
			$reg=mysqli_fetch_assoc($sql);
			if ($reg) {
				?>
				<form name="form" action="eliminar2.php" method="POST">
				<table cellpadding="3" cellspacing="3">
					<tr>
						<td class="relleno silver">Numero de Empleado</td>
						<td class="relleno blanco"><input type="text" name="numemp" value="<?php echo $reg["numemp"]; ?>" readonly></td>
					</tr>
					<tr>
						<td class="relleno silver">Nombre</td>
						<td class="relleno blanco"><input type="text" name="nombre" value="<?php echo $reg["nombre"]; ?>" readonly></td>
					</tr>
					<tr>
						<td class="relleno silver">Sexo</td>
						<td class="relleno blanco"><input type="text" name="sexo" value="<?php echo $reg["sexo"]; ?>" readonly></td>
					</tr>
					<tr>
						<td class="relleno silver">Edad</td>
						<td class="relleno blanco"><input type="text" name="edad" value="<?php echo $reg["edad"]; ?>" readonly></td>
					</tr>
					<tr>
						<td class="relleno silver">Salario</td>
						<td class="relleno blanco"><input type="text" name="salario" value="<?php echo $reg["salario"]; ?>" readonly></td>
					</tr>
				</table>
				<input class="boton pequeno rojo" type="button" value="Eliminar" onClick="eliminar()">
				</form>
				<?php
			}else{
				echo "<script>
				alert('El Numero de empleado: $numemp NO EXSTE!!!')
				window.location='eliminar.html';
				</script>";
			}
		}else{
			echo "No existen registros";
		}

		?>
		<br>
		<a class="button mediano naranja" onClick="window.location='empleados.html'"><span>Ir al Menú</span></a>
	</center>
	
</body>
</html>