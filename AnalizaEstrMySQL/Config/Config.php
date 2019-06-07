<?php
	/*
	define('MYSQL_HOST', 'localhost');
	define('MYSQL_USER', 'root');
	define('MYSQL_PASSWORD', '');
	
	try{
		$bdEcommerce = new PDO('mysql:host='.MYSQL_HOST.';dbname='."e_commerce", MYSQL_USER, MYSQL_PASSWORD);
	}catch(bdEcommerceException $ex){
	
		print "Erro ao conectar no Banco: ".$ex->getMessage();
	}
	
	try{
		$bdConsulta = new PDO('mysql:host='.MYSQL_HOST.';dbname='."consulta_hospital", MYSQL_USER, MYSQL_PASSWORD);
	}catch(bdConsultaException $ex){
	
		print "Erro ao conectar no Banco: ".$ex->getMessage();
	}
	*/
	
	session_start();
	
 	$config_check= array(
 	'host' => 'localhost',
	'dbname' => 'padrao_changed',
	'user' => 'root',
 	'password' => '',
 	'port' => 5432,
 	'attr' => array(
         PDO::ATTR_TIMEOUT => 1,
         PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION
		)
	);
	
	$_SESSION['config_check'] = $config_check;

	 $config_padrao	= array(
 	'host' => 'localhost',
 	'dbname' => 'padrao',
 	'user' => 'root',
	'password' => '',
	'port' => 5432,
 	'attr' => array(
       PDO::ATTR_TIMEOUT => 1,
        PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION
		)
	);
?>