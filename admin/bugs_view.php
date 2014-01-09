<?php
require_once './db.connect';

$query = "SELECT * FROM customers order by first_name";
//-- Execute the select query.
$result = mysqli_query($link, $query);
if (!$result) {
    echo "<br />" . $query;
    die("<br/> Error: occured while trying to execute the query " . mysqli_error($link));
}
?>
<table border="1">
    <tr>
        <th>Customer ID</th>
        <th>First name</th>
        <th>Last name</th>
        <th>Phone</th>
        <th>Email</th>
        <th>Action</th>        
    </tr>
 
    <?php
//-- Fetch the result
    while ($row = mysqli_fetch_array($result)) {
        echo "<tr>";
        echo "<td>" . $row['id'] . "</td>";
        echo "<td>" . $row['first_name'] . "</td>";
        echo "<td>" . $row['last_name'] . "</td>";
        echo "<td>" . $row['phone'] . "</td>";
        echo "<td>" . $row['email'] . "</td>";
        echo '<td> <a  href="delete.php?cust_id='.$row['id'] .'" title="Delete customer"> <img src="images/delete.png" height="20" width="20 "/></a> |';
        echo '<a  href="edit.php?cust_id='.$row['id'] .'" title="Edit customer"><img src="images/edit.png" /></a>';        
        echo "</tr>";
    }
    ?>
    
    
</table>