<?php
session_start();
if (isset($_GET['cust_id']) && !empty($_GET['cust_id'])) {
    $customer_id = $_GET['cust_id'];
    //-- Include db connection script.
    require_once './db.connect';
    //--
    $query = "DELETE FROM customers WHERE id=" . $customer_id;
//-- Execute the select query.
    $result = mysqli_query($link, $query);
    if (!$result) {
        echo "<br />" . $query;
        die("<br/> Error: occured while trying to execute the query " . mysqli_error($link));
    }
     $_SESSION['site_msg'] = "The record has been deleted successfully!";
     $_SESSION['msg_type'] = "success";
    //-- redirect to success delete.
    header('Location: index.php');

//    echo "<br/> Customer with id " . $customer_id . " has been deleted";
    //  echo "<br/> Number of affected rows" . mysqli_affected_rows($link);
} else {
    echo "You must enter the customer id ";
}
?>
