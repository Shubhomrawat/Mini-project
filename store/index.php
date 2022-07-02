<html>
    <head>
    <meta charset="utf-8" />
    <link rel="icon" sizes="250x250" href="./assets/img/favicon.png">
    <link rel="icon" type="image/png" href="./assets/img/favicon.png">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
        <title> Super Mart</title>
</head>
<style>
    h1 {
  text-align: center;
}

body {
  font-family: Mukta, sans-serif;
  height: 50vh;
  display: grid;
  justify-content: center;
  align-items: center;
  font-size: 0.9rem;
  background-image: url('store2.jpeg');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;}
  
  * {
  font-family: sans-serif; /* Change your font family */
}

.content-table {
  border-collapse: collapse;
  margin: 25px 0;
  font-size: 0.9em;
  min-width: 400px;
  border-radius: 5px 5px 0 0;
  overflow: hidden;
  box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
}

.content-table thead tr {
  background-color: #009879;
  color: #ffffff;
  text-align: left;
  font-weight: bold;
}

.content-table th,
.content-table td {
  padding: 12px 15px;
}

.content-table tbody tr {
  border-bottom: 1px solid #dddddd;
}

.content-table tbody tr:nth-of-type(even) {
  background-color: #f3f3f3;
}

.content-table tbody tr:last-of-type {
  border-bottom: 2px solid #009879;
}

.content-table tbody tr.active-row {
  font-weight: bold;
  color: #009879;
}


</style>
<body >
    

<h1 style="color: #ffffff;">All Product List</h1>
    <table class="content-table">
        <thread>
        <tr>
            <th  style="color: #ffffff;">Sr No</th>
            <th  style="color: #ffffff;">Product</th>
            <th  style="color: #ffffff;">Product description</th>
            <th  style="color: #ffffff;">Quantiity</th>
            <th style="color: #ffffff;">Product Type</th>
            <th style="color: #ffffff;">Price</th>
       </tr>
</thread>

<?php
include("dbconn.php");
$query = "select * from product";
$data = mysqli_query($dbconn,$query);
$total = mysqli_num_rows($data);

if($total!=0)
{
    while($result=mysqli_fetch_assoc($data))
    {
        echo "
        <tr>
        <td>".$result['product_id']."</td>
        <td>".$result['Product_Name']."</td>
        <td>".$result['Product_description']."</td>
        <td>".$result['Quantity']."</td>
        <td>".$result['Product_Type']."</td>
        <td>".$result['Price']."</td>
        </tr>
        ";
    }
}
else{
   echo "No records found"; 
}
?>

</table>
</body>
</html>