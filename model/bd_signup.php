<?php

	include_once("connexion.php");
	
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
	
	
	function add_invocateur($Nom_Invocateur, $Date_Naissance, $Num_Serveur, $Num_Role, $Num_Rang, $Mdp_Invocateur){
	
		global $bdd;
		
		try {
				$sql = "INSERT INTO Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) VALUES (:Num_Invocateur, :Nom_Invocateur, :Date_Naissance, :Num_Serveur, :Num_Role, :Num_Rang, :Mdp_Invocateur, :Num_Token)";
				
				$res = $bdd->prepare($sql);
				$res->execute(array(
					'Num_Invocateur' => '',
					'Nom_Invocateur' => $Nom_Invocateur,
					'Date_Naissance' => $Date_Naissance,
					'Num_Serveur' => $Num_Serveur,
					'Num_Role' => $Num_Role,
					'Num_Rang' => $Num_Rang,
					'Mdp_Invocateur' => $Mdp_Invocateur,
					'Num_Token' => NULL
				));
				
		} catch (PDOException $e) {
			echo 'Erreur : ' . $e->getMessage();
			exit;
		}
			
	}
	
	function prepare_eleve($Nom_Invocateur, $Num_Serveur){
		
		global $bdd;
		
		$sql = "SELECT Num_Invocateur FROM Invocateur WHERE Nom_Invocateur = :Nom_Invocateur AND Num_Serveur = :Num_Serveur";
		
		$res = $bdd->prepare($sql);
		$res->execute(array(
			'Nom_Invocateur' => $Nom_Invocateur,
			'Num_Serveur' => $Num_Serveur
		));
		
		$données = $res->fetch();
		return $données;
	}
	
	function add_eleve($Num_Invocateur_Eleve){
	
		global $bdd;
		$sql = "INSERT INTO Eleve (Num_Invocateur_Eleve) VALUES (:Num_Invocateur_Eleve)";
		
		$res = $bdd->prepare($sql);
		$res->execute(array(
			'Num_Invocateur_Eleve' => $Num_Invocateur_Eleve));
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