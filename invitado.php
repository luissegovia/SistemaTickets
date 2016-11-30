
<!DOCTYPE html>
<html lang="en">
<head>
	<link rel="stylesheet" text "text/css" href="css/nuevo.css">
	<link rel="stylesheet" href="css/foundation-icons/foundation-icons.css" />
	<meta charset="UTF-8">
	<title>CRM</title>
	<script type="text/javascript" src="http://code.jquery.com/jquery-1.6.min.js"></script>
    <script type="text/javascript" src="js/jquery.reveal.js"></script>
</head>
<body>
<?php
	include ("Logeado.php");
	$usuario = $_SESSION['usuario'];
	include ("conexion_db.php");
	$conexion = crearConexion();
	$sql1 = "SELECT * FROM empleados order by nom_empleado asc";
	$result = $conexion -> query($sql1);
	$ymcl2 = mysqli_fetch_object($result);
	$result->data_seek(0);

	$sql2 = "SELECT * FROM users WHERE tipo='Soporte'; ";
	$res = $conexion -> query($sql2);
	$ymcl3 = mysqli_fetch_object($res);
	$res->data_seek(0);



	$sql = "SELECT * FROM folios WHERE asignado='{$usuario}' AND status='Abierto'  OR status='En Proceso' ";
	$resultadoo = $conexion -> query($sql);
	$filaa = mysqli_fetch_object($resultadoo);
	$resultadoo->data_seek(0);
	?>


		<nav class="top-bar">
		<ul class="title-area">
			<li class="name" fontcolor="#fff"><h1><a  href="#">Usuario: <?php echo $_SESSION['usuario'];?></a></h1></li>
			
		</ul>
		<ul class="title-area">
			<li class="name" fontcolor="#fff">
			<h1>
			<li><a href="CerrarSesion.php">Cerrar sesion</a></li>
			</h1>
			</li>
			
		</ul>

	
	</nav>


<br>

<div class="panel">
				<p align="center">FOLIOS</p>
					<table  align="center">
						
			<thead  >
              <tr align="center" >
                <th width="60" align="center" style="background-color:#258CB9">FOLIO</th>
                <th width="150" align="center" style="background-color:#258CB9">USUARIO</th>
                <th width="300" align="center" style="background-color:#258CB9">DESCRIPCIÓN</th>
                <th width="150" align="center" style="background-color:#258CB9">ASIGNADO A</th>
                <th width="150" align="center" style="background-color:#258CB9">CATEGORIA</th>
                <th width="150" align="center" style="background-color:#258CB9">PRIORIDAD</th>
                <th width="150" align="center" style="background-color:#258CB9">STATUS</th>
                <th width="80" align="center" style="background-color:#258CB9"></th>
              </tr>
            </thead>
            <tbody >
              <?php while($filaa = mysqli_fetch_object($resultadoo)) { ?>
              <form action="Editar.php" method="POST">
					<tr>
					<td scope="column" align=center> <?php  print $filaa->id_folio; ?></td>
					<td scope="column" align="center"><?php  print $filaa->usuario; ?></td>
					<td scope="column" align="center"><?php  print $filaa->descripcion; ?></td>
					<td scope="column" align="center"><?php  print $filaa->asignado; ?></td>
					<td scope="column" align="center"><?php  print $filaa->categoria; ?></td>
					<td scope="column" align="center"><?php  print $filaa->prioridad; ?></td>
					<td scope="column" align="center"><?php  print $filaa->status; ?></td>
					<input type="hidden" name="id" value="<?php print $filaa->id_folio; ?>">
          			<td scope="column" align="center"><input type='submit' name='submit' class="button round tiny" value="Editar"></input></td>
					</tr>
					</form>
					<?php
					}
					?>
          </tbody>

					</table>
</div>





</body>
</html>