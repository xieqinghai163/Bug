<?php
session_start();
if (isset($_GET['Bug_Info_Id']) && !empty($_GET['Bug_Info_Id'])) {
    $Bug_Info_Id = $_GET['Bug_Info_Id'];
    //-- Include db connection script.
    require_once './db.connect';
    //--
    $query = "DELETE FROM Bug_Info WHERE Bug_Info_Id=" . $Bug_Info_Id;
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
    echo "You must enter the Bug_Info Id ";
}
?>
