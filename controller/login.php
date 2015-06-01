<?php

	include_once("../model/bd_login.php");
	
	if (isset($_POST["submit"]))
	{
		$name_ok = verifLog_name($_POST['invocateur'],$_POST['server']);
		$pass_ok = verifLog_mdp($_POST['invocateur'],$_POST['server'],$_POST['pass']);
		
		if (($name_ok==true) && ($pass_ok==true)){
			$token = create_token();
			set_token($token, $_POST['invocateur'], $_POST['server']);
			create_cookie_user($_POST['invocateur'], $_POST['server']);
			header('Location: accueil.php');
		}
		
	}
	
	
	function show_server(){
		$servers = server_list();
		
		$options='';
		
		while($données = $servers->fetch()){
			
			$options = $options.'<option value="'.$données['Num_Serveur'].'">'.$données['Nom_Serveur'].'</option>';
		}
		return $options;
	}

	function create_Token(){
		$token = md5(str_shuffle("abcdefghijklmnopqrstuvwxyz0123456789").time());
		setcookie("token",$token, time() + (86400));
		return $token;
	}
	
	function set_token($Num_Token, $Nom_Invocateur, $Num_Serveur) {
		update_token_login ($Num_Token, $Nom_Invocateur, $Num_Serveur);
	}
	
	function create_cookie_user($Nom_Invocateur, $Num_Serveur){
		$Num_Invocateur = get_Num_Invocateur($Nom_Invocateur,$Num_Serveur);
		setcookie("Invocateur",$Num_Invocateur['Num_Invocateur'], time() + (86400));
	}
	
	function verifLog_name($Nom_Invocateur, $Num_Serveur) {
		$verification_name = get_Num_Invocateur($Nom_Invocateur,$Num_Serveur);
		if ($verification_name['Num_Invocateur']==NULL)
			return false;
		else
			return true;
	}
	
	function verifLog_mdp($Nom_Invocateur, $Num_Serveur, $password){
		$verification_mdp = verif_mdp($Nom_Invocateur,$Num_Serveur);
		if ($verification_mdp['Mdp_Invocateur']!=md5($password))
			return false;
		else
			return true;
	}
	
	
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
	

	include_once("../view/login_view.php");
?>

