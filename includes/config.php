<?php
	ob_start();
	session_start();

	$timezone = date_default_timezone_set("Indian/Maldives");

	$con = mysqli_connect("sql12.freesqldatabase.com", "sql12593294", "ytEMRP8PnK", "sql12593294");

	if(mysqli_connect_errno()) {
		echo "Failed to connect: " . mysqli_connect_errno();
	}
?>