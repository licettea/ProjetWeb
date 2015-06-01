<?php
	include_once("../model/bd_reservation.php");
	
	//
	// FONCTION PERMETTANT D'ALIMENTER LES LISTES DEROULANTES DU FORMULAIRE
	//
	
	function show_rang(){
	
		$rangs = rang_list();
		
		$options='';
		
		while($donn�es = $rangs->fetch()){
			
			$options = $options.'<option value="'.$donn�es['Num_Rang'].'">'.$donn�es['Nom_Rang'].'</option>';
		}
		return $options;
	}
	
	
	function show_role(){
	
		$roles = role_list();
		
		$options='';
		
		while($donn�es = $roles->fetch()){
			
			$options = $options.'<option value="'.$donn�es['Num_Role'].'">'.$donn�es['Nom_Role'].'</option>';
		}
		return $options;
	
	}
	
	function show_server(){
		$servers = server_list();
		
		$options='';
		
		while($donn�es = $servers->fetch()){
			
			$options = $options.'<option value="'.$donn�es['Num_Serveur'].'">'.$donn�es['Nom_Serveur'].'</option>';
		}
		return $options;
	}
	
	function show_coach($Num_Serveur, $Num_Role){
		$coachs = spe_coach($Num_Serveur, $Num_Role);
		
		$options='';
		
		while($donn�es = $coachs->fetch()){

			$options = $options.'<option value="'.$donn�es['Num_Invocateur'].'">'.$donn�es['Nom_Invocateur'].'</option>';
		}
		return $options;
	}
	
	
	function table_coachs_needed($Num_Serveur, $Num_Role){
		$coachs = spe_coach($Num_Serveur, $Num_Role);
		
		$table_coachs = '<table class="table table-hover">
					<tr>
						<th>Summoner Name</th>
						<th>Rank</th>
					</tr>';
		$table_body='';
		
		while($donn�es = $coachs->fetch()){
			$table_body = $table_body."<tr>
											<td>".$donn�es['Nom_Invocateur']."</td>".
											"<td>".$donn�es['Nom_Rang']."</td>".
									 "</tr>";
		}
		
		$table_coachs = $table_coachs.$table_body."</table>";
	
		return $table_coachs;
	}
	
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
	
	
	function add_coaching ($Num_Invocateur_Coach, $Date_Sceance){
		if(verifToken())
		{
			insert_coaching($Date_Sceance, $_COOKIE['Invocateur'], $Num_Invocateur_Coach);
		}
	}
	
	
	
	if (isset($_POST['submit'])){
		$table_form3 = table_coachs_needed($_POST['server'],$_POST['role']);
		$options_coach = show_coach($_POST['server'],$_POST['role']);
	}else if (isset($_POST['submit2'])){
		add_coaching($_POST['coach'],$_POST['date_coaching']);
	}
	
	include_once("../view/reservation_view.php");
	
?>
	