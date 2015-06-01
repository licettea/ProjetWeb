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
				
				<div class="form1">
				
					<?php
						if (isset($name_ok))
						{	
							if ($name_ok==false) 
							{
								echo '<div class="alert alert-danger" role="alert">Invalid Summoner Name!</div>';
							}else{
								if (isset($pass_ok)) 
								{
									if ($pass_ok==false) 
									{
										echo '<div class="alert alert-danger" role="alert">Wrong password for this Summoner</div>';
									}
									
								}
							}
						}
					?>
					
					<h3>Enter your Summoner Name and your password to log-in :</h3>
					<form action="login.php" method="POST">
						<div class="form-group">
							<label for="invocateur">Summoner Name :</label>
							<input type="text" name="invocateur" class="form-control" id="invocateur" placeholder="Enter summoner name">
						</div>
						
						<div class="form-group">
							<label for="birth">Password :</label>
							<input type="password" name="pass" class="form-control" id="pass" placeholder="Password">
						</div>
						
						<div class="form-group">
							<label for="server">Your server :</label>
							<select name="server" class="form-control">
								<?php
									$options_server = show_server();
									echo $options_server;
								?>	
								
							</select>
						</div>
						
						<button type="submit" name="submit" class="btn btn-primary">Submit</button>
					</form>
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