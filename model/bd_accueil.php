<?php
	include_once("connexion.php");

	function get_Token($Num_Invocateur){
		
			global $bdd;
			$sql = "SELECT Num_Token FROM Invocateur WHERE Num_Invocateur = :Num_Invocateur";

			$res = $bdd->prepare($sql);
			$res->execute(array(
				'Num_Invocateur' => $Num_Invocateur
			));
			
			$données = $res->fetch();
			return $données;
			
	}
	

?>