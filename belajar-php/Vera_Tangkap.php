<?php
var_dump($_GET);
?>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
	<fieldset id="ini">
		<label for="ini">DATA</label>
		<form method="POST" action="proses.php">
			<p>Nama : <input type="text" name="nama"></p>
			<p>Alamat : <input type="text" name="alamat"></p>
			<p><input type="submit" value="proses" name="submit"></p>
		</form>	
	</fieldset>
</body>
</html>