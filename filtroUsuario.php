<?php 
$user=$_POST['user'];
include ("conexion_db.php");
$conexion = crearConexion();
$sql = "SELECT * FROM folios Where usuario='{$user}' ";
$resultadoo = $conexion -> query($sql);
$filaa = mysqli_fetch_object($resultadoo);
$resultadoo->data_seek(0);

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
          <li class="active"><a href="nuevo.php">Tickets</a></li>
          <li><a href="usuarios.php">Empleados</a></li>
          <li><a href="CerrarSesion.php">Cerrar sesion</a></li>
        </ul>
      </li>
    </ul>



		<section class="top-bar-section">
		<ul class="right">
		<li class="has-dropdown">
        <a href="#"> Filtro</a>
        <ul class="dropdown">
          <li><a href="#" class="big-link" data-reveal-id="myModal1">Por Usuario</a></li>
          <li ><a href="#" class="big-link" data-reveal-id="myModal2">Por Status</a></li>
          <li><a href="#" class="big-link" data-reveal-id="myModal3">Por Fecha</a></li>
         
        </ul>
      </li>
				
			</ul>
		</section>

		<section class="top-bar-section">
			<ul class="right">
				<li><a href="#" class="big-link" data-reveal-id="myModal4"> Nuevo Ticket</a></li>
				
			</ul>
		</section>
	</nav>
 

<br>

<div class="panel">
				<p align="center">TICKETS</p>
					<table  align="center">
						
			<thead  >
              <tr align="center" >
           <th width="50" align="center" style="background-color:#258CB9">FOLIO</th>
                <th width="250" align="center" style="background-color:#258CB9">USUARIO</th>
                <th width="300" align="center" style="background-color:#258CB9">DESCRIPCIÓN</th>
                <th width="120" align="center" style="background-color:#258CB9">ASIGNADO A</th>
                <th width="100" align="center" style="background-color:#258CB9">CATEGORIA</th>
                <th width="50" align="center" style="background-color:#258CB9">PRIORIDAD</th>
                <th width="50" align="center" style="background-color:#258CB9">STATUS</th>
                <th width="300" align="center" style="background-color:#258CB9">SOLUCION</th>
                <th width="50" align="center" style="background-color:#258CB9">FECHA</th>
              </tr>
            </thead>
            <tbody >
              <?php while($filaa = mysqli_fetch_object($resultadoo)) { ?>

					<tr>
					<td scope="column" align=center> <?php  print $filaa->id_folio; ?></td>
					<td scope="column" align="center"><?php  print $filaa->usuario; ?></td>
					<td scope="column" align="center"><?php  print $filaa->descripcion; ?></td>
					<td scope="column" align="center"><?php  print $filaa->asignado; ?></td>
					<td scope="column" align="center"><?php  print $filaa->categoria; ?></td>
					<td scope="column" align="center"><?php  print $filaa->prioridad; ?></td>
					<td scope="column" align="center"><?php  print $filaa->status; ?></td>
					<td scope="column" align="center"><?php  print $filaa->solucion; ?></td>
					<td scope="column" align="center"><?php  print $filaa->fecha; ?></td>
					</tr>

					<?php
					}
					?>
          </tbody>

					</table>
</div>

 <div id="myModal4" class="reveal-modal">
    <form action="folios.php" method="post" align="left">
						  
						  <label>Usuario: </label> 
						   <select width=100% name="user" id="user">
						  <option selected="">Seleccione uno</option>
							<?php
							while($ymcl2 = mysqli_fetch_object($result)) {
								echo " <option value=$ymcl2->tienda>$ymcl2->tienda</option>";
							}
							?>
						</select>
						  <label>Descripcion: </label> <input type="text" name="descr">
						  <label>Asignado a: </label>

						  <select width=100% name="asignado" id="asignado">
						  
							<?php
							while($ymcl3 = mysqli_fetch_object($res)) {
								echo " <option value=$ymcl3->user>$ymcl3->user</option>";
							}
							?>
						</select>
			                <label>Categoria: </label> <select name="categoria">
			                
			                <option value="Software">Software</option>
			                <option value="Hardware">Hardware</option>
			                <option value="Impresoras">Impresoras</option>
			                <option value="Redes">Redes</option>
			                </select> 
			                <label>Prioridad: </label> <select name="prioridad">
			                <option value="Alta" selected>Alta</option>
			                <option value="Baja">Baja</option>
			                <option value="Media">Media</option>
			                </select>
			                <label>Estatus: </label> <select name="status">
			         
			                <option value="Abierto">Abierto</option>
			                </select>
	       
	                      <input  class="button" align="left" type="submit" name="enviar" value="Aceptar">  <input  class="button" align="right" type="button" name="enviar" value="Cancelar" >  
	                      </form>
  <a class="close-reveal-modal">&#215;</a>
</div>


  <div id="myModal1" class="reveal-modal">
    <form action="filtroUsuario.php" method="post" align="left">

						    <label>Seleccione un Usuario: </label> 
						   <select width=100% name="user" id="user">
						  <option selected="">Seleccione uno</option>
							<?php
							while($recorrido = mysqli_fetch_object($total)) {
								echo " <option value=$recorrido->tienda>$recorrido->tienda</option>";
							}
							?>
						</select>
	                      <input  class="button" align="left" type="submit" name="enviar" value="Aceptar">  <input  class="button" align="right" type="button" name="enviar" value="Cancelar" >  
	                      </form>
  <a class="close-reveal-modal">&#215;</a>
</div>
<div id="myModal2" class="reveal-modal">
    <form action="filtroStatus.php" method="post" align="left">
						  
						  
						 <label>Seleccione un Estatus: </label> <select name="status">
			         
			                <option value="Abierto">Abierto</option>
			                <option value="En Proceso">En Proceso</option>
			                <option value="Cerrado">Cerrado</option>
			                </select>
	                      <input  class="button" align="left" type="submit" name="enviar" value="Aceptar">  <input  class="button" align="right" type="button" name="enviar" value="Cancelar" >  
	                      </form>
  <a class="close-reveal-modal">&#215;</a>
</div>
<div id="myModal3" class="reveal-modal">
    <form action="filtroFecha.php" method="post" align="left">
						  
						  
						  <label>Seleccione una Fecha: </label> <input type="date" name="fecha">
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






































































































































 