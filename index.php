<?php

header('Access-Control-Allow-Origin: *');
header('content-type: application/json; charset=utf-8');

//Conexión a base de datos Mysql

$host = 'localhost';
$username= 'root';
$password = 'mysql';
$db_name = 'sunat';

$db=mysql_connect($host, $username, $password) or die('No se puedo conectar a la base de datos...');

mysql_select_db($db_name, $db) or die('');

require 'Slim/Slim.php';

\Slim\Slim::registerAutoloader();

$app = new \Slim\Slim();

$app->get('/verificar/:ruc', function ($ruc) use ($app) {

    $sth = mysql_query("select * from empresa where ruc = '".$ruc."'");   
    
	$rows = array();
	while($r = mysql_fetch_assoc($sth)) {
	    $rows[] = $r;
	}

	echo json_encode($rows);
	exit;

});

$app->get('/', function () {
    echo "SUNAT";
});

$app->run();
