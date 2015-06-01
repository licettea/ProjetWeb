<?php
	include_once("connexion.php");
	
	//
	// Fonction d'accès à la base de données pour les listes déroulantes
	//
	
	function rang_list(){
	
		global $bdd;
		$sql = "SELECT Num_Rang, Nom_Rang FROM Rang";

		$res = $bdd->prepare($sql);
		$res->execute();
		
		
		return $res;
	}
	
	function role_list(){
	
		global $bdd;
		$sql = "SELECT Num_Role, Nom_Role FROM Role";

		$res = $bdd->prepare($sql);
		$res->execute();

		return $res;
	}
	
	function server_list(){
	
		global $bdd;
		$sql = "SELECT Num_Serveur, Nom_Serveur FROM Serveur";

		$res = $bdd->prepare($sql);
		$res->execute();

		return $res;
	}
	
	
	//
	//Fonction d'affichage des coachs selon les critères renseignés.
	//
	
	function spe_coach($Num_Serveur, $Num_Role){
	
		global $bdd;
		$sql = "SELECT Num_Invocateur, Nom_Invocateur, Nom_Rang 
				FROM Coach, Invocateur, Rang, Role, Serveur
				WHERE Invocateur.Num_Invocateur = Coach.Num_Invocateur_Coach 
				AND Invocateur.Num_Rang = Rang.Num_Rang 
				AND Invocateur.Num_Serveur = Serveur.Num_Serveur 
				AND Invocateur.Num_Role = Role.Num_Role
				AND Invocateur.Num_Serveur = :Num_Serveur
				AND Invocateur.Num_Role = :Num_Role";
				
		$res = $bdd->prepare($sql);
		$res->execute(array(
			'Num_Serveur' => $Num_Serveur,
			'Num_Role' => $Num_Role
		));
		
		return $res;
	}
	
	//
	//Fonction de demande du Token pour vérification
	//
	
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
	
	//
	// Enregistrement de la seance de coaching
	//
	
	function insert_coaching($Date_Sceance, $Num_Invocateur_Eleve, $Num_Invocateur_Coach){
	
		global $bdd;
		$sql = "INSERT INTO Coaching (Num_Sceance, Date_Sceance, Num_Invocateur_Eleve, Num_Invocateur_Coach) VALUES (:Num_Sceance, :Date_Sceance, :Num_Invocateur_Eleve, :Num_Invocateur_Coach)";

		$res = $bdd->prepare($sql);
		$res->execute(array(
			'Num_Sceance' => '',
			'Date_Sceance' => $Date_Sceance,
			'Num_Invocateur_Eleve' => $Num_Invocateur_Eleve,
			'Num_Invocateur_Coach' => $Num_Invocateur_Coach
		));
		
	}
	
?>