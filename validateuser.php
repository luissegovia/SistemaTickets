	<?php
	error_reporting(0);
			
			$user=$_POST['user'];
			$pass=$_POST['pass'];
			$tipo=$_POST['tipo_user'];
			include ("conexion_db.php");
			
	    		$conexion = crearConexion();
				$sqll="SELECT * FROM users WHERE user='{$user}' AND password='{$pass}' AND tipo='{$tipo}' LIMIT 1;";
	            $resultado = $conexion -> query($sqll);
	          	$fila = mysqli_fetch_object($resultado);
	            $resultado->data_seek(0);

	            if ($user==$fila->user and $pass==$fila->password) {

	            	if ($fila->tipo=="Admin") {
	            		session_start();
		            	$_SESSION['usuario']=$_POST['user'];
						echo"<!doctype html>";
						echo"<html>";
						echo"<body>";
						echo"<script>document.location.href='nuevo.php';</script>";
						echo"</body>";
						echo"</html>";
					
	            	} else {
	            		session_start();
		            	$_SESSION['usuario']=$_POST['user'];
						echo"<!doctype html>";
						echo"<html>";
						echo"<body>";
						echo"<script>document.location.href='invitado.php';</script>";
						echo"</body>";
						echo"</html>";
	            	}
	            	
					
				}
				else {
					echo"<!doctype html>";
					echo"<html>";
					echo"<body>";
					echo"<script>alert('usuario o password incorrectos, O el Tipo de Usuario es incorrecto, porfavor Intentelo de nuevo');document.location.href='index.html';</script>";
					echo"</body>";
					echo"</html>";
					
				}  
	           

				

				
				
	?> 
