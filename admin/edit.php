<?php

if (isset($_GET['cust_id']) && !empty($_GET['cust_id'])) {
    $customer_id = $_GET['cust_id'];
    //-- Include db connection script.
    require_once './db.connect';
    //--
    $query = "SELECT * FROM customers WHERE id=" . $customer_id;
    //-- Execute the select query.
    $result = mysqli_query($link, $query);
    if (!$result) {
        echo "<br />" . $query;
        die("<br/> Error: occured while trying to execute the query " . mysqli_error($link));
    }
    $row = mysqli_fetch_array($result);
    $id = $row["id"];
    $first_name = $row["first_name"];
    $last_name = $row["last_name"];
    $phone = $row["phone"];
    $email = $row["email"];
    //--
    require_once './update_cust_form.php';
    //--
    
} else {
    echo "You must enter the customer id ";
}
?>
