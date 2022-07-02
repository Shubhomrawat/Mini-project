<?php
    session_start();
    include('../config/dbconn.php');
    use PHPMailer\PHPMailer\PHPMailer;
    use PHPMailer\PHPMailer\SMTP;
    use PHPMailer\PHPMailer\Exception; 

    if(isset($_POST['password-reset-token']) && $_POST['email'])
    {
       
         $result = mysqli_query($conn,"SELECT * FROM users WHERE email='" . $_POST['email'] . "'");
    
        $row= mysqli_num_rows($result);
    
        if($row < 0)
        {
          
           $token = md5($_POST['email']).rand(10,9999);
    
            $link = "<a href='localhost/email-verification/verification.php?key=".$_POST['email']."&token=".$token."'>Click and Verify Email</a>";
    
            require_once('phpmail/PHPMailerAutoload.php');
    
            $mail = new PHPMailer();
    
            $mail->CharSet =  "utf-8";
            $mail->IsSMTP();
            // enable SMTP authentication
            $mail->SMTPAuth = true;                  
            // GMAIL username
            $mail->Username = "shubhom272002@gmail.com";
            // GMAIL password
            $mail->Password = "asharawat@123445678";
            $mail->SMTPSecure = "ssl";  
            // sets GMAIL as the SMTP server
            $mail->Host = "smtp.gmail.com";
            // set the SMTP port for the GMAIL server
            $mail->Port = "465";
            $mail->From='shubhom272002@gmail.com';
            $mail->FromName='PLANT ZONE';
            $mail->AddAddress('pratikshrivastav20@gmail.com', 'pratik');
            $mail->Subject  =  'Reset Password';
            $mail->IsHTML(true);
            $mail->Body    = 'Click On This Link to Verify Email '.$link.'';
            if($mail->Send())
            {
              echo "Check Your Email box and Click on the email verification link.";
            }
            else
            {
              echo "Mail Error - >".$mail->ErrorInfo;
            }
        }
        else
        {
          echo "You have already registered with us. Check Your email box and verify email.";
        }
    }
?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <link rel="icon" sizes="76x76" href="../assets/img/icon.png">
    <link rel="icon" type="image/png" href="../assets/img/icon.png">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>Plant Zone</title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />
    <link href="../assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../assets/css/now-ui-kit.css?v=1.1.0" rel="stylesheet" />
    <link href="../assets/css/demo.css" rel="stylesheet" />
</head>

<body class="login-page sidebar-collapse">
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg bg-primary fixed-top navbar-transparent " color-on-scroll="400">
        <div class="container">
            <div class="navbar-translate">
                <a href="../index.php" class="navbar-brand" rel="tooltip" title="" data-placement="bottom">
                    PLANT ZONE
                </a>
                <button class="navbar-toggler navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-bar bar1"></span>
                    <span class="navbar-toggler-bar bar2"></span>
                    <span class="navbar-toggler-bar bar3"></span>
                </button>
            </div>
            <div class="collapse navbar-collapse justify-content-end" id="navigation" data-nav-image="../assets/img/blurred-image-1.jpg">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" rel="tooltip" title="Follow us on Twitter" data-placement="bottom" href="https://twitter.com/" target="_blank">
                            <i class="fa fa-twitter"></i>
                            <p class="d-lg-none d-xl-none">Twitter</p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" rel="tooltip" title="Like us on Facebook" data-placement="bottom" href="https://www.facebook.com/" target="_blank">
                            <i class="fa fa-facebook-square"></i>
                            <p class="d-lg-none d-xl-none">Facebook</p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" rel="tooltip" title="Follow us on Instagram" data-placement="bottom" href="https://www.instagram.com/" target="_blank">
                            <i class="fa fa-instagram"></i>
                            <p class="d-lg-none d-xl-none">Instagram</p>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- End Navbar -->

