<%-- 
    Document   : index
    Created on : Mar 26, 2018, 8:51:27 AM
    Author     : sandi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
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
        
        <!--Progress Bar file library-->
        <!--<link rel="stylesheet" href="resource/progress/progressStyle.css">-->
        
        <style type="text/css">
             .container {
                width: 100%;
                margin: 50px auto; 
            }
            .progressbar {
                counter-reset: step;
            }
            .progressbar li {
                list-style-type: none;
                width: 25%;
                float: left;
                font-size: 16px;
                position: relative;
                text-align: center;
                vertical-align: middle;
                text-transform: lowercase;
                color: #7d7d7d;
            }
            .progressbar li:before {
                width: 30px;
                height: 30px;
                content: '';
                line-height: 25px;
                border: 2px solid #7d7d7d;
                display: block;
                text-align: center;
                margin: 0 auto 10px auto;
                border-radius: 50%;
                background-color: white;
            }
            .progressbar li:after {
                width: 100%;
                height: 2px;
                content: '';
                position: absolute;
                background-color: #7d7d7d;
                top: 15px;
                left: -50%;
                z-index: -1;
            }
            .progressbar li:first-child:after {
                content: none;
            }
            .progressbar li.active:before {
                color: #55b776;
                background-color: #55b776;
            }
            .progressbar li.active:before {
                border-color: #55b776;
            }
            .progressbar li.active + li:after {
                background-color: #55b776;
            }
        </style>
    </head>
    <body>	
    <div class="page-container" style="overflow: scroll">	
        <div class="left-content">
            <div class="mother-grid-inner">
		<div class="header-main">
                    <div class="header-left col-md-6">
                        <center>
                            <h3 style="margin-top: 13px;">DETAIL PROGRESS</h3>
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
                                            <input type="hidden" name="idLecturer" value="${lecturer.idLecturer}"/>
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
                    <div class="col-md-12" 
                         id="progressAssistant">
                        
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
                reloadProgressAssistant();
                
                function reloadProgressAssistant(){
                    var idLecturer = $('input[name=idLecturer]').val();
                    $.ajax({
                        url: "getProgressAssistant.htm",
                        data: 'idLecturer=' + idLecturer,
                        type: 'GET',
                        success: function(response){
                            var data = JSON.parse(response);
                            var len = data.length;
                            var idProgressHistory = data[0].idProgressHistory;
                            var content = '<div class="container">\n\
                                        <ul class="progressbar">';
                            var sumState = 0;
                            for (var i =0; i < len; i++){
                                if (data[i].state === 1){
                                    content +='<li class="active">\n\
                                            ' + data[i].numberRequirement + '<br>\n\
                                            <span class="glyphicon glyphicon-ok" style="color: green"></span>\n\
                                            <br>\n\
                                            ' + data[i].description + '\n\
                                          </li>';
                                    if (data[i].numberRequirement%4 === 0){
                                        content += '</ul>\n\
                                                    </div>\n\
                                                    <div class="container">\n\
                                                    <ul class="progressbar">';
                                    }
                                } else {
                                    sumState++;
                                    content +='<li>\n\
                                            ' + data[i].numberRequirement + '<br>\n\
                                            <a href="saveProgressAssistant.htm?idDetail=' + data[i].idDetail + '&idProgressHistory=' + data[i].idProgressHistory + '">\n\
                                                <span class="fa fa-pencil"></span>\n\
                                            </a>\n\
                                            <br>\n\
                                            ' + data[i].description + '\n\
                                          </li>';
                                    if (data[i].numberRequirement%4 === 0){
                                        content += '</ul>\n\
                                                    </div>\n\
                                                    <div class="container">\n\
                                                    <ul class="progressbar">';
                                    }
                                }
                            }
                            if (sumState === 0){
                                content += '<div class="row">\n\
                                                <div class="col-md-3" style="padding-left: 50px; padding-right: 50px">\n\
                                                    <button class="form-control-submit" id="selesai">Selesai</button>\n\
                                                </div>\n\
                                            </div>';
                            }
                            content+='</ul>\n\
                                        </div>';
        
                            $('#progressAssistant').html(content);
                            
                            $('#selesai').click(function(){
                                $.ajax({
                                    url: 'updateProgressHistoryAssistant.htm',
                                    data : 'idProgressHistory=' + idProgressHistory,
                                    type: 'GET',
                                    success: function (response) {
                                        var data = JSON.parse(response);
                                        var dataConfirm = confirm('Apakah anda ingin menginputkan SK Historis Jabatan Fungsional Asisten Ahli ?');
                                        if (dataConfirm === true){
                                            window.location.assign("portofolio.htm?idLecturer=" + data.idLecturer);
                                        }
                                    }
                                });
                            });
                        }
                    });    
                }
            });
    </script>
    <script src="resource/js/jquery.nicescroll.js"></script>
    <script src="resource/js/scripts.js"></script>
    <script src="resource/js/bootstrap.js"> </script>
</body>
</html>                     
