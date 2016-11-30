<?php
		$status=$_POST['status'];
		$folio=$_POST['folio'];
		$solucion=$_POST['solucion'];

	/*	print($folio);
		echo "<br>";
		print($status);
		echo "<br>";
		print($solucion);*/
		include ("conexion_db.php");
		
    		$conexion = crearConexion();
			$Mysqll="UPDATE folios SET status = '$status', solucion = '$solucion' WHERE id_folio = $folio ";
            $resultadooo = $conexion -> query($Mysqll);// ejecutamos el query.
            


            	if ($resultadooo) {
            		
                    	echo"<!doctype html>";
						echo"<html>";
						echo"<body>";
						echo"<script>alert('Se ha cambiado el status del ticket y se ha insertado la solucion.');document.location.href='invitado.php';</script>";
						echo"</body>";
						echo"</html>";	
					
            	} else {
            		echo"<!doctype html>";
					echo"<html>";
					echo"<body>";
					echo"<script>alert('Nose ha podido cambiar el status del ticket, intentalo de nuevo');document.location.href='Editar.php';</script>";
					echo"</body>";
					echo"</html>";
            	}
            	
				
			 
           

			

			
			
?> 
