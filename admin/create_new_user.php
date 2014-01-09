<?php
session_start();
//print_r($_POST);
$first_name = $_POST['first_name'];
$last_name = $_POST['last_name'];
$username = $_POST['username'];
$password = md5($_POST['password']);
$email = $_POST['email'];
///-- Add the user to the users table.
require_once './db.connect';
//--
$query = "INSERT INTO users( username, password, fname, lname, email) VALUES 
    ('${username}','${password}','${first_name}','${last_name}','${email}')";
//echo $query;
//-- Executed the insert statement.
$result = mysqli_query($link, $query);
if (!$result) {
    echo "<br />" . $query;
    die("<br/> Error: occured while trying to create a new user" . mysqli_error($link));
}
mysqli_close($link);

$_SESSION['site_msg'] = "The new user has been created successfully";
//$_SESSION['login_msg'] = "Error something happened";
$_SESSION['msg_type'] = "success";
//-- Redirect to index.
header("Location: index.php");
?>
