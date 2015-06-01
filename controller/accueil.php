<?php

	include_once("../model/bd_accueil.php");
	
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

	include_once("../view/accueil_view.php");

?>