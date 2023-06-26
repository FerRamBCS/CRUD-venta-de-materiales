<?php
	include("php/conexion.php");
	$getmysql = new mysqlconex();
	$getconex = getmysql->conex();

	$consulta = "SELECT * FROM registro";
	$resultado = mysqli_query($getconex,$consulta);
	while ($fila = mysqli_fetch_row($resultado)) 
	{
		echo "<tr>";
		echo "<td>".$fila[0]."</td>";
		echo "<td>".$fila[1]."</td>";
		echo "<td>".$fila[2]."</td>";
		echo "<td>".$fila[3]."</td>";
		echo "<td>".$fila[4]."</td>";
		echo "<td>".$fila[5]."</td>";
		echo "<td>".$fila[6]."</td>";
		echo "<td>".$fila[7]."</td>";
		echo "</tr>";
	}
	mysqli_close($getconex);
?>