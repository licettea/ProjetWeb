<?php
	
	include_once("connexion.php");
	
	//
	// ACTUALISATION TOKEN LORS DE LA DECONNEXION
	//
	
	function update_token_logout ($Num_Invocateur){
	
		global $bdd;
		
		$sql = "UPDATE Invocateur SET Num_Token = Null WHERE Num_Invocateur = :Num_Invocateur";
		
		$res = $bdd->prepare($sql);
		$res->execute(array(
			'Num_Invocateur' => $Num_Invocateur
		));
	}
	

?>