<?php
	include_once("../model/bd_seance.php");
	
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
	
	function table_coaching() {
	
		$coaching = coaching_list($_COOKIE['Invocateur']);
		
		/*$données = $coaching->fetch();
		
		if ($données['Date_Sceance']==null)
			return false;*/
		
		$table_head = '<table id="tableCoaching" class="table table-hover">
					<thead>
					<tr>
						<th>Seance Date</th>
						<th>Summoner Name</th> 
						<th>Role</th>
						<th>Rank</th>
					</tr>
					</thead>';
		$table_body='<tbody>';
		
		while($données = $coaching->fetch()){
			$table_body = $table_body."<tr>
											<td>".$données['Date_Sceance']."</td>".
											"<td>".$données['Nom_Invocateur']."</td>".
											"<td>".$données['Nom_Role']."</td>".
											"<td>".$données['Nom_Rang']."</td>".
									 "</tr>";
		}
		
		$table = $table_head.$table_body."</tbody></table>";
		$table_empty = "<tbody></tbody></table>";
		
		if ($table==($table_head.$table_empty))
			return false;
	
		return $table;
	}
	
	$table = table_coaching();

	include_once("../view/seance_view.php");
?>