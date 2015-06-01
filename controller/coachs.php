<?php
	include_once("../model/bd_coach.php");
	
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
	
	function table_coachs(){
		$coachs = coach_list();
		
		$table_coachs = '<table id="tableCoach" class="table table-hover">
					<thead>
					<tr>
						<th>Summoner Name</th>
						<th>Role</th> 
						<th>Rank</th>
						<th>Server Name</th>
					</tr>
					</thead>';
		$table_body='<tbody>';
		
		while($données = $coachs->fetch()){
			$table_body = $table_body."<tr>
											<td>".$données['Nom_Invocateur']."</td>".
											"<td>".$données['Nom_Role']."</td>".
											"<td>".$données['Nom_Rang']."</td>".
											"<td>".$données['Nom_Serveur']."</td>".
									 "</tr>";
		}
		
		$table_coachs = $table_coachs.$table_body."</tbody></table>";
	
		return $table_coachs;
	}
	
	$table = table_coachs();
	
	include_once("../view/coachs_view.php");
?>