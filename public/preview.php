<?php
// session_start();
error_reporting(0);
// date_default_timezone_set('America/New_York');
// require __DIR__.'/../vendor/autoload.php';
// require __DIR__.'/../config.php';

// use Zend\Db\Adapter\Adapter;
// use Zend\Db\Sql\Sql;
// use Zend\Db\Sql\Select;
// use Zend\Db\Sql\Expression;
// use Zend\Db\Adapter\Driver\ResultInterface;
// use Zend\Db\ResultSet\ResultSet;
// use Zend\Db\TableGateway\TableGateway;
// use project\Db\TableGateway\BaseTableGateway;
// use Zend\Db\Adapter\AdapterInterface;
// use Zend\Db\Sql\Predicate;

// // Get auth values (use POST, SESSION, or COOKIE)
// $email = filter_var($_POST['email'], FILTER_VALIDATE_EMAIL);
// $password = $_POST['password'];
$note = '';
$show_login = true;

// if($_GET['logout']){
// 	unset($_SESSION["preview"]);
// }

// if($_SESSION["preview"]){
// 	$note = 'You are already logged in to preview<br>Navigate the site to see live and draft content<br>Clearing cookies or closing window will stop preview<br><a href="/preview.php?logout=true">Logout of preview</a>';
// 	$show_login = false;
// } elseif(!$_POST['submitted']){
// 	$note = '';
// } elseif($_POST['submitted'] && (!$email || !$password)){
// 	$note = 'Enter an email and password';
// } else {
// 	$db = new Zend\Db\Adapter\Adapter($dbConfig);
// 	$sql = new Sql($db);
// 	$select = $sql->select();
// 	$select->from('directus_users');
// 	$select->where->equalTo('active', 1);
// 	$select->where->equalTo('email', $email);
// 	$select->limit(1);
// 	$statement = $sql->prepareStatementForSqlObject($select);
// 	$result = $statement->execute();

// 	$no_user = true;
// 	if ($result instanceof ResultInterface && $result->isQueryResult()) {
// 		$resultSet = new ResultSet;
// 		$resultSet->initialize($result);

// 		foreach ($resultSet as $row) {
// 			$no_user = false;
// 			$composite = sha1($row['salt'] . $password);
// 			if($composite == $row['password']){
// 				$_SESSION["preview"] = "secureview-2015";
// 				$note = 'You are now logged in to preview<br>Navigate the site to see live and draft content<br>Clearing cookies or closing window will stop preview<br><a href="/preview.php?logout=true">Logout of preview</a>';
// 				$show_login = false;
// 			} else {
// 				unset($_SESSION["preview"]);
// 				$note = "Password and email do not match";
// 			}
// 		}
// 	}
// 	if($no_user) {
// 		unset($_SESSION["preview"]);
// 		$note = "No such user";
// 	}
// }
?><!doctype html>
<html lang="en">
<head>
	<title>Preview Login</title>
	<link href="https://fonts.googleapis.com/css?family=Roboto:500" rel="stylesheet">
	<meta name="robots" content="noindex">
	<style type="text/css">
		html {
			background-color: #222222;
			text-align: center;
			color: #FFFFFF;
			font-family: 'Roboto', sans-serif;
			font-size: 12px;
			font-weight: 700;
			letter-spacing: 2px;
			line-height: normal;
			text-transform: uppercase;
			line-height: 20px;
			-webkit-font-smoothing: antialiased;
		}
		form {
			margin-top: 100px;
		}
		input {
			padding: 16px;
			margin-bottom: 10px;
			font-size: 18px;
			width: 300px;
			outline: none;
			border: none;
			border-radius: 2px;
			color: #4CA6DE;
		}
		button {
			width: 332px;
			font-size: 14px;
			font-weight: 700;
			letter-spacing: 1px;
			line-height: normal;
			text-transform: uppercase;
			padding: 20px 0;
			background-color: #4CA6DE;
			color: #FFFFFF;
			border: 0;
			cursor: pointer;
			margin-bottom: 40px;
			border-radius: 2px;
		}
		button:hover {
			background-color: #268fd1;
		}
		a {
			color: #4CA6DE;
		}
	</style>
</head>
<body>
	<form id="check_auth" action="/preview.php" method="post" data-validate-form >
		<input type="hidden" name="submitted" value="true">
		<?PHP if($show_login){ ?>
			<input type="email" name="email" placeholder="Email Address" spellcheck="false" autocomplete="off" autocorrect="off" autocapitalize="off" value="<?PHP echo $_POST['email'];?>"><br><br>
			<input type="password" name="password" placeholder="Password" spellcheck="false" autocomplete="off" autocorrect="off" autocapitalize="off" value="<?PHP echo $_POST['password'];?>"><br><br>
			<button type="submit">Sign in</button><br>
		<?PHP } ?>
		<?PHP echo $note; ?>
	</form>
</body>
</html>