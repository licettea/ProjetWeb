<?php

	include_once("../model/bd_signup.php");
	
	//
	// FONCTION PERMETTANT D'ALIMENTER LES LISTES DEROULANTES DU FORMULAIRE
	//
	
	function show_rang(){
	
		$rangs = rang_list();
		
		$options='';
		
		while($données = $rangs->fetch()){
			
			$options = $options.'<option value="'.$données['Num_Rang'].'">'.$données['Nom_Rang'].'</option>';
		}
		return $options;
	}
	
	
	function show_role(){
	
		$roles = role_list();
		
		$options='';
		
		while($données = $roles->fetch()){
			
			$options = $options.'<option value="'.$données['Num_Role'].'">'.$données['Nom_Role'].'</option>';
		}
		return $options;
	
	}
	
	function show_server(){
		$servers = server_list();
		
		$options='';
		
		while($données = $servers->fetch()){
			
			$options = $options.'<option value="'.$données['Num_Serveur'].'">'.$données['Nom_Serveur'].'</option>';
		}
		return $options;
	}
	
	
	//
	// VERIFICATION DU TOKEN DE SECURITE
	//
	
	function verifToken() {
	
		if(isset($_COOKIE['token'])) 
		{
			if (isset($_COOKIE['Invocateur']))
			{
				$donnée = get_Token($_COOKIE['Invocateur']);
			}
			
			if($donnée['Num_Token']==$_COOKIE['token'])
				return true;
		}
		
		return false;
	}
	
	
	//
	// FONCTION DE VERIFICATION DE VALIDITE DU FORMULAIRE
	//
	
	 function formatDate() {
		
		if (isset($_POST['birth'])) {
			$date = explode("-",$_POST['birth']);
			
			if (isset($date[0]) && isset($date[1]) && isset($date[2]) && !isset($date[3])) {
				$annee = $date[0];
				$mois = $date[1];
				$jour = $date[2];
			}else {
				$erreur = "Wrong format for your date (aaaa-mm-jj required).";
				return $erreur;
			}
			
			if ($jour<1 || $jour>31 || $mois<1 || $mois>12 || $annee < 1900) {
				$erreur = "Not a valid date.";
				return $erreur;
			}
			
			if ($annee >= 2000) {
				$erreur = "You must be a least 16 years-old.";
				return $erreur;
			}
			
			if ($jour==31 && ($mois==4 || $mois==6 || $mois==9 || $mois==11)) {
				$erreur = "This month stop at 30 days.";
				return $erreur;
			}
			
			if ($mois==2 && ($jour==30 || $jour==31)) {
				$erreur = "February is a month that contains 29 days";
				return $erreur;
			}
		}	
		return 1;
		
	}
	
	function champVideInvoc () {
		if (isset($_POST['invocateur'])){
			
			if ($_POST['invocateur']==null)
				return "This field is required.";
		}
			return 1;
	}
	
	function champVideMdp () {
		if (isset($_POST['pass'])){
			
			if ($_POST['pass']==null)
				return "This field is required.";
		}
			return 1;
	}
	
	//
	// VERIFICATION DU FORMULAIRE
	//
	
	$erreurVideInvoc = champVideInvoc();
	$erreurVideMdp = champVideMdp ();
	$erreurDate = formatDate();
	
	if ( ($erreurVideInvoc != 1) || ($erreurVideMdp != 1) || ($erreurDate != 1))
		$validation = 0;
	else
		$validation = 1;
		
	//
	//ENREGISTREMENT DANS LA BASE
	//
	
	if (isset($_POST['submit']) && $validation==1) {
		$password = md5($_POST['pass']);
		add_invocateur($_POST['invocateur'], $_POST['birth'], $_POST['server'], $_POST['role'], $_POST['rang'], $password);
		$eleve = prepare_eleve($_POST['invocateur'],$_POST['server']);
		add_eleve($eleve['Num_Invocateur']);
	}
	
	include_once("../view/signup_view.php");
?>