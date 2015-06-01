<!DOCTYPE html>
<html>
    <head>
		<link href="../view/style/style.css" rel="stylesheet">
		<meta charset="utf-8"/>
		
        <title>Lolearning</title>
		
		
	</head>
	
	<body>
		<div id="page">
			<div id="page-header">
				
				<div id="header-menu">
					<nav class="navbar navbar-default">
						  <div class="container-fluid" >
							<!-- Brand and toggle get grouped for better mobile display -->
							<div class="navbar-header">
							  <a class="navbar-brand" href="#">
									<img alt="Brand" src="../view/images/lol-icon.png" width="22px">
							  </a>
							  <a class="navbar-brand" href="accueil.php">LoLearning</a>
							</div>
							<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
							  <ul class="nav navbar-nav">
								<li><a href="coachs.php">Coachs</a></li>
								<li><a href="pro_tips.php">Tips to improve</a></li>
								<?php
									if(verifToken())
										echo '<style type="text/css"> 
												   #page-header #header-menu{
														width : 750px;
													}
												   </style> 
										<li><a href="reservation.php">Reservation</a></li>
										<li><a href="seance.php">Your next seance(s)</a></li>
										<li><a href="logout.php"> Log Out </a></li>';
									else
										echo '<li><a href="login.php"> Log In </a></li>
										<li><a href="signup.php"> Sign Up </a></li>';		
								?>
							  </ul>
							</div>
						  </div>
					</nav>	
				</div>
			</div>
			
			<div id="page-content">
			
				<!--<div class="alert alert-success" role="alert">Good Job</div>-->
					
				<div class="form1">
					
					<h4>Don't waste a second! Get a free coaching with a diamond or above player! Just enter the needed information to proceed!</h4>
					<form action="reservation.php" method="POST">
					
					
						<div class="form-group">
							<label for="server">The coaching's server :</label>
							<select name="server" class="form-control">
								<?php
									$options_server = show_server();
									echo $options_server;
								?>	
								
							</select>
						</div>
					
						<div class="form-group">
							<label for="role">Select the role you want to improve :</label>
							<select name="role" class="form-control">
								<?php
									$options_role = show_role();
									echo $options_role;
								?>	
								
							</select>
						</div>
						
						<button type="submit" name="submit" class="btn btn-primary">Submit</button>
					</form>
				</div>
				
				
				<div class="form2">
					Here are the coachs available : </br> 
					<?php
						echo "</br>";
						if (isset($table_form3))
							echo $table_form3;
					?>
					
					<form action="reservation.php" method="POST">
					
						<div class="form-group">
							<label for="coach">Select your coach :</label>
							<select name="coach" class="form-control">
								<?php
									echo $options_coach;
								?>	
							</select>
						</div>
						
						<div class="form-group">
							<label for="date_coaching">Date of the coaching (format : aaaa-mm-dd) :</label>
							
							<input type="text" name="date_coaching" class="form-control" id="date_coaching" placeholder="aaaa-mm-dd">
						</div>
						
						
						<button type="submit" name="submit2" class="btn btn-primary">Submit</button>
					</form>
				</div>
				
				<div class="ok">
					<div class="alert alert-success" role="alert">Reservation confirmed!</div>
				</div>
				
			</div>
			
			<img class="LoL" src="../view/images/lol.png">
			
			<div class="page-footer">
				Aurelien Licette - All rights reserved
			</div>
		
		</div>
	</body>
	
	<script src='jquery/jquery-1.11.3.js'></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
	
	<script type='text/javascript'>
	<?php
		echo "$(function() {
				$('.form1').show();
				$('.form2').hide();	
				$('.ok').hide();";	
		
		if (isset($_POST['submit']))
			echo " $('.form1').hide();
					$('.form2').show();	
					$('.ok').hide();";
		
		if (isset($_POST['submit2']))
			echo "$('.form1').hide();
				$('.form2').hide();
				$('.ok').show();"; 
		
		echo"});";	
			
	?>
	</script>
	
</html>