<?php
date_default_timezone_set('Asia/Kolkata');
include('database.inc.php');
?>
<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="utf-8">
	  <link rel="icon" sizes="500x500" href="../assets/chatbot_image/icon.png">
    <link rel="icon" type="image/png" href="../assets/chatbot_image/icon.png">
      <meta name="robots" content="noindex, nofollow">
      <title>Plant Bot</title>
      <meta name="viewport" content="width=device-width, initial-scale=1">
	  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	  <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	  <link href="style.css" rel="stylesheet">
	  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
	  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />
      
	  <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
      <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
   </head>
   <body class="login-page sidebar-collapse">
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg  fixed-top navbar-transparent ">
        <div class="container" >
            <div class="navbar-translate" >
                <a href="pages/index.php" class="navbar-brand" style="color:black"  rel="tooltip" title="PlantZone" data-placement="bottom">
                   PLANT ZONE
                </a>
                <button class="navbar-toggler navbar-toggler" type="button"  data-toggle="collapse" data-target="#navigation" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-bar bar1"></span>
                    <span class="navbar-toggler-bar bar2"></span>
                    <span class="navbar-toggler-bar bar3"></span>
                </button>
            </div>
            <div class="collapse navbar-collapse justify-content-end" id="navigation" data-nav-image="image/blurred-image-1.jpg">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" rel="tooltip" style="color:white" title="Follow us on Twitter" data-placement="bottom" href="https://twitter.com/" target="_blank">
                            <i class="fa fa-twitter"></i>
                            <p class="d-lg-none d-xl-none">Twitter</p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" rel="tooltip" style="color:white" title="Like us on Facebook" data-placement="bottom" href="https://www.facebook.com/" target="_blank">
                            <i class="fa fa-facebook-square"></i>
                            <p class="d-lg-none d-xl-none">Facebook</p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" rel="tooltip" style="color:white" title="Follow us on Instagram" data-placement="bottom" href="https://www.instagram.com/" target="_blank">
                            <i class="fa fa-instagram"></i>
                            <p class="d-lg-none d-xl-none">Instagram</p>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</body>
    <!-- End Navbar -->

   <body style="background-image: url('image/homepage1.jpeg'); background-repeat: no-repeat; background-position: center;background-size: 1600px 1000px;">
	   <br></br> 
	   <br></br>
      <div class="container"style="opacity:0.8">                                                                       
         <div class="row justify-content-md-center mb-4">                                         
            <div class="col-md-6">             
               <!--start code-->
               <div class="card">
                  <div class="card-body messages-box" >
					 <ul class="list-unstyled messages-list">
							<?php
							$res=mysqli_query($con,"select * from message");
							if(mysqli_num_rows($res)>0){
								$html='';
								while($row=mysqli_fetch_assoc($res)){
									$message=$row['message'];
									$added_on=$row['added_on'];
									$strtotime=strtotime($added_on);
									$time=date('h:i A',$strtotime);
									$type=$row['type'];
									if($type=='user'){
										$class="messages-me";
										$imgAvatar="user_avatar.png";
									    $name="Me";
									}else{
										$class="messages-you";
										$imgAvatar="bot_avatar.png";
										$name="Plantbot";
									}
									$html.='<li class="'.$class.' clearfix"><span class="message-img"><img src="image/'.$imgAvatar.'" class="avatar-sm rounded-circle"></span><div class="message-body clearfix"><div class="message-header"><strong class="messages-title">'.$name.'</strong> <small class="time-messages text-muted"><span class="fas fa-time"></span> <span class="minutes">'.$time.'</span></small> </div><p class="messages-p">'.$message.'</p></div></li>';
								}
								echo $html;
							}else{
								?>
								<li class="messages-me clearfix start_chat">
								   Please start
								</li>
								<?php
							}
							?>
                    
                     </ul>
                  </div>
                  <div class="card-header"  style="opacity:0.6">
                    <div class="input-group">
					   <input id="input-me" type="text"  name="messages" class="form-control input-sm" placeholder="Type your message here..." />
					   <span class="input-group-append">
					   <input type="button" style="background-color:#008000" class="btn btn-primary" value="Send" onclick="send_msg()">
					   </span>
					</div> 
                  </div>
               </div>
               <!--end code-->
            </div>
         </div>
      </div>
      <script type="text/javascript">
		 function getCurrentTime(){
			var now = new Date();
			var hh = now.getHours();
			var min = now.getMinutes();
			var ampm = (hh>=12)?'PM':'AM';
			hh = hh%12;
			hh = hh?hh:12;
			hh = hh<10?'0'+hh:hh;
			min = min<10?'0'+min:min;
			var time = hh+":"+min+" "+ampm;
			return time;
		 }
		 function send_msg(){
			jQuery('.start_chat').hide();
			var txt=jQuery('#input-me').val();
			var html='<li class="messages-me clearfix"><span class="message-img"><img src="../assets/chatbot_image/user_avatar.png" class="avatar-sm rounded-circle"></span><div class="message-body clearfix"><div class="message-header"><strong class="messages-title">Me</strong> <small class="time-messages text-muted"><span class="fas fa-time"></span> <span class="minutes">'+getCurrentTime()+'</span></small> </div><p class="messages-p">'+txt+'</p></div></li>';
			jQuery('.messages-list').append(html);
			jQuery('#input-me').val('');
			if(txt){
				jQuery.ajax({
					url:'get_bot_message.php',
					type:'post',
					data:'txt='+txt,
					success:function(result){
						var html='<li class="messages-you clearfix"><span class="message-img"><img src="../assets/chatbot_image/bot_avatar.png" class="avatar-sm rounded-circle"></span><div class="message-body clearfix"><div class="message-header"><strong class="messages-title">Chatbot</strong> <small class="time-messages text-muted"><span class="fas fa-time"></span> <span class="minutes">'+getCurrentTime()+'</span></small> </div><p class="messages-p">'+result+'</p></div></li>';
						jQuery('.messages-list').append(html);
						jQuery('.messages-box').scrollTop(jQuery('.messages-box')[0].scrollHeight);
					}
				});
			}
		 }
      </script>
   </body>

   


</html>