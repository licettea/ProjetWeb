<?php

	include_once("../model/bd_pro_tips.php");
	
	function verifToken() {
	
		if(isset($_COOKIE['token'])) 
		{
			if (isset($_COOKIE['Invocateur']))
			{
				$donn�e = get_Token($_COOKIE['Invocateur']);
			}
			
			if($donn�e['Num_Token']==$_COOKIE['token'])
				return true;
		}
		
		return false;
	}

	include_once("../view/pro_tips_view.php");
?>