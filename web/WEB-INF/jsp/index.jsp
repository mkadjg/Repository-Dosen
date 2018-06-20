<!--Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>
    <title>Universitas Nasional Pasim Bandung</title>

    <!--Bootstrap file library-->
    <link href="resource/css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
    <link href="resource/css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="resource/css/font-awesome.css" rel="stylesheet"> 
    <link href='//fonts.googleapis.com/css?family=Carrois+Gothic' rel='stylesheet' type='text/css'>
    <link href='//fonts.googleapis.com/css?family=Work+Sans:400,500,600' rel='stylesheet' type='text/css'>

    <!--Notification file library-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="resource/javascripts/jquery.growl.js" type="text/javascript"></script>
    <link href="resource/stylesheets/jquery.growl.css" rel="stylesheet" type="text/css" />
        
</head>
<body>	
    <div class="login-page">
        <div class="login-main">  	
            <div class="login-head">
		<h1>Login</h1>
            </div>
			
            <div class="login-block">
                <form action="login.htm"
                      id="formLogin"
                      method="POST"
                      name="userDto">
                    <input type="text" 
                           name="username"
                           placeholder="Username / Email" 
                           required="">
                    <input type="password" 
                           name="password" 
                           class="lock" 
                           placeholder="Password"
                           required="">
                    <h3>MASUK SEBAGAI : </h3>
                    <br>
                    <div class="row">
                        <div class="col-md-6">
                            <center>
                                <input name="role" 
                                       value="1" 
                                       type="radio" 
                                       required="">
                            </center>
                        </div>
                        <div class="col-md-6">
                            <center>
                                <input name="role" 
                                       value="2" 
                                       type="radio" 
                                       required="">
                            </center>
                        </div>
                    </div>
                        <div class="row">
                            <div class="col-md-6">
                                <h3>ADMINISTRATOR</h3>
                            </div>
                            <div class="col-md-6">
                                <h3>DOSEN TETAP</h3>
                            </div>
                        </div>
                    <div class="clearfix"> </div>
                    <div class="btn-effcts panel-widget">
                        <div class="button-heading">
                        <input type="submit" 
                               value="Kirim"/>
                        </div>
                    </div>
                </form>
            </div>
      </div>
</div>
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
                    if (data.status === 1){
                        if (data.role === 1){
                            window.location.replace('dashboard.htm');
                        } else {
                            window.location.replace('dashboard_dosen.htm');
                        }
                        
                    } else {
                        $(function(){
                            $.growl.error({title: "Peringatan !", message: "Username atau Password Salah !!!" });
                        });
                    }
                }
            });
        });
    });
</script>
<script src="resource/js/jquery.nicescroll.js"></script>
<script src="resource/js/scripts.js"></script>
<script src="resource/js/bootstrap.js"> </script>
</html>


                      
						
