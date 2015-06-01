<?php
	
	include_once("../model/bd_logout.php");
	
	unset_cookies();
	
	function unset_cookies(){
	
		if(isset($_COOKIE['token'])) 
		{
			if (isset($_COOKIE['Invocateur']))
			{
				update_token_logout($_COOKIE['Invocateur']);
				setcookie("token", "", time() - 3600);
				setcookie("Invocateur", "", time() - 3600);
			}
		}
		
	}
	

	include_once("login.php");
?>