<%-- 
    Document   : index
    Created on : Mar 26, 2018, 8:51:27 AM
    Author     : sandi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
        <script type="text/javascript" src="http://js.nicedit.com/nicEdit-latest.js"></script> 
        <script type="text/javascript">
        //<![CDATA[
                bkLib.onDomLoaded(function() { nicEditors.allTextAreas() });
          //]]>
        </script>
    </head>
    <body>	
    <div class="page-container" style="overflow: scroll">	
        <div class="left-content">
            <div class="mother-grid-inner">
		<div class="header-main">
                    <div class="header-left col-md-6">
                        <center>
                            <h3 style="margin-top: 13px;">KELOLA MASTER BERITA</h3>
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
                <div class="row" style="padding-left: 50px; padding-right: 50px; padding-top: 30px">
                    <div class="col-md-12">
                        <form action="saveNews.htm" 
                              modelAttribute="data"
                              id="formNews"
                              method="POST">
                            <div class="row">
                                <div class="col-md-5">
                                    <input type="hidden" 
                                           class="form-control" 
                                           name="idNews"
                                           value="0"/>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-2" style="margin-top: 7px; text-align: right">
                                    Judul Berita
                                </div>
                                <div class="col-md-5">
                                    <input type="text" 
                                           class="form-control" 
                                           name="title" 
                                           placeholder="Judul Berita"
                                           required=""/>
                                </div>
                            </div>
                            <br>
                            <div class="row">
                                <div class="col-md-2" style="margin-top: 7px; text-align: right">
                                    Tanggal Berita
                                </div>
                                <div class="col-md-5">
                                    <input type="date" 
                                           class="form-control" 
                                           name="updateDate" 
                                           placeholder="Tanggal Update"
                                           required=""/>
                                </div>
                            </div>
                            <br>
                            <div class="row">
                                <div class="col-md-2" style="margin-top: 7px; text-align: right">
                                    Deskripsi Berita
                                </div>
                                <div class="col-md-10" >
                                    <textarea style="width: 100%; height: 330px; overflow: scroll"
                                           class="form-control" 
                                           name="description" 
                                           placeholder="Deskripsi Berita"
                                           required="">
                                    </textarea>
                                </div>
                            </div>
                            <br>
                            <div class="row">
                                <div class="col-lg-offset-2 col-md-2">
                                    <input type="submit" class="form-control-submit" value="Simpan"/>
                                </div>
                            </div>   
                        </form>
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
                                <a href="showReportComprehen.htm">Kelengkapan Portofolio</a>
                            </li>
                            <li id="menu-arquivos" >
                                <a href="icons.html">Jenjang Karir</a>
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
                $('#formNews').submit(function(e){
                    e.preventDefault();
                    $.post({
                        url : 'saveNews.htm',
                        dataType: "form-data",
                        data : $('#formNews').serialize(),
                        error: function(){
                            $.growl.notice({title: "Berhasil", message: "Data berhasil ditambahkan" });
                            $('formNews').reset();
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
