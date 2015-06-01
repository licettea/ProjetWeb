<?php
	include_once("../model/bd_reservation.php");
	
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
	
	function show_coach($Num_Serveur, $Num_Role){
		$coachs = spe_coach($Num_Serveur, $Num_Role);
		
		$options='';
		
		while($données = $coachs->fetch()){

			$options = $options.'<option value="'.$données['Num_Invocateur'].'">'.$données['Nom_Invocateur'].'</option>';
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
		
		while($données = $coachs->fetch()){
			$table_body = $table_body."<tr>
											<td>".$données['Nom_Invocateur']."</td>".
											"<td>".$données['Nom_Rang']."</td>".
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
				$donnée = get_Token($_COOKIE['Invocateur']);
			}
			
			if($donnée['Num_Token']==$_COOKIE['token'])
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
	