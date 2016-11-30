<?php
session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
</head>
<body>
	<?php
		require_once("conexion_db.php");
		if(isset($_POST['admin']))
		{
			$conexion=conectar();
			echo var_dump($conexion);
			$username=$_POST['nomus'];
			$pass=$_POST['contrasena'];


			$sql2=mysqli_query($conexion,"SELECT * FROM admin WHERE usuario='".$username."' and passadmin = '".$pass."'");
			echo var_dump($sql2);
			if ($f2=mysqli_fetch_array($sql2)) {
				if ($pass==$f2['passadmin']) {
						echo '<script>alert("BIENVENIDO ADMINISTRADOR")</script>';
						echo "<script>location.href='menu.html'</script>";
				}
			}else{

			$sql=mysqli_query($conexion,"SELECT * FROM empleado WHERE usuario='".$username."' and password = '".$pass."'");
			echo var_dump($sql);
			if ($f=mysqli_fetch_array($sql)) {
				if ($pass==$f['password']) {
						echo '<script>alert("BIENVENIDO al sistema de Ventas")</script>';
						echo "<script>location.href='sistema.php'</script>";
				}
			}else{
					echo '<script>alert("USUARIO O CONTRASEÑA INCORRECTOS")</script>';

					echo "<script>location.href='index.html'</script>";
				}
			}
		}
?>
</body>
</html>