<%-- 
    Document   : index
    Created on : Mar 26, 2018, 8:51:27 AM
    Author     : sandi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
    <div class="page-container" style="overflow: scroll">	
        <div class="left-content">
            <div class="mother-grid-inner">
		<div class="header-main">
                    <div class="header-left col-md-6">
                        <center>
                            <h3 style="margin-top: 13px;">PENGATURAN</h3>
                        </center>							
                        <div class="clearfix"> </div>
                    </div>
                    <div class="profile_details">		
                    <ul>
                        <li class="dropdown profile_details_drop">
                            <a href="#" 
                               class="dropdown-toggle" 
                               data-toggle="dropdown" 
                               aria-expanded="false">
                                <div class="profile_img">	
                                    <span class="prfil-img">
                                        <img src="images/p1.png" alt=""> 
                                    </span> 
                                    <div class="user-name">
                                        <p>${sessionScope.name}</p>
                                        <span>${sessionScope.role}</span>
                                        <input type="hidden" name="idUser" value="${sessionScope.idUser}"/>
                                    </div>
                                    <i class="fa fa-angle-down lnr"></i>
                                    <i class="fa fa-angle-up lnr"></i>
                                    <div class="clearfix"></div>	
                                </div>	
                             </a>
                            <ul class="dropdown-menu drp-mnu">
                                <li> 
                                    <a href="add_admin.htm">
                                        <i class="fa fa-user-plus"></i> Tambah Admin
                                    </a> 
                                </li>
                                <li> 
                                    <a href="setting_admin.htm">
                                        <i class="fa fa-cog"></i> Pengaturan
                                    </a> 
                                </li> 
                                <li> 
                                    <a href="logout.htm">
                                        <i class="fa fa-sign-out"></i> Keluar
                                    </a> 
                                </li>
                            </ul>
                        </li>
                    </ul>
                    </div>
                    <div class="clearfix"> </div>					
		</div>
		<script>
		$(document).ready(function() {
			 var navoffeset=$(".header-main").offset().top;
			 $(window).scroll(function(){
				var scrollpos=$(window).scrollTop(); 
				if(scrollpos >=navoffeset){
					$(".header-main").addClass("fixed");
				}else{
					$(".header-main").removeClass("fixed");
				}
			 });
			 
		});
		</script>
                <div class="row">
                    <div class="col-md-12">
                        <div class="row">
                            <div class="col-md-12">
                                <label style="padding-left: 188px; padding-top: 30px">Pengaturan Administrator</label>
                            </div>
                        </div>
                        <hr>
                        <br>
                        <div class="row">
                            <div class="col-md-3" style="margin-top: 7px; text-align: right">
                                Username<span style="color: red">*</span>
                            </div>
                            <div class="col-md-4">
                                <input type="text"
                                       placeholder="Username"
                                       value="${sessionScope.name}"
                                       readonly=""
                                       name="username"
                                       class="form-control"
                                       required=""/>
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-md-3" style="margin-top: 7px; text-align: right">
                                Password Lama<span style="color: red">*</span>
                            </div>
                            <div class="col-md-4">
                                <input type="password"
                                       placeholder="Password Lama" 
                                       name="oldPassword"
                                       class="form-control"
                                       required=""/>
                            </div>
                        </div>
                        <br>
                        <div class="row">    
                            <div class="col-md-3" style="margin-top: 7px; text-align: right">
                                Password Baru<span style="color: red">*</span>
                            </div>
                            <div class="col-md-4">
                                <input type="password"
                                       placeholder="Password Baru" 
                                       name="newPassword"
                                       class="form-control"
                                       required=""/>
                            </div>
                        </div>
                        <br>
                        <div class="row">    
                            <div class="col-md-3" style="margin-top: 7px; text-align: right">
                                Konfirmasi Password Baru<span style="color: red">*</span>
                            </div>
                            <div class="col-md-4">
                                <input type="password"
                                       placeholder="Konfirmasi Password Baru" 
                                       name="password"
                                       class="form-control"
                                       required=""/>
                            </div>
                        </div>
                        <br>
                        <div class="row">    
                            <div class="col-md-offset-3 col-md-2">
                                <button class="form-control-submit" 
                                        id="submitCek">
                                    Submit
                                </button>
                            </div>
                        </div>
                    </div>
                </div>    
            </div>
        </div>
        <div class="sidebar-menu">
            <div class="logo"> 
                <a href="#" 
                   class="sidebar-icon"> 
                    <span class="fa fa-bars"></span> 
                </a> 
                <a href="#"> 
                    <span id="logo" ></span> 
                    <!--<img id="logo" src="resource/images/pasim.jpg" alt="Logo"/>-->
                </a>
            </div>		  
            <div class="menu">
                <ul id="menu" >
                    <li id="menu-home" >
                        <a href="dashboard.htm">
                            <i class="fa fa-home"></i>
                            <span>Beranda</span>
                        </a>
                    </li>
                    <li>
                        <a href="lecturer.htm">
                            <i class="fa fa-book nav_icon"></i>
                            <span>Dosen Tetap</span>
                        </a>
                    </li>
                    <li id="menu-comunicacao" >
                        <a href="#">
                            <i class="fa fa-file-text"></i>
                            <span>Laporan</span>
                            <span class="fa fa-angle-right" style="float: right"></span>
                        </a>
                        <ul id="menu-comunicacao-sub" >
                            <li id="menu-arquivos" >
                                <a href="showReportResume.htm">Resume Dosen Tetap</a>		              
                            </li>
                            <li id="menu-arquivos" >
                                <a href="showReportComprehensif.htm">Kelengkapan Portofolio</a>
                            </li>
                            <li id="menu-arquivos" >
                                <a href="showReportCareer.htm">Jenjang Karir</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="showProgress.htm">
                        <i class="fa fa-bar-chart"></i>
                        <span>Progress</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <i class="fa fa-cog"></i>
                            <span>Kelola Master</span>
                            <span class="fa fa-angle-right" style="float: right"></span>
                        </a>
                        <ul id="menu-academico-sub" >
                            <li id="menu-academico-boletim">
                                <a href="showMasterData.htm">Master Data
                                </a>
                            </li>
                            <li id="menu-academico-boletim">
                                <a href="showMasterFile.htm">Detail Persyaratan
                                </a>
                            </li>
                            <li id="menu-academico-boletim">
                                <a href="showMasterProgress.htm">Detail Progress
                                </a>
                            </li>
                            <li id="menu-academico-boletim">
                                <a href="showMasterNews.htm">Master Berita
                                </a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
        <div class="clearfix"> </div>
    </div>
    <script>
        var toggle = true;
            $(".sidebar-icon").click(function() {                
            if (toggle)
            {
                $(".page-container").addClass("sidebar-collapsed").removeClass("sidebar-collapsed-back");
                $("#menu span").css({"position":"absolute"});
            }
            else
            {
                $(".page-container").removeClass("sidebar-collapsed").addClass("sidebar-collapsed-back");
                setTimeout(function() {
                $("#menu span").css({"position":"relative"});
                }, 400);
            }               
                toggle = !toggle;
            });
            
            $(document).ready(function(){
                $('#submitCek').click(function(){
                    var username = $('input[name=username]').val();
                    var oldPassword = $('input[name=oldPassword]').val();
                    $.ajax({
                        url: 'cekAdministrator.htm',
                        data: {username: username, oldPassword: oldPassword},
                        type: 'GET',
                        success : function(response){
                            var data = JSON.parse(response);
                            if (data.status === 0){
                                $.growl.warning({title: "Peringatan", message: "Password lama salah!"});
                            } else {
                                var idUser = $('input[name=idUser]').val();
                                var newPassword = $('input[name=newPassword]').val();
                                var password = $('input[name=password]').val();
                                if (newPassword !== password) {
                                    $.growl.warning({title: "Peringatan", message: "Konfirmasi password baru salah!"});
                                } else {
                                    $.ajax({
                                        url: 'updateAdministrator.htm',
                                        data: {idUser:idUser , username: username, password: password},
                                        type: 'GET',
                                        success : function(response){
                                            $.growl.notice({title: "Berhasil", message: "Data berhasil di update!"});
                                            $('input[name=oldPassword]').val("");
                                            $('input[name=newPassword]').val("");
                                            $('input[name=password]').val("");
                                        }
                                    });    
                                }
                            }
                        }
                    });
                });
            });
    </script>
    <script src="resource/js/jquery.nicescroll.js"></script>
    <script src="resource/js/scripts.js"></script>
    <script src="resource/js/bootstrap.js"> </script>
</body>
</html>                     
