<?php
	$host = "ec2-3-208-224-152.compute-1.amazonaws.com";
	$user = "kshujjdassvumn";
	$pass = "667c596cdba889d769a90c5299f749f38764948f0134e91cba8846e4b1823a6f";
	$port = "5432";
	$dbname = "d89a0gfq83gg60";
	$conn = pg_connect("host=".$host." port=".$port." dbname=".$dbname." user=".$user." password=".$pass) or die("Gagal");
?>