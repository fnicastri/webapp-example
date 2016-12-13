<?php
// date_default_timezone_set('America/New_York');

// use \app\data;

// $name = trim($_POST['name']);
// $project = trim($_POST['name']);
// $email = filter_var(trim($_POST['email']), FILTER_VALIDATE_EMAIL);

// // Check for required fields
// if(!$name || !$project || !$email){
// 	die('error: missing parameters');
// }

// // Save to database
// $dbAdapter = new Zend\Db\Adapter\Adapter($dbConfig);
// $sql = new Sql($dbAdapter);
// $insert = $sql->insert();
// $insert->into('requests');
// $insert->values(array(
// 	'name' => $name,
// 	'project' => $project,
// 	'email' => $email,
// 	'date_submitted' => new \Zend\Db\Sql\Expression("NOW()")
// ));
// $statement = $sql->prepareStatementForSqlObject($insert);
// $result = $statement->execute();
// $id = $result->getGeneratedValue(); // Used if you need to reference the item just created

// // Send email to recipient
// $text_message = "Thank you for your request!\r\n\r\n– The Example Agency";
// $html_message = "Thank you for your request!<br><br>– The Example Agency";

// $to[] = array(
//     'email' => 'requests@example.com',
//     'name' => 'Your Name',
//     'type' => 'to'
// );

// $email = array(
//     'html' => $html_message,
//     'text' => $text_message,
//     'subject' => 'Thanks for your request',
//     'from_email' => 'no-reply@example.com',
//     'from_name' => 'Example Agency',
//     'to' => $to,
//     'headers' => array('Reply-To' => 'no-reply@example.com'),
// );

// $mandrill = new Mandrill('your-mandrill-key-goes-here');
// $result = $mandrill->messages->send($email);