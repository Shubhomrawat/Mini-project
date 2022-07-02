<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>Super Mart</title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />
    <link rel="stylesheet" href="../plugins/datatables/dataTables.bootstrap.css">

</head>
<body class="index-page sidebar-collapse">
    <div class="wrapper"><br>
        <div class="main">
            <div class="section section-basic">
                <div class="container">
                      <h2>All Product List</h2> 
                <div class="col-md-12">
                <br>
            
                <div class="panel panel-success panel-size-custom">
                        <div class="panel-body">

                            <?php
                                      include('dbconn.php');

                                      $action = isset($_GET['action']) ? $_GET['action'] : "";
                                      if($action=='deleted'){
                                          echo "<div class='alert alert-success'>Record was deleted.</div>";
                                      }
                                      $query = "SELECT * FROM product ORDER BY Product_Name ASC";
                                      $result = mysqli_query($dbconn,$query);
                          ?>  

                                 
                                <br>
                                <br>
                            
                                <table id="" class="table table-condensed table-striped">
                                    <tr>
                                      <th>Serial</th>
                                      <th>Product Name</th>
                                      <th>Description</th>
                                      <th>Quantity</th>
                                      <th>Type</th>
                                      <th>Price(Php)</th>
                                    </tr>
                                </table><br><br><br><br>
                        </div>
                    </div> 
                </div>
            </div>
        </div>

<br><br><br><br>

<footer class="footer" data-background-color="black">
            <div class="container">
                <nav>
                    <ul>
                        <li>
                            <a href="" target="_blank">
                               Super Mart
                            </a>
                        </li>
                        <li>
                            FCRIT
                        </li>
                    </ul>
                </nav>
            </div>
        </footer>
    </div>
</body>
</script>
</html>