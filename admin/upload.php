<?php

session_start();
print_r($_POST);
echo "<br/>";
echo "<br/>";
//echo "<br/>";
print_r($_FILES);
// 
if ($_FILES["file_name"]["error"] > 0) {
    echo "Error: " . $_FILES["file_name"]["error"] . "<br>";
} else {
    echo "<br/>";
    echo "<br/>";
    echo "Upload file name: " . $_FILES["file_name"]["name"] . "<br>";
    echo "Type: " . $_FILES["file_name"]["type"] . "<br>";
    echo "Size: " . ($_FILES["file_name"]["size"] / 1024) . " kB<br>";
    //-- Temporary path.
    echo "Stored in: " . $_FILES["file_name"]["tmp_name"];

    if (file_exists("./upload/" . $_FILES["file_name"]["name"])) {
        echo $_FILES["file_name"]["name"] . " already exists. ";
        $_SESSION['site_msg'] = "Upload failed already exists";
        $_SESSION['msg_type'] = "error";
        header("Location: index.php");
    } else {
        move_uploaded_file($_FILES["file_name"]["tmp_name"], "upload/" . $_FILES["file_name"]["name"]);
        echo "Stored in: " . "upload/" . $_FILES["file_name"]["name"];
        $_SESSION['site_msg'] = "The file has been uploaded successfully <br/> Stored in: upload/" . $_FILES["file_name"]["name"];
        $_SESSION['msg_type'] = "success";
        header("Location: index.php");
    }
}
?>
