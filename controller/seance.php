<?php
	include_once("../model/bd_seance.php");
	
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
	
	function table_coaching() {
	
		$coaching = coaching_list($_COOKIE['Invocateur']);
		
		/*$donn�es = $coaching->fetch();
		
		if ($donn�es['Date_Sceance']==null)
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
		
		while($donn�es = $coaching->fetch()){
			$table_body = $table_body."<tr>
											<td>".$donn�es['Date_Sceance']."</td>".
											"<td>".$donn�es['Nom_Invocateur']."</td>".
											"<td>".$donn�es['Nom_Role']."</td>".
											"<td>".$donn�es['Nom_Rang']."</td>".
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