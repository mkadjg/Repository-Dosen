<!--Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Universitas Nasional Pasim</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="resource/images/pasim.jpg"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resource/login/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resource/login/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resource/login/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resource/login/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="resource/login/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resource/login/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resource/login/vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="resource/login/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resource/login/css/util.css">
	<link rel="stylesheet" type="text/css" href="resource/login/css/main.css">
<!--===============================================================================================-->
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100" style="background-image: url('resource/login/images/background2.jpg');">
			<div class="wrap-login100" style="background-color: 	#B22222">
				<form class="login100-form validate-form"
                                      action="login.htm"
                                      id="formLogin"
                                      name="userDto">
					
					<span class="login100-form-title p-b-34 p-t-27">
						Selamat Datang
					</span>

					<div class="wrap-input100 validate-input" data-validate = "Enter username">
						<input class="input100" type="text" name="username" placeholder="Username">
						<span class="focus-input100" data-placeholder="&#xf207;"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Enter password">
						<input class="input100" type="password" name="password" placeholder="Password">
						<span class="focus-input100" data-placeholder="&#xf191;"></span>
					</div>

					<div align="center">
                                            <input type="submit" 
                                                   value="login"
                                                   style="background-color: white; width: 200px; height: 45px; font-size: 18px; border-radius: 5px"/>
					</div>
					
					
				</form>
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
        <script src="resource/login/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="resource/login/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="resource/login/vendor/bootstrap/js/popper.js"></script>
	<script src="resource/login/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="resource/login/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="resource/login/vendor/daterangepicker/moment.min.js"></script>
	<script src="resource/login/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="resource/login/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="resource/login/js/main.js"></script>
<!--===============================================================================================-->
        <script src="resource/javascripts/jquery.growl.js" type="text/javascript"></script>
        <link href="resource/stylesheets/jquery.growl.css" rel="stylesheet" type="text/css" />

</body>
<script type="text/javascript">
    $(document).ready(function(){
        $('#formLogin').submit(function(e){
            e.preventDefault();
            $.post({
                url: "login.htm",
                dataType: "form-data",
                data: $('#formLogin').serialize(),
                error: function(e){
                    var data = JSON.parse(e.responseText);
                    console.log(data);
                    if (data.status === 1){
                        if (data.role === 1){
                            window.location.replace('dashboard.htm');
                        } else {
                            window.location.replace('dashboard_dosen.htm');
                        }
                        
                    } else {
                        $(function(){
                            $.growl.error({title: "Peringatan!", message: "Username atau Password Salah" });
                        });
                    }
                }
            });
        });
    });
</script>
</html>




                      
						
