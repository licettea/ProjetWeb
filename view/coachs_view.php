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
			
				<h3>Here is our coachs list</h3>

				
				<div id="list-coach">
					<?php
						echo "</br>";
						echo $table;
					?>
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
	
</html>