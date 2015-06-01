<?php
	
	include_once("connexion.php");
	
	function server_list(){
	
		global $bdd;
		$sql = "SELECT Num_Serveur, Nom_Serveur FROM Serveur";

		$res = $bdd->prepare($sql);
		$res->execute();

		return $res;
	}
	
	function prepare_eleve($Nom_Invocateur, $Num_Serveur){
		
		global $bdd;
		
		$sql = "SELECT Num_Invocateur FROM Invocateur WHERE Nom_Invocateur = :Nom_Invocateur AND Num_Serveur = :Num_Serveur";
		
		$res = $bdd->prepare($sql);
		$res->execute(array(
			'Nom_Invocateur' => $Nom_Invocateur,
			'Num_Serveur' => $Num_Serveur
		));
		
		$donn�es = $res->fetch();
		return $donn�es;
	}
	
	function get_Num_Invocateur($Nom_Invocateur, $Num_Serveur){
	
		global $bdd;
		
		$sql = "SELECT Num_Invocateur FROM Invocateur WHERE Nom_Invocateur = :Nom_Invocateur AND Num_Serveur = :Num_Serveur";
		
		$res = $bdd->prepare($sql);
		$res->execute(array(
			'Nom_Invocateur' => $Nom_Invocateur,
			'Num_Serveur' => $Num_Serveur
		));
		
		$donn�es = $res->fetch();
		return $donn�es;
	}
	
	function verif_mdp($Nom_Invocateur, $Num_Serveur){
	
		global $bdd;
		
		$sql = "SELECT Mdp_Invocateur FROM Invocateur WHERE Nom_Invocateur = :Nom_Invocateur AND Num_Serveur = :Num_Serveur";
		
		$res = $bdd->prepare($sql);
		$res->execute(array(
			'Nom_Invocateur' => $Nom_Invocateur,
			'Num_Serveur' => $Num_Serveur
		));
		
		$donn�es = $res->fetch();
		return $donn�es;
	}
	
	function update_token_login ($Num_Token, $Nom_Invocateur, $Num_Serveur){
	
		global $bdd;
		
		$sql = "UPDATE Invocateur SET Num_Token = :Num_Token WHERE Nom_Invocateur = :Nom_Invocateur AND Num_Serveur = :Num_Serveur";
		
		$res = $bdd->prepare($sql);
		$res->execute(array(
			'Num_Token' => $Num_Token,
			'Nom_Invocateur' => $Nom_Invocateur,
			'Num_Serveur' => $Num_Serveur
		));
	}
	
	
	function get_Token($Num_Invocateur){
		
			global $bdd;
			$sql = "SELECT Num_Token FROM Invocateur WHERE Num_Invocateur = :Num_Invocateur";

			$res = $bdd->prepare($sql);
			$res->execute(array(
				'Num_Invocateur' => $Num_Invocateur
			));
			
			$donn�es = $res->fetch();
			return $donn�es;
			
	}





?>