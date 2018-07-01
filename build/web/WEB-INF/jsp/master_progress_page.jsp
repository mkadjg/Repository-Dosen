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
        <title>Portofolio Dosen Unas Pasim Bandung</title>
        
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
        
    </head>
    <body>	
    <div class="page-container" style="overflow: scroll">	
        <div class="left-content">
            <div class="mother-grid-inner">
		<div class="header-main">
                    <div class="header-left col-md-6">
                        <center>
                            <h3 style="margin-top: 13px;">KELOLA DETAIL PERSYARATAN</h3>
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
                
                <div class="col-sm-12 col-md-12 col-lg-12 mb-60" style="padding: 20px">         
                    <div class="horizontal-tab">
                        <ul class="nav nav-tabs">
                            <li class="">
                                <a href="#tab1" 
                                   data-toggle="tab" 
                                   aria-expanded="false">Pengajuan NIDN
                                </a>
                            </li>
                            <li class="">
                                <a href="#tab2" 
                                   data-toggle="tab" 
                                   aria-expanded="false">Asisten Ahli
                                </a>
                            </li>
                            <li class="">
                                <a href="#tab3" 
                                   data-toggle="tab" 
                                   aria-expanded="false">Lektor
                                </a>
                            </li>
                            <li class="">
                                <a href="#tab4" 
                                   data-toggle="tab" 
                                   aria-expanded="false">Lektor Kepala
                                </a>
                            </li>
                            <li class="">
                                <a href="#tab5" 
                                   data-toggle="tab" 
                                   aria-expanded="false">Guru Besar
                                </a>
                            </li>
                            <li class="">
                                <a href="#tab6" 
                                   data-toggle="tab" 
                                   aria-expanded="false">Sertifikasi Dosen
                                </a>
                            </li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane" 
                                 id="tab1">
                                <div class="row">
                                    <div class="col-md-12">
                                        <form action="saveDetailProgressNidn.htm"
                                                id="formDetailProgressNidn"
                                                name="progressNidn"
                                                method="POST">
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <input type="hidden" 
                                                       name="idDetail"
                                                       id="idDetailNidn"
                                                       value="0"/>
                                                </div>
                                                <div class="col-md-4">
                                                    <input type="hidden" 
                                                       name="idEvent"
                                                       value="1"/>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-2" style="margin-top: 7px;">
                                                    Urutan Proses<span style="color: red">*</span>
                                                </div>
                                                <div class="col-md-4">
                                                    <input type="text" 
                                                       class="form-control" 
                                                       readonly="true"
                                                       name="numberRequirement"
                                                       id="numberRequirementNidn"
                                                       placeholder="Urutan Proses" 
                                                       required="" />
                                                </div>
                                            </div>
                                            <br>
                                            <div class="row">
                                                <div class="col-md-2" style="margin-top: 7px;">
                                                    Nama Proses<span style="color: red">*</span>
                                                </div>
                                                <div class="col-md-4">
                                                    <input type="text" 
                                                       class="form-control" 
                                                       name="description"
                                                       id="descriptionNidn"
                                                       placeholder="Nama Proses" 
                                                       required="" />
                                                </div>
                                            </div>
                                            <br>
                                            <div class="row">
                                                <div class="col-md-2">
                                                    <input type="submit" 
                                                           value="Simpan"
                                                           class="form-control-submit"/>
                                                </div>
                                                <div class="col-md-2">
                                                    <input type="reset"
                                                           id="resetNidn"
                                                           value="Reset"
                                                           class="form-control-submit"/>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="table-responsive">
                                            <table class="table table-hover" id="tableProgressNidn">
                                                <thead>
                                                    <th>Urutan Proses</th>
                                                    <th>Deskripsi Proses</th>
                                                    <th>Aksi</th>
                                                </thead>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" 
                                 id="tab2">
                                <div class="row">
                                    <div class="col-md-12">
                                        <form action="saveDetailProgressAssistant.htm"
                                                id="formDetailProgressAssistant"
                                                name="progressAssistant"
                                                method="POST">
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <input type="hidden" 
                                                       name="idDetail"
                                                       id="idDetailAssistant"
                                                       value="0"/>
                                                </div>
                                                <div class="col-md-4">
                                                    <input type="hidden" 
                                                       name="idEvent"
                                                       value="2"/>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-2" style="margin-top: 7px;">
                                                    Urutan Proses<span style="color: red">*</span>
                                                </div>
                                                <div class="col-md-4">
                                                    <input type="text" 
                                                       class="form-control"
                                                       readonly="true"
                                                       name="numberRequirement"
                                                       id="numberRequirementAssistant"
                                                       placeholder="Urutan Proses" 
                                                       required="" />
                                                </div>
                                            </div>
                                            <br>
                                            <div class="row">
                                                <div class="col-md-2" style="margin-top: 7px;">
                                                    Nama Proses<span style="color: red">*</span>
                                                </div>
                                                <div class="col-md-4">
                                                    <input type="text" 
                                                       class="form-control" 
                                                       name="description"
                                                       id="descriptionAssistant"
                                                       placeholder="Nama Proses" 
                                                       required="" />
                                                </div>
                                            </div>
                                            <br>
                                            <div class="row">
                                                <div class="col-md-2">
                                                    <input type="submit" 
                                                           value="Simpan"
                                                           class="form-control-submit"/>
                                                </div>
                                                <div class="col-md-2">
                                                    <input type="reset"
                                                           id="resetAssistant"
                                                           value="Reset"
                                                           class="form-control-submit"/>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="table-responsive">
                                            <table class="table table-hover" id="tableProgressAssistant">
                                                <thead>
                                                    <th>Urutan Proses</th>
                                                    <th>Deskripsi Proses</th>
                                                    <th>Aksi</th>
                                                </thead>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" 
                                 id="tab3">
                                <div class="row">
                                    <div class="col-md-12">
                                        <form action="saveDetailProgressLectors.htm"
                                                id="formDetailProgressLectors"
                                                name="progressLectors"
                                                method="POST">
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <input type="hidden" 
                                                       name="idDetail"
                                                       id="idDetailLectors"
                                                       value="0"/>
                                                </div>
                                                <div class="col-md-4">
                                                    <input type="hidden" 
                                                       name="idEvent"
                                                       value="3"/>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-2" style="margin-top: 7px;">
                                                    Urutan Proses<span style="color: red">*</span>
                                                </div>
                                                <div class="col-md-4">
                                                    <input type="text" 
                                                       class="form-control"
                                                       readonly="true"
                                                       name="numberRequirement"
                                                       id="numberRequirementLectors"
                                                       placeholder="Urutan Proses" 
                                                       required="" />
                                                </div>
                                            </div>
                                            <br>
                                            <div class="row">
                                                <div class="col-md-2" style="margin-top: 7px;">
                                                    Nama Proses<span style="color: red">*</span>
                                                </div>
                                                <div class="col-md-4">
                                                    <input type="text" 
                                                       class="form-control" 
                                                       name="description"
                                                       id="descriptionLectors"
                                                       placeholder="Nama Proses" 
                                                       required="" />
                                                </div>
                                            </div>
                                            <br>
                                            <div class="row">
                                                <div class="col-md-2">
                                                    <input type="submit" 
                                                           value="Simpan"
                                                           class="form-control-submit"/>
                                                </div>
                                                <div class="col-md-2">
                                                    <input type="reset"
                                                           id="resetLectors"
                                                           value="Reset"
                                                           class="form-control-submit"/>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="table-responsive">
                                            <table class="table table-hover" id="tableProgressLectors">
                                                <thead>
                                                    <th>Urutan Proses</th>
                                                    <th>Deskripsi Proses</th>
                                                    <th colspan="2">Aksi</th>
                                                </thead>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" 
                                 id="tab4">
                                <div class="row">
                                    <div class="col-md-12">
                                        <form action="saveDetailProgressHeadlectors.htm"
                                                id="formDetailProgressHeadlectors"
                                                name="progressHeadlectors"
                                                method="POST">
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <input type="hidden" 
                                                       name="idDetail"
                                                       id="idDetailHeadlectors"
                                                       value="0"/>
                                                </div>
                                                <div class="col-md-4">
                                                    <input type="hidden" 
                                                       name="idEvent"
                                                       value="4"/>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-2" style="margin-top: 7px;">
                                                    Urutan Proses<span style="color: red">*</span>
                                                </div>
                                                <div class="col-md-4">
                                                    <input type="text" 
                                                       class="form-control"
                                                       readonly="true"
                                                       name="numberRequirement"
                                                       id="numberRequirementHeadlectors"
                                                       placeholder="Urutan Proses" 
                                                       required="" />
                                                </div>
                                            </div>
                                            <br>
                                            <div class="row">
                                                <div class="col-md-2" style="margin-top: 7px;">
                                                    Nama Proses<span style="color: red">*</span>
                                                </div>
                                                <div class="col-md-4">
                                                    <input type="text" 
                                                       class="form-control" 
                                                       name="description"
                                                       id="descriptionHeadlectors"
                                                       placeholder="Nama Proses" 
                                                       required="" />
                                                </div>
                                            </div>
                                            <br>
                                            <div class="row">
                                                <div class="col-md-2">
                                                    <input type="submit" 
                                                           value="Simpan"
                                                           class="form-control-submit"/>
                                                </div>
                                                <div class="col-md-2">
                                                    <input type="reset"
                                                           id="resetHeadlectors"
                                                           value="Reset"
                                                           class="form-control-submit"/>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="table-responsive">
                                            <table class="table table-hover" id="tableProgressHeadlectors">
                                                <thead>
                                                    <th>Urutan Proses</th>
                                                    <th>Deskripsi Proses</th>
                                                    <th>Aksi</th>
                                                </thead>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" 
                                 id="tab5">
                                <div class="row">
                                    <div class="col-md-12">
                                        <form action="saveDetailProgressProfessor.htm"
                                                id="formDetailProgressProfessor"
                                                name="progressProfessor"
                                                method="POST">
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <input type="hidden" 
                                                       name="idDetail"
                                                       id="idDetailProfessor"
                                                       value="0"/>
                                                </div>
                                                <div class="col-md-4">
                                                    <input type="hidden" 
                                                       name="idEvent"
                                                       value="5"/>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-2" style="margin-top: 7px;">
                                                    Urutan Proses<span style="color: red">*</span>
                                                </div>
                                                <div class="col-md-4">
                                                    <input type="text" 
                                                       class="form-control"
                                                       readonly="true"
                                                       name="numberRequirement"
                                                       id="numberRequirementProfessor"
                                                       placeholder="Urutan Proses" 
                                                       required="" />
                                                </div>
                                            </div>
                                            <br>
                                            <div class="row">
                                                <div class="col-md-2" style="margin-top: 7px;">
                                                    Nama Proses<span style="color: red">*</span>
                                                </div>
                                                <div class="col-md-4">
                                                    <input type="text" 
                                                       class="form-control" 
                                                       name="description"
                                                       id="descriptionProfessor"
                                                       placeholder="Nama Proses" 
                                                       required="" />
                                                </div>
                                            </div>
                                            <br>
                                            <div class="row">
                                                <div class="col-md-2">
                                                    <input type="submit" 
                                                           value="Simpan"
                                                           class="form-control-submit"/>
                                                </div>
                                                <div class="col-md-2">
                                                    <input type="reset"
                                                           id="resetProfessor"
                                                           value="Reset"
                                                           class="form-control-submit"/>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="table-responsive">
                                            <table class="table table-hover" id="tableProgressProfessor">
                                                <thead>
                                                    <th>Urutan Proses</th>
                                                    <th>Deskripsi Proses</th>
                                                    <th>Aksi</th>
                                                </thead>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" 
                                 id="tab6">
                                <div class="row">
                                    <div class="col-md-12">
                                        <form action="saveDetailProgressSertification.htm"
                                                id="formDetailProgressSertification"
                                                name="progressSertification"
                                                method="POST">
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <input type="hidden" 
                                                       name="idDetail"
                                                       id="idDetailSertification"
                                                       value="0"/>
                                                </div>
                                                <div class="col-md-4">
                                                    <input type="hidden" 
                                                       name="idEvent"
                                                       value="6"/>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-2" style="margin-top: 7px;">
                                                    Urutan Proses<span style="color: red">*</span>
                                                </div>
                                                <div class="col-md-4">
                                                    <input type="text" 
                                                       class="form-control"
                                                       readonly="true"
                                                       name="numberRequirement"
                                                       id="numberRequirementSertification"
                                                       placeholder="Urutan Proses" 
                                                       required="" />
                                                </div>
                                            </div>
                                            <br>
                                            <div class="row">
                                                <div class="col-md-2" style="margin-top: 7px;">
                                                    Nama Proses<span style="color: red">*</span>
                                                </div>
                                                <div class="col-md-4">
                                                    <input type="text" 
                                                       class="form-control" 
                                                       name="description"
                                                       id="descriptionSertification"
                                                       placeholder="Nama Proses" 
                                                       required="" />
                                                </div>
                                            </div>
                                            <br>
                                            <div class="row">
                                                <div class="col-md-2">
                                                    <input type="submit" 
                                                           value="Simpan"
                                                           class="form-control-submit"/>
                                                </div>
                                                <div class="col-md-2">
                                                    <input type="button"
                                                           id="resetSertification"
                                                           value="Reset"
                                                           class="form-control-submit"/>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="table-responsive">
                                            <table class="table table-hover" id="tableProgressSertification">
                                                <thead>
                                                    <th>Urutan Proses</th>
                                                    <th>Deskripsi Proses</th>
                                                    <th colspan="2">Aksi</th>
                                                </thead>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="clearfix"> </div>
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
                            <span>Pengaturan</span>
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
                var countDetailNidn=0;
                var countDetailAssistant=0;
                var countDetailLectors=0;
                var countDetailHeadlectors=0;
                var countDetailProfessor=0;
                var countDetailSertification=0;
                
                reloadDetailProgressNidn();
                reloadDetailProgressAssistant();
                reloadDetailProgressLectors();
                reloadDetailProgressHeadlectors();
                reloadDetailProgressProfessor();
                reloadDetailProgressSertification();
                
                var tableProgressNidn = $('#tableProgressNidn').DataTable({
                    columns: [
                        { data: 'numberRequirement', sortable: false},
                        { data: 'description'},
                        { data: null, sortable: false,
                            render : function(data, type, full) {
                                if (data.numberRequirement === countDetailNidn) {
                                    return '<button id="update"><span class="fa fa-pencil"></span></button> \n\
                                        <button id="delete"><span class="fa fa-trash"></span></button>';
                                } else {
                                    return '<button id="update"><span class="fa fa-pencil"></span></button>';
                                }
                            }
                        }    
                    ]
                });
                
                var tableProgressAssistant = $('#tableProgressAssistant').DataTable({
                    columns: [
                        { data: 'numberRequirement', sortable: false},
                        { data: 'description'},
                        { data: null, sortable: false,
                            render : function(data, type, full) {
                                if (data.numberRequirement === countDetailAssistant) {
                                    return '<button id="update"><span class="fa fa-pencil"></span></button> \n\
                                        <button id="delete"><span class="fa fa-trash"></span></button>';
                                } else {
                                    return '<button id="update"><span class="fa fa-pencil"></span></button>';
                                }
                            }
                        }    
                    ]
                });
                
                var tableProgressLectors = $('#tableProgressLectors').DataTable({
                    columns: [
                        { data: 'numberRequirement', sortable: false},
                        { data: 'description'},
                        { data: null, sortable: false,
                            render : function(data, type, full) {
                                if (data.numberRequirement === countDetailLectors) {
                                    return '<button id="update"><span class="fa fa-pencil"></span></button> \n\
                                        <button id="delete"><span class="fa fa-trash"></span></button>';
                                } else {
                                    return '<button id="update"><span class="fa fa-pencil"></span></button>';
                                }
                            }
                        }    
                    ]
                });
                
                var tableProgressHeadlectors = $('#tableProgressHeadlectors').DataTable({
                    columns: [
                        { data: 'numberRequirement', sortable: false},
                        { data: 'description'},
                        { data: null, sortable: false,
                            render : function(data, type, full) {
                                if (data.numberRequirement === countDetailHeadlectors) {
                                    return '<button id="update"><span class="fa fa-pencil"></span></button> \n\
                                        <button id="delete"><span class="fa fa-trash"></span></button>';
                                } else {
                                    return '<button id="update"><span class="fa fa-pencil"></span></button>';
                                }
                            }
                        }    
                    ]
                });
                
                var tableProgressProfessor = $('#tableProgressProfessor').DataTable({
                    columns: [
                        { data: 'numberRequirement', sortable: false},
                        { data: 'description'},
                        { data: null, sortable: false,
                            render : function(data, type, full) {
                                if (data.numberRequirement === countDetailProfessor) {
                                    return '<button id="update"><span class="fa fa-pencil"></span></button> \n\
                                        <button id="delete"><span class="fa fa-trash"></span></button>';
                                } else {
                                    return '<button id="update"><span class="fa fa-pencil"></span></button>';
                                }
                            }
                        }    
                    ]
                });
                
                var tableProgressSertification = $('#tableProgressSertification').DataTable({
                    columns: [
                        { data: 'numberRequirement', sortable: false},
                        { data: 'description'},
                        { data: null, sortable: false,
                            render : function(data, type, full) {
                                if (data.numberRequirement === countDetailSertification) {
                                    return '<button id="update"><span class="fa fa-pencil"></span></button> \n\
                                        <button id="delete"><span class="fa fa-trash"></span></button>';
                                } else {
                                    return '<button id="update"><span class="fa fa-pencil"></span></button>';
                                }
                            }
                        }    
                    ]
                });
                
                function reloadDetailProgressNidn(){
                    $.ajax({
                        url : 'getDetailProgressNidn.htm',
                        type: 'GET',
                        success : function(response) {
                            var data = JSON.parse(response);
                            console.log(data);
                            var len = data.length;
                            countDetailNidn = len;
                            $('input[id=numberRequirementNidn]').val(countDetailNidn + 1);
                            tableProgressNidn.rows.add(data).draw();
                        }
                    });
                }
                
                function reloadDetailProgressAssistant(){
                    $.ajax({
                        url : 'getDetailProgressAssistant.htm',
                        type: 'GET',
                        success : function(response) {
                            var data = JSON.parse(response);
                            console.log(data);
                            var len = data.length;
                            countDetailAssistant = len;
                            $('input[id=numberRequirementAssistant]').val(countDetailAssistant + 1);
                            tableProgressAssistant.rows.add(data).draw();
                        }
                    });
                }
                
                function reloadDetailProgressLectors(){
                    $.ajax({
                        url : 'getDetailProgressLectors.htm',
                        type: 'GET',
                        success : function(response) {
                            var data = JSON.parse(response);
                            console.log(data);
                            var len = data.length;
                            countDetailLectors = len;
                            $('input[id=numberRequirementLectors]').val(countDetailLectors + 1);
                            tableProgressLectors.rows.add(data).draw();
                        }
                    });
                }
                
                function reloadDetailProgressHeadlectors(){
                    $.ajax({
                        url : 'getDetailProgressHeadlectors.htm',
                        type: 'GET',
                        success : function(response) {
                            var data = JSON.parse(response);
                            console.log(data);
                            var len = data.length;
                            countDetailHeadlectors = len;
                            $('input[id=numberRequirementHeadlectors]').val(countDetailHeadlectors + 1);
                            tableProgressHeadlectors.rows.add(data).draw();
                        }
                    });
                }
                
                function reloadDetailProgressProfessor(){
                    $.ajax({
                        url : 'getDetailProgressProfessor.htm',
                        type: 'GET',
                        success : function(response) {
                            var data = JSON.parse(response);
                            console.log(data);
                            var len = data.length;
                            countDetailProfessor = len;
                            $('input[id=numberRequirementProfessor]').val(countDetailProfessor + 1);
                            tableProgressProfessor.rows.add(data).draw();
                        }
                    });
                }
                
                function reloadDetailProgressSertification(){
                    $.ajax({
                        url : 'getDetailProgressSertification.htm',
                        type: 'GET',
                        success : function(response) {
                            var data = JSON.parse(response);
                            console.log(data);
                            var len = data.length;
                            countDetailSertification = len;
                            $('input[id=numberRequirementSertification]').val(countDetailSertification + 1);
                            tableProgressSertification.rows.add(data).draw();
                        }
                    });
                }
                
                $('#tableProgressNidn tbody').on('click', 'button#update', function () {
                    var data = tableProgressNidn.row(this.closest('tr')).data();
                    $('input[id=idDetailNidn]').val(data.idDetail);
                    $('input[id=descriptionNidn]').val(data.description);
                    $('input[id=numberRequirementNidn]').val(data.numberRequirement);                            
                });
                
                $('#tableProgressAssistant tbody').on('click', 'button#update', function () {
                    var data = tableProgressAssistant.row(this.closest('tr')).data();
                    $('input[id=idDetailAssistant]').val(data.idDetail);
                    $('input[id=descriptionAssistant]').val(data.description);
                    $('input[id=numberRequirementAssistant]').val(data.numberRequirement);                            
                });
                
                $('#tableProgressLectors tbody').on('click', 'button#update', function () {
                    var data = tableProgressLectors.row(this.closest('tr')).data();
                    $('input[id=idDetailLectors]').val(data.idDetail);
                    $('input[id=descriptionLectors]').val(data.description);
                    $('input[id=numberRequirementLectors]').val(data.numberRequirement);                            
                });
                
                $('#tableProgressHeadlectors tbody').on('click', 'button#update', function () {
                    var data = tableProgressHeadlectors.row(this.closest('tr')).data();
                    $('input[id=idDetailHeadlectors]').val(data.idDetail);
                    $('input[id=descriptionHeadlectors]').val(data.description);
                    $('input[id=numberRequirementHeadlectors]').val(data.numberRequirement);                            
                });
                
                $('#tableProgressProfessor tbody').on('click', 'button#update', function () {
                    var data = tableProgressProfessor.row(this.closest('tr')).data();
                    $('input[id=idDetailProfessor]').val(data.idDetail);
                    $('input[id=descriptionProfessor]').val(data.description);
                    $('input[id=numberRequirementProfessor]').val(data.numberRequirement);                            
                });
                
                $('#tableProgressSertification tbody').on('click', 'button#update', function () {
                    var data = tableProgressSertification.row(this.closest('tr')).data();
                    $('input[id=idDetailSertification]').val(data.idDetail);
                    $('input[id=descriptionSertification]').val(data.description);
                    $('input[id=numberRequirementSertification]').val(data.numberRequirement);                            
                });
                
                $('#tableProgressNidn tbody').on('click', 'button#delete', function () {
                    var data = tableProgressNidn.row(this.closest('tr')).data();
                    $.ajax({
                        url: "deleteDetailProgress.htm",
                        data: "idDetail=" + data.idDetail,
                        daraType: "form-data",
                        type: 'GET',
                        success : function(response){
                            $(function(){
                                $.growl.notice({title: "Berhasil !", message: "Data berhasil dihapus !" });
                            });
                            $('#formDetailProgressNidn').trigger('reset');
                            tableProgressNidn.clear().draw();
                            reloadDetailProgressNidn();
                        }
                    });
                });
                
                $('#tableProgressAssistant tbody').on('click', 'button#delete', function () {
                    var data = tableProgressAssistant.row(this.closest('tr')).data();
                    $.ajax({
                        url: "deleteDetailProgress.htm",
                        data: "idDetail=" + data.idDetail,
                        daraType: "form-data",
                        type: 'GET',
                        success : function(response){
                            $(function(){
                                $.growl.notice({title: "Berhasil !", message: "Data berhasil dihapus !" });
                            });
                            $('#formDetailProgressAssistant').trigger('reset');
                            tableProgressAssistant.clear().draw();
                            reloadDetailProgressAssistant();
                        }
                    });
                });
                
                $('#tableProgressLectors tbody').on('click', 'button#delete', function () {
                    var data = tableProgressLectors.row(this.closest('tr')).data();
                    $.ajax({
                        url: "deleteDetailProgress.htm",
                        data: "idDetail=" + data.idDetail,
                        daraType: "form-data",
                        type: 'GET',
                        success : function(response){
                            $(function(){
                                $.growl.notice({title: "Berhasil !", message: "Data berhasil dihapus !" });
                            });
                            $('#formDetailProgressLectors').trigger('reset');
                            tableProgressLectors.clear().draw();
                            reloadDetailProgressLectors();
                        }
                    });
                });
                
                $('#tableProgressHeadlectors tbody').on('click', 'button#delete', function () {
                    var data = tableProgressHeadlectors.row(this.closest('tr')).data();
                    $.ajax({
                        url: "deleteDetailProgress.htm",
                        data: "idDetail=" + data.idDetail,
                        daraType: "form-data",
                        type: 'GET',
                        success : function(response){
                            $(function(){
                                $.growl.notice({title: "Berhasil !", message: "Data berhasil dihapus !" });
                            });
                            $('#formDetailProgressHeadlectors').trigger('reset');
                            tableProgressHeadlectors.clear().draw();
                            reloadDetailProgressHeadlectors();
                        }
                    });
                });
                
                $('#tableProgressProfessor tbody').on('click', 'button#delete', function () {
                    var data = tableProgressProfessor.row(this.closest('tr')).data();
                    $.ajax({
                        url: "deleteDetailProgress.htm",
                        data: "idDetail=" + data.idDetail,
                        daraType: "form-data",
                        type: 'GET',
                        success : function(response){
                            $(function(){
                                $.growl.notice({title: "Berhasil !", message: "Data berhasil dihapus !" });
                            });
                            $('#formDetailProgressProfessor').trigger('reset');
                            tableProgressProfessor.clear().draw();
                            reloadDetailProgressProfessor();
                        }
                    });
                });
                
                $('#tableProgressSertification tbody').on('click', 'button#delete', function () {
                    var data = tableProgressSertification.row(this.closest('tr')).data();
                    $.ajax({
                        url: "deleteDetailProgress.htm",
                        data: "idDetail=" + data.idDetail,
                        daraType: "form-data",
                        type: 'GET',
                        success : function(response){
                            $(function(){
                                $.growl.notice({title: "Berhasil !", message: "Data berhasil dihapus !" });
                            });
                            $('#formDetailProgressSertification').trigger('reset');
                            tableProgressSertification.clear().draw();
                            reloadDetailProgressSertification();
                        }
                    });
                });
                
                $('#formDetailProgressNidn').submit(function(e){
                    e.preventDefault();
                    $.post({
                        url: "saveDetailProgress.htm",
                        data: $('#formDetailProgressNidn').serialize(),
                        dataType: "form-data",
                        error: function(){
                            $(function(){
                                $.growl.notice({title: "Berhasil !", message: "Data berhasil ditambahkan !" });
                            });
                            $('input[id=idDetailNidn]').val(0);
                            $('#formDetailProgressNidn').trigger('reset');
                            tableProgressNidn.clear().draw();
                            reloadDetailProgressNidn();
                        }
                    });
                });
                
                $('#formDetailProgressAssistant').submit(function(e){
                    e.preventDefault();
                    $.post({
                        url: "saveDetailProgress.htm",
                        data: $('#formDetailProgressAssistant').serialize(),
                        dataType: "form-data",
                        error: function(){
                            $(function(){
                                $.growl.notice({title: "Berhasil !", message: "Data berhasil ditambahkan !" });
                            });
                            $('input[id=idDetailAssistant]').val(0);
                            $('#formDetailProgressAssistant').trigger('reset');
                            tableProgressAssistant.clear().draw();
                            reloadDetailProgressAssistant();
                        }
                    });
                });
                
                $('#formDetailProgressLectors').submit(function(e){
                    e.preventDefault();
                    $.post({
                        url: "saveDetailProgress.htm",
                        data: $('#formDetailProgressLectors').serialize(),
                        dataType: "form-data",
                        error: function(){
                            $(function(){
                                $.growl.notice({title: "Berhasil !", message: "Data berhasil ditambahkan !" });
                            });
                            $('input[id=idDetailLectors]').val(0);
                            $('#formDetailProgressLectors').trigger('reset');
                            tableProgressLectors.clear().draw();
                            reloadDetailProgressLectors();
                        }
                    });
                });
                
                $('#formDetailProgressHeadlectors').submit(function(e){
                    e.preventDefault();
                    $.post({
                        url: "saveDetailProgress.htm",
                        data: $('#formDetailProgressHeadlectors').serialize(),
                        dataType: "form-data",
                        error: function(){
                            $(function(){
                                $.growl.notice({title: "Berhasil !", message: "Data berhasil ditambahkan !" });
                            });
                            $('input[id=idDetailHeadlectors]').val(0);
                            $('#formDetailProgressHeadlectors').trigger('reset');
                            tableProgressHeadlectors.clear().draw();
                            reloadDetailProgressHeadlectors();
                        }
                    });
                });
                
                $('#formDetailProgressProfessor').submit(function(e){
                    e.preventDefault();
                    $.post({
                        url: "saveDetailProgress.htm",
                        data: $('#formDetailProgressProfessor').serialize(),
                        dataType: "form-data",
                        error: function(){
                            $(function(){
                                $.growl.notice({title: "Berhasil !", message: "Data berhasil ditambahkan !" });
                            });
                            $('input[id=idDetailProfessor]').val(0);
                            $('#formDetailProgressProfessor').trigger('reset');
                            tableProgressProfessor.clear().draw();
                            reloadDetailProgressProfessor();
                        }
                    });
                });
                
                $('#formDetailProgressSertification').submit(function(e){
                    e.preventDefault();
                    $.post({
                        url: "saveDetailProgress.htm",
                        data: $('#formDetailProgressSertification').serialize(),
                        dataType: "form-data",
                        error: function(){
                            $(function(){
                                $.growl.notice({title: "Berhasil !", message: "Data berhasil ditambahkan !" });
                            });
                            $('input[id=idDetaiSertification]').val(0);
                            $('#formDetailProgressSertification').trigger('reset');
                            tableProgressSertification.clear().draw();
                            reloadDetailProgressSertification();
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
