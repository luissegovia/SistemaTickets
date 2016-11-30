<?php 

include ("conexion_db.php");
$conexion = crearConexion();
$sql1 = "SELECT * FROM tiendas order by tienda asc";
$result = $conexion -> query($sql1);
$ymcl2 = mysqli_fetch_object($result);
$result->data_seek(0);


$user = "SELECT * FROM tiendas order by tienda asc";
$total = $conexion -> query($user);
$recorrido = mysqli_fetch_object($total);
$total->data_seek(0);


$sql2 = "SELECT * FROM users WHERE tipo='Soporte'; ";
$res = $conexion -> query($sql2);
$ymcl3 = mysqli_fetch_object($res);
$res->data_seek(0);



$sql3 = "SELECT * FROM users WHERE tipo='Soporte'; ";
$re = $conexion -> query($sql3);
$fila = mysqli_fetch_object($re);
$re->data_seek(0);



$sql = "SELECT * FROM folios order by id_folio asc ";
$resultadoo = $conexion -> query($sql);
$filaa = mysqli_fetch_object($resultadoo);
$resultadoo->data_seek(0);
            		

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
          <li><a href="tiendas.php">Tiendas</a></li>
          <li ><a href="nuevo.php">Tickets</a></li>
          <li class="active"><a href="#">Empleados</a></li>
          <li><a href="CerrarSesion.php">Cerrar sesion</a></li>
        </ul>
      </li>
    </ul>



			<section class="top-bar-section">
			<ul class="right">
				<li><a href="#" class="big-link" data-reveal-id="myModal1"> Nuevo Empleado</a></li>
				
			</ul>
		</section>
	</nav>
 

<br>

<div class="panel">
				<p align="center">Lista de Empleados</p>
					<table  align="center">
						
			<thead  >
              <tr align="center" >
           <th width="50" align="center" style="background-color:#258CB9">ID USER</th>
                <th width="250" align="center" style="background-color:#258CB9">USUARIO</th>
                <th width="300" align="center" style="background-color:#258CB9">NOMBRE DEL EMPLEADO</th>
                <th width="120" align="center" style="background-color:#258CB9">PASSWORD</th>
                <th width="100" align="center" style="background-color:#258CB9">DEPARTAMENTO</th>
                <th width="50" align="center" style="background-color:#258CB9">TIPO DE USUARIO</th>
              </tr>
            </thead>
            <tbody >
              <?php while($ymcl3 = mysqli_fetch_object($res)) { ?>

					<tr>
					<td scope="column" align=center> <?php  print $ymcl3->id_user; ?></td>
					<td scope="column" align="center"><?php  print $ymcl3->user; ?></td>
					<td scope="column" align="center"><?php  print $ymcl3->nom_user; ?></td>
					<td scope="column" align="center"><?php  print $ymcl3->password; ?></td>
					<td scope="column" align="center"><?php  print $ymcl3->departamento; ?></td>
					<td scope="column" align="center"><?php  print $ymcl3->tipo; ?></td>
					
					</tr>

					<?php
					}
					?>
          </tbody>

					</table>
</div>

 
 <div id="myModal1" class="reveal-modal">
    <form action="NewUserValidate.php" method="post" align="left">
						  
						  <label>Usuario: </label> <input type="text" name="user" required="">
						  <label>Nombre del Empleado: </label> <input type="text" name="empleado" required="">
						  <label>Password: </label><input type="text" name="psw" required="">
			                <label>Departamento: </label> <select name="depto" required="">
			                
			                <option value="Sistemas">Sistemas</option>
			                </select> 
			                <label>Tipo de Usuario: </label> <select name="tipousuario" required="">
			                <option  selected>Seleecione una</option>
			                <option value="Soporte">Soporte</option>
			                <option value="Admin">Administrador</option>
			                </select>

	                      <input  class="button" align="left" type="submit" name="enviar" value="Aceptar">  <input  class="button" align="right" type="button" name="enviar" value="Cancelar" >  
	                      </form>
  <a class="close-reveal-modal">&#215;</a>
</div>


	
		<script src="js/vendor/jquery.js"></script>
		<script src="js/foundation.min.js"></script>
	
		<script>
			$(document).foundation();
		</script>
</body>
</html>