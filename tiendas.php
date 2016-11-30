<?php 

include ("conexion_db.php");
$conexion = crearConexion();
$sql1 = "SELECT * FROM tiendas order by id_tienda asc";
$result = $conexion -> query($sql1);
$ymcl2 = mysqli_fetch_object($result);
$result->data_seek(0);     		

 ?>

<!DOCTYPE html>
<html lang="en">
<head>
		<link rel="stylesheet" href="css/nuevo.css" />
	
	<link rel="stylesheet" href="css/foundation-icons/foundation-icons.css" />
	<meta charset="UTF-8">
	<title>CRM</title>
	<script type="text/javascript" src="http://code.jquery.com/jquery-1.6.min.js"></script>
    <script type="text/javascript" src="js/jquery.reveal.js"></script>
</head>
<body>
<?php
	include ("Logeado.php");
	?>

		<nav class="top-bar" data-topbar role="navigation">
		<ul class="title-area">
			<li class="name" fontcolor="#fff"><h1><a  href="#">Usuario: <?php echo $_SESSION['usuario'];?></a></h1></li>
			
		</ul>

		<ul class="title-area">
			<li class="name" fontcolor="#fff"><h1><a  href="nuevo.php">Home</a></h1></li>
			
		</ul>
	

	<section class="top-bar-section">
    
    <ul class="right">
      <li class="has-dropdown">
        <a href="#">Menu</a>
        <ul class="dropdown">
          <li class="active"><a href="tiendas.php">Tiendas</a></li>
          <li ><a href="nuevo.php">Tickets</a></li>
          <li><a href="usuarios.php">Empleados</a></li>
          <li><a href="CerrarSesion.php">Cerrar sesion</a></li>
        </ul>
      </li>
    </ul>



	</nav>
 

<br>

<div class="panel">
				<p align="center">TIENDAS</p>
					<table  align="center">
						
			<thead  >
              <tr align="center" >
           <th width="50" align="center" style="background-color:#258CB9">ID PLAZA</th>
                <th width="250" align="center" style="background-color:#258CB9">PLAZA</th>
                <th width="300" align="center" style="background-color:#258CB9">CR PLAZA</th>
                <th width="120" align="center" style="background-color:#258CB9">TIENDA</th>
                <th width="100" align="center" style="background-color:#258CB9">CR TIENDA</th>
                <th width="50" align="center" style="background-color:#258CB9">TELEFONO</th>
                
              </tr>
            </thead>
            <tbody >
              <?php while($ymcl2 = mysqli_fetch_object($result)) { ?>

					<tr>
					<td scope="column" align=center> <?php  print $ymcl2->id_tienda; ?></td>
					<td scope="column" align="center"><?php  print $ymcl2->plaza; ?></td>
					<td scope="column" align="center"><?php  print $ymcl2->cr_plaza; ?></td>
					<td scope="column" align="center"><?php  print $ymcl2->tienda; ?></td>
					<td scope="column" align="center"><?php  print $ymcl2->cr_tienda; ?></td>
					<td scope="column" align="center"><?php  print $ymcl2->telefono; ?></td>
				
					</tr>

					<?php
					}
					?>
          </tbody>

					</table>
</div>

 
	
		<script src="js/vendor/jquery.js"></script>
		<script src="js/foundation.min.js"></script>
	
		<script>
			$(document).foundation();
		</script>
</body>
</html>