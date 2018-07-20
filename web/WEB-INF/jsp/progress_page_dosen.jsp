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
        
        <!--datatable file library-->
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
        <!--<script type="text/javascript" charset="utf8" src="https://code.jquery.com/jquery-3.3.1.js"></script>-->
        <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
        
<!--        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <link rel="stylesheet" href="/resources/demos/style.css">
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>-->

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
                            <h3 style="margin-top: 13px;">PROGRESS</h3>
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
                                        <p>${sessionScope.nameLecturer}</p>
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
                                    <a href="setting_dosen.htm">
                                        <i class="fa fa-cog"></i> Settings
                                    </a> 
                                </li>
                                <li> 
                                    <a href="logout.htm">
                                        <i class="fa fa-sign-out"></i> Logout
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
                <div class="col-sm-12 col-md-12 col-lg-12 mb-60" style="padding: 20px">         
                    <div class="horizontal-tab">
                        <ul class="nav nav-tabs">
                            <li class="">
                                <a href="#tab1" 
                                   data-toggle="tab" 
                                   aria-expanded="false">
                                    Pengajuan NIDN
                                </a>
                            </li>
                            <li class="">
                                <a href="#tab2" 
                                   data-toggle="tab" 
                                   aria-expanded="false">
                                    Asisten Ahli
                                </a>
                            </li>
                            <li class="">
                                <a href="#tab3" 
                                   data-toggle="tab" 
                                   aria-expanded="false">
                                    Lektor
                                </a>
                            </li>
                            <li class="">
                                <a href="#tab4" 
                                   data-toggle="tab" 
                                   aria-expanded="false">
                                    Lektor Kepala
                                </a>
                            </li>
                            <li class="">
                                <a href="#tab5" 
                                   data-toggle="tab" 
                                   aria-expanded="false">
                                    Guru Besar
                                </a>
                            </li>
                            <li class="">
                                <a href="#tab6" 
                                   data-toggle="tab" 
                                   aria-expanded="false">
                                    Sertifikasi Dosen
                                </a>
                            </li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane" 
                                 id="tab1">
                                <div class="row">
                                    <div class="col-md-12" 
                                         id="progressNidn">
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" 
                                 id="tab2">
                                <div class="row">
                                    <div class="col-md-12" 
                                         id="progressAssistant">
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" 
                                 id="tab3">
                                <div class="row">
                                    <div class="col-md-12" 
                                         id="progressLectors">
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" 
                                 id="tab4">
                                <div class="row">
                                    <div class="col-md-12" 
                                         id="progressHeadlectors">
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" 
                                 id="tab5">
                                <div class="row">
                                    <div class="col-md-12" 
                                         id="progressProfessor">    
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" 
                                 id="tab6">
                                <div class="row">
                                    <div class="col-md-12" 
                                         id="progressSertification">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                <div class="clearfix"> </div>
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
                            <a href="dashboard_dosen.htm">
                                <i class="fa fa-home"></i>
                                <span>Beranda</span>
                            </a>
                        </li>
                        <li>
                            <a href="portofolio_dosen.htm?idLecturer=${sessionScope.idLecturer}">
                                <i class="fa fa-book nav_icon"></i>
                                <span>Portofolio</span>
                            </a>
                        </li>
                        <li>
                            <a href="showProgressDosen.htm?idLecturer=${sessionScope.idLecturer}">
                            <i class="fa fa-bar-chart"></i>
                            <span>Progress</span>
                            </a>
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
                    reloadProgressNidn();
                    reloadProgressAssistant();
                    reloadProgressLectors();
                    reloadProgressHeadlectors();
                    reloadProgressProfessor();
                    reloadProgressSertification();
                    
                    function reloadProgressNidn(){
                        var idLecturer = $('input[name=idLecturer]').val();
                        console.log(idLecturer);
                        $.ajax({
                            url: "getProgressNidn.htm",
                            data: 'idLecturer=' + idLecturer,
                            type: 'GET',
                            success: function(response){
                                var data = JSON.parse(response);
                                var len = data.length;
                                if (len === 0){
                                    content =   '<br><br>\
                                                <div class="row">\n\
                                                    <div class="col-md-12" style="text-align: center">\n\
                                                        <span><i>Anda belum memiliki progress di kegiatan ini.</span>\n\
                                                        <span><i>Silahkan lengkapi persyaratan dengan mengklik <a href="addFileNidnDosen.htm?idLecturer=' + idLecturer + '">Lengkapi Persyaratan</a>\n\
                                                    </div>\n\
                                                </div>';
                                    
                                } else {
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
                                                    <span class="glyphicon glyphicon-remove" style="color: red"></span>\n\
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
                                    content+='</ul>\n\
                                                </div>';
                                }
                                $('#progressNidn').html(content);
                            }
                        });    
                    }
                    
                    function reloadProgressAssistant(){
                        var idLecturer = $('input[name=idLecturer]').val();
                        $.ajax({
                            url: "getProgressAssistant.htm",
                            data: 'idLecturer=' + idLecturer,
                            type: 'GET',
                            success: function(response){
                                var data = JSON.parse(response);
                                var len = data.length;
                                if (len === 0){
                                    content =   '<br><br>\
                                                <div class="row">\n\
                                                    <div class="col-md-12" style="text-align: center">\n\
                                                        <span><i>Anda belum memiliki progress di kegiatan ini.</span>\n\
                                                        <span><i>Silahkan lengkapi persyaratan dengan mengklik <a href="addFileAssistantDosen.htm?idLecturer=' + idLecturer + '">Lengkapi Persyaratan</a></i></span>\n\
                                                    </div>\n\
                                                </div>';
                                    
                                } else {
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
                                            content +='<li class="active">\n\
                                                    ' + data[i].numberRequirement + '<br>\n\
                                                    <span class="glyphicon glyphicon-remove" style="color: red"></span>\n\
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
                                    content+='</ul>\n\
                                                </div>';
                                }
                                $('#progressAssistant').html(content);
                            }
                        });    
                    }
                    
                    function reloadProgressLectors(){
                        var idLecturer = $('input[name=idLecturer]').val();
                        $.ajax({
                            url: "getProgressLectors.htm",
                            data: 'idLecturer=' + idLecturer,
                            type: 'GET',
                            success: function(response){
                                var data = JSON.parse(response);
                                var len = data.length;
                                if (len === 0){
                                    content =   '<br><br>\
                                                <div class="row">\n\
                                                    <div class="col-md-12" style="text-align: center">\n\
                                                        <span><i>Anda belum memiliki progress di kegiatan ini.</span>\n\
                                                        <span><i>Silahkan lengkapi persyaratan dengan mengklik <a href="addFileLectorsDosen.htm?idLecturer=' + idLecturer + '">Lengkapi Persyaratan</a></i></span>\n\
                                                    </div>\n\
                                                </div>';
                                    
                                } else {
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
                                                    <span class="glyphicon glyphicon-remove" style="color: red"></span>\n\
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
                                    content+='</ul>\n\
                                                </div>';
                                }
                                $('#progressLectors').html(content);
                            }
                        }); 
                    }
                    
                    function reloadProgressHeadlectors(){
                        var idLecturer = $('input[name=idLecturer]').val();
                        $.ajax({
                            url: "getProgressHeadlectors.htm",
                            data: 'idLecturer=' + idLecturer,
                            type: 'GET',
                            success: function(response){
                                var data = JSON.parse(response);
                                var len = data.length;
                                if (len === 0){
                                    content =   '<br><br>\
                                                <div class="row">\n\
                                                    <div class="col-md-12" style="text-align: center">\n\
                                                        <span><i>Anda belum memiliki progress di kegiatan ini.</span>\n\
                                                        <span><i>Silahkan lengkapi persyaratan dengan mengklik <a href="addFileHeadlectorsDosen.htm?idLecturer=' + idLecturer + '">Lengkapi Persyaratan</a></i></span>\n\
                                                    </div>\n\
                                                </div>';
                                    
                                } else {
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
                                                    <span class="glyphicon glyphicon-remove" style="color: red"></span>\n\
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
                                    content+='</ul>\n\
                                                </div>';
                                }
                                $('#progressHeadlectors').html(content);
                            }
                        }); 
                    }
                    
                    function reloadProgressProfessor(){
                        var idLecturer = $('input[name=idLecturer]').val();
                        $.ajax({
                            url: "getProgressProfessor.htm",
                            data: 'idLecturer=' + idLecturer,
                            type: 'GET',
                            success: function(response){
                                var data = JSON.parse(response);
                                var len = data.length;
                                if (len === 0){
                                    content =   '<br><br>\
                                                <div class="row">\n\
                                                    <div class="col-md-12" style="text-align: center">\n\
                                                        <span><i>Anda belum memiliki progress di kegiatan ini.</span>\n\
                                                        <span><i>Silahkan lengkapi persyaratan dengan mengklik <a href="addFileProfessorDosen.htm?idLecturer=' + idLecturer + '">Lengkapi Persyaratan</a></i></span>\n\
                                                    </div>\n\
                                                </div>';
                                    
                                } else {
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
                                                    <span class="glyphicon glyphicon-remove" style="color: red"></span>\n\
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
                                    content+='</ul>\n\
                                                </div>';
                                }
                                $('#progressProfessor').html(content);
                            }
                        }); 
                    }
                    
                    function reloadProgressSertification(){
                        var idLecturer = $('input[name=idLecturer]').val();
                        $.ajax({
                            url: "getProgressSertification.htm",
                            data: 'idLecturer=' + idLecturer,
                            type: 'GET',
                            success: function(response){
                                var data = JSON.parse(response);
                                var len = data.length;
                                if (len === 0){
                                    content =   '<br><br>\
                                                <div class="row">\n\
                                                    <div class="col-md-12" style="text-align: center">\n\
                                                        <span><i>Anda belum memiliki progress di kegiatan ini.</span>\n\
                                                    </div>\n\
                                                </div>';
                                    
                                } else {
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
                                                    <span class="glyphicon glyphicon-remove" style="color: red"></span>\n\
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
                                    content+='</ul>\n\
                                                </div>';
                                }
                                $('#progressSertification').html(content);
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
