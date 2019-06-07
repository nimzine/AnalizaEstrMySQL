<!doctype html>
<?php require "C:/wamp64/www/AnalizaEstrMySQL/view/-Compara_bancos.php";?>

<html language='en'>

	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">

		<script src="https://kit.fontawesome.com/04cbfa3f99.js"></script>
		<style>
			.ul-titulo_tbl{
				border:1px solid black;
				text-align:center;
				color:white;
				background-color: black; 
			}
			.ul-titulo_bd{
				border:1px solid black;
				color:black;
				text-align: center;
				background-color: white; 

			}

			ul{
				margin:0px;
				padding:0px;
			}

			li{
				border:1px solid black;
				display:inline-block;
				width: 14.28%;
				padding:0px;
				margin:0px;
				text-align: center;
				font-variant:small-caps;
				list-style-type:none;
				clear:both;
			}
			.li-change{
				border:1px solid red;
			}
			.fa-check {
				color: green;
			}

			.fa-times{
				color:red;
			}


		</style>
	</head>
	<body>
		<div class="container-fluid">
			<div class="row my-row">
				<div class="col">
					<?php
						$bd = new ComparaBanco();
						$bd->show_fields();
					?>
				</div>
				<div class="col my-col">
					<?php
						$bd = new ComparaBanco($config_check);
						$bd->show_fields();	
					?>	
				</div>
				
			</div>
		</div>
	
	
	</body>
	
</html>