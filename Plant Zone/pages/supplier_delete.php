
    <!-- dynamic content will be here -->
<?php
//including the database connection file
include '../config/dbconn.php';
//getting id of the data from url
$id = $_GET['supp_id'];
//deleting the row from table
$result = mysqli_query($dbconn, "DELETE FROM supplier WHERE supp_id=$id");
header("Location:admin_panel.php");
?>
    