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
	
	
	function coaching_list($Num_Invocateur_Eleve){
	
		global $bdd;
		$sql = "SELECT Date_Sceance, Nom_Invocateur, Nom_Role, Nom_Rang 
				FROM Invocateur, Coaching, Rang, Coach, Role
				WHERE Invocateur.Num_Invocateur = Coach.Num_Invocateur_Coach 
				AND Invocateur.Num_Rang = Rang.Num_Rang 
				AND Coaching.Num_Invocateur_Coach = Coach.Num_Invocateur_Coach
				AND Invocateur.Num_Role = Role.Num_Role
				AND Coaching.Num_Invocateur_Eleve = :Num_Invocateur_Eleve";

		$res = $bdd->prepare($sql);
		$res->execute(array(
				'Num_Invocateur_Eleve' => $Num_Invocateur_Eleve
		));
		
		return $res;
	}


?>