<?php
// including the database connection file
include("../config/dbconn.php");
if(isset($_POST['submit']))
{   
    $firstname=$_POST['firstname'];
    $middlename=$_POST['middlename'];
    $lastname=$_POST['lastname'];
    $address=$_POST['address'];
    $email=$_POST['email'];
    $contact=$_POST['contact'];
    $username=$_POST['username'];
    $password=$_POST['password'];
    $token = md5($_POST['email']).rand(10,9999);

    $pass1=md5($password);
    $salt="a1Bz20ydqelm8m1wql";
    $pass1=$salt.$pass1;

    // checking empty fields
    if(empty($firstname) || empty($middlename) || empty($lastname) || empty($address) || empty($email) || empty($contact) || empty($username) || empty($password)) {    
            
        if(empty($firstname)) {
            echo "<font color='red'>Firstname field is empty!</font><br/>";
        }

        if(empty($middlename)) {
            echo "<font color='red'>Middlename field is empty!</font><br/>";
        }
        
        if(empty($lastname)) {
            echo "<font color='red'>Lastname field is empty!</font><br/>";
        }

        if(empty($address)) {
            echo "<font color='red'>Address field is empty!</font><br/>";
        }

        if(empty($email)) {
            echo "<font color='red'>Email field is empty!</font><br/>";
        }

        if(empty($contact)) {
            echo "<font color='red'>Contact field is empty!</font><br/>";
        }
        
        if(empty($username)) {
            echo "<font color='red'>Username field is empty!</font><br/>";
        }    

        if(empty($password)) {
            echo "<font color='red'>Password field is empty!</font><br/>";
        }    
    } else {    
        //updating the table
        $query = "INSERT INTO users (firstname, middlename, lastname, address, email, contact, username, password, verification_code, is_verified) 
                VALUES ('$firstname','$middlename','$lastname','$address','$email','$contact','$username','$pass1', ' $token ', '0')";

        $result = mysqli_query($dbconn,$query);
        
        if($result){
            //redirecting to the display page. In our case, it is index.php
        header("Location: ../index.php");
        }
        
    }
}
?>



    <div class="page-header" filter-color="green">
        <div class="page-header-image" style="background-image:url(../assets/img/homepage.jpg)"></div>
        <div class="container">
            <div class="col-md-4 content-center">
                <div class="card card-login card-plain">
                    <form class="form" method="post" action="">
                        <div class="header header-primary text-center">
                            <div class="logo-container">
                                Sign in
                                <!--insert logo here-->
                            </div>
                        </div>
                        <div class="content">
                            <div class="input-group form-group-no-border input-lg">
                                <span class="input-group-addon">
                                    <i class="now-ui-icons users_circle-08"></i>
                                </span>
                                <input type="text" name="firstname" class="form-control" placeholder="First name" required>
                            </div>
                            <div class="input-group form-group-no-border input-lg">
                                <span class="input-group-addon">
                                    <i class="now-ui-icons users_circle-08"></i>
                                </span>
                                <input type="text" name="middlename" class="form-control" placeholder="Middle name" required>
                            </div>
                            <div class="input-group form-group-no-border input-lg">
                                <span class="input-group-addon">
                                    <i class="now-ui-icons users_circle-08"></i>
                                </span>
                                <input type="text" name="lastname" class="form-control" placeholder="Last name" required>
                            </div>
                            <div class="input-group form-group-no-border input-lg">
                                <span class="input-group-addon">
                                    <i class="now-ui-icons ui-1_email-85"></i>
                                </span>
                                <input type="text" name="email" class="form-control" placeholder="Email" required>
                            </div>
                            <div class="input-group form-group-no-border input-lg">
                                <span class="input-group-addon">
                                    <i class="now-ui-icons business_bank"></i>
                                </span>
                                <input type="text" name="address" class="form-control" placeholder="Complete address" required>
                            </div>
                            <div class="input-group form-group-no-border input-lg">
                                <span class="input-group-addon">
                                    <i class="now-ui-icons tech_mobile"></i>
                                </span>
                                <input type="text" name="contact" class="form-control" placeholder="Contact info" required>
                            </div>
                            <div class="input-group form-group-no-border input-lg">
                                <span class="input-group-addon">
                                    <i class="now-ui-icons users_single-02"></i>
                                </span>
                                <input type="text" id="username" name="username" class="form-control" placeholder="Username" required>
                            </div>
                            <div class="input-group form-group-no-border input-lg">
                                <span class="input-group-addon">
                                    <i class="now-ui-icons ui-1_lock-circle-open"></i>
                                </span>
                                <input type="password" id="password" name="password" placeholder="Password" class="form-control"  required>
                            </div>
                        </div>
                        <div class="footer text-center">
                            <button type="submit" class="bbtn btn-primary btn-round btn-lg btn-block" id="submit" name="submit">
                                 Create account
                            <span class="glyphicon glyphicon-floppy-save"></span>
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <footer class="footer">
            <div class="container">
                <div class="copyright">
                    &copy;
                    <script>
                        document.write(new Date().getFullYear())
                    </script>, FCRIT Project
                </div>
            </div>
        </footer>
    </div>
</body>
<!--   Core JS Files   -->
<script src="../assets/js/core/jquery.3.2.1.min.js" type="text/javascript"></script>
<script src="../assets/js/core/popper.min.js" type="text/javascript"></script>
<script src="../assets/js/core/bootstrap.min.js" type="text/javascript"></script>
<!--  Plugin for Switches, full documentation here: http://www.jque.re/plugins/version3/bootstrap.switch/ -->
<script src="../assets/js/plugins/bootstrap-switch.js"></script>
<!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
<script src="../assets/js/plugins/nouislider.min.js" type="text/javascript"></script>
<!--  Plugin for the DatePicker, full documentation here: https://github.com/uxsolutions/bootstrap-datepicker -->
<script src="../assets/js/plugins/bootstrap-datepicker.js" type="text/javascript"></script>
<!-- Control Center for Now Ui Kit: parallax effects, scripts for the example pages etc -->
<script src="../assets/js/now-ui-kit.js?v=1.1.0" type="text/javascript"></script>

</html>