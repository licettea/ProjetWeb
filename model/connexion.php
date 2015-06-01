<?php

	try
	{
		// Champ à modifier
		$bdd = new PDO('mysql:host=localhost;dbname=lolearning;charset=utf8', 'root', '');
		$bdd->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	}
	catch (PDOException $e)
	{
		echo 'Erreur : ' . $e->getMessage();
		exit;
	}

?>