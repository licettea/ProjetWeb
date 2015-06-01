<?php
	include_once("connexion.php");
	
	function coach_list(){
	
		global $bdd;
		$sql = "SELECT Nom_Invocateur, Nom_Role, Nom_Rang, Nom_Serveur 
				FROM Invocateur, Rang, Coach, Role, Serveur 
				WHERE Invocateur.Num_Invocateur = Coach.Num_Invocateur_Coach 
				AND Invocateur.Num_Rang = Rang.Num_Rang 
				AND Invocateur.Num_Serveur = Serveur.Num_Serveur 
				AND Invocateur.Num_Role = Role.Num_Role";

		$res = $bdd->prepare($sql);
		$res->execute();
		
		return $res;
	}
	
	
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