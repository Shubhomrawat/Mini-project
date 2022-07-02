
    <!-- dynamic content will be here -->
<?php
//including the database connection file
include '../config/dbconn.php';

$id = $_GET['prod_id'];

$result = mysqli_query($dbconn, "DELETE FROM products WHERE prod_id=$id");

header("Location:vendor_panel.php");
?>
    