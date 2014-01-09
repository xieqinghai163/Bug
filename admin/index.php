<?php
session_start();
//-- Check if the logged_in variable exists or not.
if (!isset($_SESSION['logged_in'])) {
    //-- Redirecto to login.php
    header("Location: login.php");
}

if (isset($_SESSION['site_msg']) && !empty($_SESSION['site_msg'])) {
    $background = "greenyellow";
    if ($_SESSION['msg_type'] == "error") {
        $background = "red";
    }
    ?>
    <div style="background:<?= $background ?> ">
        <?= $_SESSION['site_msg'] ?>
    </div>    
    <?php
}
?>
<div style="float: right;">
    <a href="logout.php" alt="Logout current user"> Logout</a>
</div>
<p> <strong> Hello, this is the admin console!</strong></p>
<ul>
    <li>
        <a href="create_account.php" alt="Create Users"> Create Users</a>
    </li>
    <li>
        <a href="upload_form.php" alt="Upload file"> Upload file</a>
    </li>
</ul>