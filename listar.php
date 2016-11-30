<?php
	require_once('conexion_db.php');
	$conexion=crearConexion();
//enviando consulta a db

	$sql=mysqli_query($conexion,"SELECT * FROM inventario");
	//$res=mysqli_fetch_array($sql);

//Pregunta si el resultado de la consulta tiene registro
	if ($sql) {
		?>
		<!DOCTYPE html>
		<html lang="es">
		<head>
			<meta charset="UTF-8">
			<link rel="stylesheet" type="text/css" href="php/css/estilosemp.css">
			<title>CRM</title>
		</head>
		<body>
			<form>
			<center><h1>Filtro</h1>
			<select id="filtro" name="fitro">
			<option>Seleccione...</option>
			<option value="plaza">Plaza</option>
			<option value="crplaza">CR_Plaza</option>
			<option value="crtienda">CR_Tienda</option>
			<option value="tienda">Tienda</option>
		</select><br></center>
		</form>




			<center>
				<table border="4" cellpadding="3" cellspacing="3">
					<tr bgcolor="white">
						<th colspan="6">Información</th>
					</tr>
					<tr bgcolor="white">
						<td><b>Num</td>
						<td><b>Plaza</td>
						<td align="center"><b>CR Plaza</td>
						<td><b>Tienda</td>
						<td><b>CR Tienda</td>
						<td><b>Tel</td>
						<?php
						//crear bucle para mostrar registros
						$n=0;
						while($reg=mysqli_fetch_row($sql)){
						//muestra los datos de cada fila como matriz
						$n++;
						//colorear filas
						//preguntar si la fila es par
						if($n%2==0){
							?>
							<tr bgcolor="lightblue">
							<?php
						}else{
							?>
							<tr bgcolor="white">
							<?php
						}
						?>
						<td aling="center"><?php echo $n; ?></td>
						<td aling="center"><?php echo $reg[0]; ?></td>
						<td><?php echo $reg[1]; ?></td>
						<td aling="center"><?php echo $reg[2]; ?></td>
						<td aling="center"><?php echo $reg[3]; ?></td>
						<td aling="center"><?php echo $reg[4]; ?></td>
						<?php
						}
						//cerrando la conexion
						mysqli_close($conexion);

						?>
					</tr>
				</table>
				<br>
				<a class="button mediano naranja" onClick="window.location='empleados.html'"><span>Ir al Menú</span></a>
			</center>
		</body>
		</html>


		<?php
	}else{
		echo "No existen registro";
	}

?>