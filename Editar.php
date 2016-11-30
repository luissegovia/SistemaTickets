<?php 
$id=$_POST['id'];

include ("conexion_db.php");
$conexion = crearConexion();
$sql1 = "SELECT * FROM producto Where id_pro=$id ";
$result = $conexion -> query($sql1);
$fila = mysqli_fetch_object($result);
$result->data_seek(0);
 ?>

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
				<p align="center"> Producro con Id # <?php print $id; ?> </p>
				<br>
				
				<center>


  
  <form action="Actualizar.php" method="post">
  <div class="row">
    <div class="large-12 columns">
      <label>Nombre del Producto
        <input type="text" name="descripcion" value="<?php print $fila->nom_pro; ?>" disabled="true" />
      </label>
    </div>
  </div>
  <div class="row">
    <div class="large-4 columns">
      <label>Descripcion del Producto: 
        <input type="text" name="user" value="<?php print $fila->descr_pro; ?>" disabled="true" />
      </label>
    </div>
    <div class="large-4 columns">
      <label>Id del Producto:
        <input type="text" name="fo" value="<?php print $fila->id_pro; ?>" disabled="true" />
        <input type="hidden" name="folio" value="<?php print $fila->id_pro; ?>"  />
      </label>
    </div>

       <div class="large-4 columns">
      <label>Precio del Producto:
        <input type="text" name="categoria" value="<?php print $fila->pre_pro; ?>" disabled="true" />
      </label>
    </div>
  </div>
<div class="row">
    <div class="large-4 columns">
      <label>Cantidad del producto: 
        <input type="text" name="asignado" value="<?php print $fila->cant_pro; ?>" disabled="true" />
      </label>
    </div>
    <div class="large-4 columns">
      <label>Marca:
        <input type="text" placeholder="large-4.columns" value="<?php print $fila->marca_pro; ?>" disabled="true" />
      </label>
    </div>


   

  <!--   <div class="large-4 columns">
      <div class="row collapse">
        <label>Folio del Ticket</label>
        <div class="small-9 columns">
         <span class="postfix">Folio: </span> 
        </div>
        <div class="small-3 columns">
        <input type="text" value="<?php print $id; ?>" disabled="true" />
        </div>
      </div>
    </div> -->
  </div>
 

 <div class="row">
    <div class="large-12 columns">
        <input type="submit" class="button round" value="Actualizar Ticket" />
    </div>
  </div>





</form>

</div>
						
			






</body>
</html>