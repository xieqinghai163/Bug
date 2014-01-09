<?php
session_start();
require_once './db.connect';
//-- Get the username and password from the submitted form.
$username = $_POST['username'];
$password = $_POST['password'];
//--
$password = md5($password);
//-- 
$query = "SELECT username, password, user_type FROM users WHERE username='{$username}' AND password='{$password}'";
//--
//-- Executed the insert statement.
$result = mysqli_query($link, $query);
if (!$result) {
    echo "<br />" . $query;
    die("<br/> Error: occured while trying to create a new user" . mysqli_error($link));
}
//-- Check if we got one row.
if(mysqli_affected_rows($link) >= 0){
        
    $_SESSION['logged_in'] = true;
    $_SESSION['user_type'] = $row['user_type'];
    header("Location: index.php");
}
mysqli_close($link);

?>
