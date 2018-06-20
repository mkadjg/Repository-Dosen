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
                <script type="text/javascript">
                    $(document).ready(function() {
			$(window).scroll(function() {
                            var scrollpos=$(window).scrollTop(); 
                            if(scrollpos){
                                $(".header-main").addClass("fixed");
                            }else{
                                $(".header-main").removeClass("fixed");
                            }
			 });
                    });
		</script>
                
                <div class="col-md-12" style="padding: 20px">         
                    <div class="horizontal-tab">
                        <ul class="nav nav-tabs">
                            <li class="">
                                <a href="#tab1" 
                                   data-toggle="tab" 
                                   aria-expanded="true">
                                    Perekrutan Dosen
                                </a>
                            </li>
                            <li class="">
                                <a href="#tab2" 
                                   data-toggle="tab" 
                                   aria-expanded="false">
                                    Pengajuan NIDN
                                </a>
                            </li>
                            <li class="">
                                <a href="#tab3" 
                                   data-toggle="tab" 
                                   aria-expanded="false">
                                    Asisten Ahli
                                </a>
                            </li>
                            <li class="">
                                <a href="#tab4" 
                                   data-toggle="tab" 
                                   aria-expanded="false">
                                    Lektor
                                </a>
                            </li>
                            <li class="">
                                <a href="#tab5" 
                                   data-toggle="tab" 
                                   aria-expanded="false">
                                    Lektor Kepala
                                </a>
                            </li>
                            <li class="">
                                <a href="#tab6" 
                                   data-toggle="tab" 
                                   aria-expanded="false">
                                    Guru Besar
                                </a>
                            </li>
                            <li class="">
                                <a href="#tab7" 
                                   data-toggle="tab" 
                                   aria-expanded="false">
                                    Sertifikasi Dosen
                                </a>
                            </li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane" 
                             id="tab1">
                            <br>
                            <div class="row">
                                <div class="col-md-12">
                                    <form action="saveDetailFileRecruitment.htm"
                                            id="formDetailFileRecruitment"
                                            name="fileRecruitment"
                                            method="POST">
                                        <div class="row">
                                            <div class="col-md-4">
                                                <input type="hidden" 
                                                   name="idDetail"
                                                   id="idDetailRecruitment"
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
                                                Nama Dokumen<span style="color: red">*</span>
                                            </div>
                                            <div class="col-md-4">
                                                <input type="text" 
                                                   class="form-control" 
                                                   name="nameDokumen"
                                                   id="recruitment"
                                                   placeholder="Nama Dokumen" 
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
                                                       value="Reset"
                                                       id="resetRecruitment"
                                                       class="form-control-submit"/>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <br>
                            <br>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="row">
                                        <div class="col-md-offset-8 col-md-3">
                                            <input type="search"
                                                   name="nameSearchRecruitment"
                                                       placeholder="Search..."
                                                       class="form-control"
                                                       required="">
                                        </div>
                                        <div class="col-md-1" align="left">
                                            <button id="searchRecruitment" 
                                                style="padding-top: 7px; border-radius:5px " >
                                                <span class="glyphicon glyphicon-search"></span>
                                            </button>
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="table-responsive">
                                        <table class="table table-hover">
                                            <thead>
                                                <tr>
                                                    <th>Nomor</th>
                                                    <th>Nama Dokumen</th>
                                                    <th colspan="2">Aksi</th>
                                                </tr>
                                            </thead>
                                            <tbody id="tableBodyFileRecruitment">

                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>    
                        </div>
                        <div class="tab-pane" 
                             id="tab2">
                            <br>
                            <div class="row">
                                <div class="col-md-12">
                                    <form action="saveDetailFileNidn.htm"
                                            id="formDetailFileNidn"
                                            name="fileNidn"
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
                                                   value="6"/>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-2" style="margin-top: 7px;">
                                                Nama Dokumen<span style="color: red">*</span>
                                            </div>
                                            <div class="col-md-4">
                                                <input type="text" 
                                                   class="form-control" 
                                                   name="nameDokumen"
                                                   id="nidn"
                                                   placeholder="Nama Dokumen" 
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
                            <br>
                            <br>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="row">
                                        <div class="col-md-offset-8 col-md-3">
                                            <input type="search"
                                                   name="nameSearchNidn"
                                                       placeholder="Search..."
                                                       class="form-control"
                                                       required="">
                                        </div>
                                        <div class="col-md-1" align="left">
                                            <button id="searchNidn" 
                                                style="padding-top: 7px; border-radius:5px " >
                                                <span class="glyphicon glyphicon-search"></span>
                                            </button>
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="table-responsive">
                                        <table class="table table-hover">
                                            <thead>
                                                <tr>
                                                    <th>Nomor</th>
                                                    <th>Nama Dokumen</th>
                                                    <th colspan="2">Aksi</th>
                                                </tr>
                                            </thead>
                                            <tbody id="tableBodyFileNidn">

                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane" 
                             id="tab3">
                            <br>
                            <div class="row">
                                <div class="col-md-12">
                                    <form action="saveDetailFileAssistant.htm"
                                            id="formDetailFileAssistant"
                                            name="fileAssistant"
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
                                                   value="7"/>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-2" style="margin-top: 7px;">
                                                Nama Dokumen<span style="color: red">*</span>
                                            </div>
                                            <div class="col-md-4">
                                                <input type="text" 
                                                   class="form-control" 
                                                   name="nameDokumen"
                                                   id="assistant"
                                                   placeholder="Nama Dokumen" 
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
                            <br>
                            <br>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="row">
                                        <div class="col-md-offset-8 col-md-3">
                                            <input type="search"
                                                   name="nameSearchAssistant"
                                                       placeholder="Search..."
                                                       class="form-control"
                                                       required="">
                                        </div>
                                        <div class="col-md-1" align="left">
                                            <button id="searchAssistant" 
                                                style="padding-top: 7px; border-radius:5px " >
                                                <span class="glyphicon glyphicon-search"></span>
                                            </button>
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="table-responsive">
                                        <table class="table table-hover">
                                            <thead>
                                                <tr>
                                                    <th>Nomor</th>
                                                    <th>Nama Dokumen</th>
                                                    <th colspan="2">Aksi</th>
                                                </tr>
                                            </thead>
                                            <tbody id="tableBodyFileAssistant">

                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane" 
                             id="tab4">
                            <br>
                            <div class="row">
                                <div class="col-md-12">
                                    <form action="saveDetailFileLectors.htm"
                                            id="formDetailFileLectors"
                                            name="fileLectors"
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
                                                   value="8"/>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-2" style="margin-top: 7px;">
                                                Nama Dokumen<span style="color: red">*</span>
                                            </div>
                                            <div class="col-md-4">
                                                <input type="text" 
                                                   class="form-control" 
                                                   name="nameDokumen"
                                                   id="lectors"
                                                   placeholder="Nama Dokumen" 
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
                            <br>
                            <br>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="row">
                                        <div class="col-md-offset-8 col-md-3">
                                            <input type="search"
                                                   name="nameSearchLectors"
                                                       placeholder="Search..."
                                                       class="form-control"
                                                       required="">
                                        </div>
                                        <div class="col-md-1" align="left">
                                            <button id="searchLectors" 
                                                style="padding-top: 7px; border-radius:5px " >
                                                <span class="glyphicon glyphicon-search"></span>
                                            </button>
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="table-responsive">
                                        <table class="table table-hover">
                                            <thead>
                                                <tr>
                                                    <th>Nomor</th>
                                                    <th>Nama Dokumen</th>
                                                    <th colspan="2">Aksi</th>
                                                </tr>
                                            </thead>
                                            <tbody id="tableBodyFileLectors">

                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane" 
                             id="tab5">
                            <br>
                            <div class="row">
                                <div class="col-md-12">
                                    <form action="saveDetailFileHeadlectors.htm"
                                            id="formDetailFileHeadlectors"
                                            name="fileHeadlectors"
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
                                                   value="9"/>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-2" style="margin-top: 7px;">
                                                Nama Dokumen<span style="color: red">*</span>
                                            </div>
                                            <div class="col-md-4">
                                                <input type="text" 
                                                   class="form-control" 
                                                   name="nameDokumen"
                                                   id="headlectors"
                                                   placeholder="Nama Dokumen" 
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
                            <br>
                            <br>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="row">
                                        <div class="col-md-offset-8 col-md-3">
                                            <input type="search"
                                                   name="nameSearchHeadlectors"
                                                       placeholder="Search..."
                                                       class="form-control"
                                                       required="">
                                        </div>
                                        <div class="col-md-1" align="left">
                                            <button id="searchHeadlectors" 
                                                style="padding-top: 7px; border-radius:5px " >
                                                <span class="glyphicon glyphicon-search"></span>
                                            </button>
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="table-responsive">
                                        <table class="table table-hover">
                                            <thead>
                                                <tr>
                                                    <th>Nomor</th>
                                                    <th>Nama Dokumen</th>
                                                    <th colspan="2">Aksi</th>
                                                </tr>
                                            </thead>
                                            <tbody id="tableBodyFileHeadlectors">

                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane" 
                             id="tab6">
                            <br>
                            <div class="row">
                                <div class="col-md-12">
                                    <form action="saveDetailFileProfessor.htm"
                                            id="formDetailFileProfessor"
                                            name="fileProfessor"
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
                                                   value="10"/>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-2" style="margin-top: 7px;">
                                                Nama Dokumen<span style="color: red">*</span>
                                            </div>
                                            <div class="col-md-4">
                                                <input type="text" 
                                                   class="form-control" 
                                                   name="nameDokumen"
                                                   id="professor"
                                                   placeholder="Nama Dokumen" 
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
                            <br>
                            <br>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="row">
                                        <div class="col-md-offset-8 col-md-3">
                                            <input type="search"
                                                   name="nameSearchProfessor"
                                                       placeholder="Search..."
                                                       class="form-control"
                                                       required="">
                                        </div>
                                        <div class="col-md-1" align="left">
                                            <button id="searchProfessor" 
                                                style="padding-top: 7px; border-radius:5px " >
                                                <span class="glyphicon glyphicon-search"></span>
                                            </button>
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="table-responsive">
                                        <table class="table table-hover">
                                            <thead>
                                                <tr>
                                                    <th>Nomor</th>
                                                    <th>Nama Dokumen</th>
                                                    <th colspan="2">Aksi</th>
                                                </tr>
                                            </thead>
                                            <tbody id="tableBodyFileProfessor">

                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane" 
                             id="tab7">
                            <br>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="row">
                                        <div class="col-md-offset-8 col-md-3">
                                            <input type="search"
                                                   name="nameSearchSertification"
                                                       placeholder="Search..."
                                                       class="form-control"
                                                       required="">
                                        </div>
                                        <div class="col-md-1" align="left">
                                            <button id="searchSertification" 
                                                style="padding-top: 7px; border-radius:5px " >
                                                <span class="glyphicon glyphicon-search"></span>
                                            </button>
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="table-responsive">
                                        <table class="table table-hover">
                                            <thead>
                                                <tr>
                                                    <th>Nomor</th>
                                                    <th>Nama Dokumen</th>
                                                </tr>
                                            </thead>
                                            <tbody id="tableBodyFileSertification">

                                            </tbody>
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
    <script type="text/javascript">
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
            reloadDetailFileRecruitment();
            reloadDetailFileNidn();
            reloadDetailFileAssistant();
            reloadDetailFileLectors();
            reloadDetailFileHeadlectors();
            reloadDetailFileProfessor();
            reloadDetailFileSertification();
            
            
            function reloadDetailFileRecruitment(){
                $.ajax({
                    url : 'getDetailFileRecruitment.htm',
                    type: 'GET',
                    success : function(response) {
                        var data = JSON.parse(response);
                        console.log(data);
                        var len = data.length;
                        var content = '';
                        for (var i = 0; i < len; i++){
                            content +=' <tr>\n\
                                            <td>' + (i + 1) + '</td>\n\
                                            <td class="nameDokumen">' + data[i].nameDokumen + '</td>\n\
                                            <td>\n\
                                                <input type="hidden" class="dataDetail" value="' + data[i].idDetail + '"/>\n\
                                                <a href="#"><span class="updateDetailFileRecruitment fa fa-pencil"></span></a>\n\
                                            </td>\n\
                                            <td>\n\
                                                <a href="#"><span class="deleteDetailFileRecruitment fa fa-trash"></span></a>\n\
                                            </td>\n\
                                        </tr>';
                            $('#tableBodyFileRecruitment').html(content);
                        }
                        
                        $('.updateDetailFileRecruitment').click(function(){
                            var nameDokumen = $(this).closest('tr').find('.nameDokumen').html();
                            var idDetail = $(this).closest('tr').find('.dataDetail').val();
                            $('input[id=idDetailRecruitment]').val(idDetail);
                            $('input[id=recruitment]').val(nameDokumen);
                        });
                        
                        $('.deleteDetailFileRecruitment').click(function(){
                            var idDetail = $(this).closest('tr').find('.dataDetail').val();
                            $.ajax({
                                url: "deleteDetailFile.htm",
                                data: "idDetail=" + idDetail,
                                type: 'GET',
                                success : function(response){
                                    $(function(){
                                        $.growl.notice({title: "Berhasil !", message: "Data berhasil dihapus !" });
                                    });
                                    reloadDetailFileRecruitment();
                                }
                            });
                        });
                    }
                });
            }
            
            function reloadDetailFileNidn(){
                $.ajax({
                    url : 'getDetailFileNidn.htm',
                    type: 'GET',
                    success : function(response) {
                        var data = JSON.parse(response);
                        console.log(data);
                        var len = data.length;
                        var content = '';
                        for (var i = 0; i < len; i++){
                            content +=' <tr>\n\
                                            <td>' + (i + 1) + '</td>\n\
                                            <td class="nameDokumen">' + data[i].nameDokumen + '</td>\n\
                                            <td>\n\
                                                <input type="hidden" class="dataDetail" value="' + data[i].idDetail + '"/>\n\
                                                <a href="#"><span class="updateDetailFileNidn fa fa-pencil"></span></a>\n\
                                            </td>\n\
                                            <td>\n\
                                                <a href="#"><span class="deleteDetailFileNidn fa fa-trash"></span></a>\n\
                                            </td>\n\
                                        </tr>';
                            $('#tableBodyFileNidn').html(content);
                        }
                        
                        $('.updateDetailFileNidn').click(function(){
                            var nameDokumen = $(this).closest('tr').find('.nameDokumen').html();
                            var idDetail = $(this).closest('tr').find('.dataDetail').val();
                            $('input[id=idDetailNidn]').val(idDetail);
                            $('input[id=nidn]').val(nameDokumen);
                        });
                        
                        $('.deleteDetailFileNidn').click(function(){
                            var idDetail = $(this).closest('tr').find('.dataDetail').val();
                            $.ajax({
                                url: "deleteDetailFile.htm",
                                data: "idDetail=" + idDetail,
                                type: 'GET',
                                success : function(response){
                                    $(function(){
                                        $.growl.notice({title: "Berhasil !", message: "Data berhasil dihapus !" });
                                    });
                                    reloadDetailFileNidn();
                                }
                            });
                        });
                    }
                });
            }
            
            function reloadDetailFileAssistant(){
                $.ajax({
                    url : 'getDetailFileAssistant.htm',
                    type: 'GET',
                    success : function(response) {
                        var data = JSON.parse(response);
                        console.log(data);
                        var len = data.length;
                        var content = '';
                        for (var i = 0; i < len; i++){
                            content +=' <tr>\n\
                                            <td>' + (i + 1) + '</td>\n\
                                            <td class="nameDokumen">' + data[i].nameDokumen + '</td>\n\
                                            <td>\n\
                                                <input type="hidden" class="dataDetail" value="' + data[i].idDetail + '"/>\n\
                                                <a href="#"><span class="updateDetailFileAssistant fa fa-pencil"></span></a>\n\
                                            </td>\n\
                                            <td>\n\
                                                <a href="#"><span class="deleteDetailFileAssistant fa fa-trash"></span></a>\n\
                                            </td>\n\
                                        </tr>';
                            $('#tableBodyFileAssistant').html(content);
                        }
                        
                        $('.updateDetailFileAssistant').click(function(){
                            var nameDokumen = $(this).closest('tr').find('.nameDokumen').html();
                            var idDetail = $(this).closest('tr').find('.dataDetail').val();
                            $('input[id=idDetailAssistant]').val(idDetail);
                            $('input[id=assistant]').val(nameDokumen);
                        });
                        
                        $('.deleteDetailFileAssistant').click(function(){
                            var idDetail = $(this).closest('tr').find('.dataDetail').val();
                            $.ajax({
                                url: "deleteDetailFile.htm",
                                data: "idDetail=" + idDetail,
                                type: 'GET',
                                success : function(response){
                                    $(function(){
                                        $.growl.notice({title: "Berhasil !", message: "Data berhasil dihapus !" });
                                    });
                                    reloadDetailFileAssistant();
                                }
                            });
                        });
                    }
                });
            }
            
            function reloadDetailFileLectors(){
                $.ajax({
                    url : 'getDetailFileLectors.htm',
                    type: 'GET',
                    success : function(response) {
                        var data = JSON.parse(response);
                        console.log(data);
                        var len = data.length;
                        var content = '';
                        for (var i = 0; i < len; i++){
                            content +=' <tr>\n\
                                            <td>' + (i + 1) + '</td>\n\
                                            <td class="nameDokumen">' + data[i].nameDokumen + '</td>\n\
                                            <td>\n\
                                                <input type="hidden" class="dataDetail" value="' + data[i].idDetail + '"/>\n\
                                                <a href="#"><span class="updateDetailFileLectors fa fa-pencil"></span></a>\n\
                                            </td>\n\
                                            <td>\n\
                                                <a href="#"><span class="deleteDetailFileLectors fa fa-trash"></span></a>\n\
                                            </td>\n\
                                        </tr>';
                            $('#tableBodyFileLectors').html(content);
                        }
                        
                        $('.updateDetailFileLectors').click(function(){
                            var nameDokumen = $(this).closest('tr').find('.nameDokumen').html();
                            var idDetail = $(this).closest('tr').find('.dataDetail').val();
                            $('input[id=idDetailLectors]').val(idDetail);
                            $('input[id=lectors]').val(nameDokumen);
                        });
                        
                        $('.deleteDetailFileLectors').click(function(){
                            var idDetail = $(this).closest('tr').find('.dataDetail').val();
                            $.ajax({
                                url: "deleteDetailFile.htm",
                                data: "idDetail=" + idDetail,
                                type: 'GET',
                                success : function(response){
                                    $(function(){
                                        $.growl.notice({title: "Berhasil !", message: "Data berhasil dihapus !" });
                                    });
                                    reloadDetailFileLectors();
                                }
                            });
                        });
                    }
                });
            }
            
            function reloadDetailFileHeadlectors(){
                $.ajax({
                    url : 'getDetailFileHeadlectors.htm',
                    type: 'GET',
                    success : function(response) {
                        var data = JSON.parse(response);
                        console.log(data);
                        var len = data.length;
                        var content = '';
                        for (var i = 0; i < len; i++){
                            content +=' <tr>\n\
                                            <td>' + (i + 1) + '</td>\n\
                                            <td class="nameDokumen">' + data[i].nameDokumen + '</td>\n\
                                            <td>\n\
                                                <input type="hidden" class="dataDetail" value="' + data[i].idDetail + '"/>\n\
                                                <a href="#"><span class="updateDetailFileHeadlectors fa fa-pencil"></span></a>\n\
                                            </td>\n\
                                            <td>\n\
                                                <a href="#"><span class="deleteDetailFileHeadlectors fa fa-trash"></span></a>\n\
                                            </td>\n\
                                        </tr>';
                            $('#tableBodyFileHeadlectors').html(content);
                        }
                        
                        $('.updateDetailFileHeadlectors').click(function(){
                            var nameDokumen = $(this).closest('tr').find('.nameDokumen').html();
                            var idDetail = $(this).closest('tr').find('.dataDetail').val();
                            $('input[id=idDetailHeadlectors]').val(idDetail);
                            $('input[id=headlectors]').val(nameDokumen);
                        });
                        
                        $('.deleteDetailFileHeadlectors').click(function(){
                            var idDetail = $(this).closest('tr').find('.dataDetail').val();
                            $.ajax({
                                url: "deleteDetailFile.htm",
                                data: "idDetail=" + idDetail,
                                type: 'GET',
                                success : function(response){
                                    $(function(){
                                        $.growl.notice({title: "Berhasil !", message: "Data berhasil dihapus !" });
                                    });
                                    reloadDetailFileHeadlectors();
                                }
                            });
                        });
                    }
                });
            }
            
            function reloadDetailFileProfessor(){
                $.ajax({
                    url : 'getDetailFileProfessor.htm',
                    type: 'GET',
                    success : function(response) {
                        var data = JSON.parse(response);
                        console.log(data);
                        var len = data.length;
                        var content = '';
                        for (var i = 0; i < len; i++){
                            content +=' <tr>\n\
                                            <td>' + (i + 1) + '</td>\n\
                                            <td class="nameDokumen">' + data[i].nameDokumen + '</td>\n\
                                            <td>\n\
                                                <input type="hidden" class="dataDetail" value="' + data[i].idDetail + '"/>\n\
                                                <a href="#"><span class="updateDetailFileProfessor fa fa-pencil"></span></a>\n\
                                            </td>\n\
                                            <td>\n\
                                                <a href="#"><span class="deleteDetailFileProfessor fa fa-trash"></span></a>\n\
                                            </td>\n\
                                        </tr>';
                            $('#tableBodyFileProfessor').html(content);
                        }
                        
                        $('.updateDetailFileProfessor').click(function(){
                            var nameDokumen = $(this).closest('tr').find('.nameDokumen').html();
                            var idDetail = $(this).closest('tr').find('.dataDetail').val();
                            $('input[id=idDetailProfessor]').val(idDetail);
                            $('input[id=professor]').val(nameDokumen);
                        });
                        
                        $('.deleteDetailFileProfessor').click(function(){
                            var idDetail = $(this).closest('tr').find('.dataDetail').val();
                            $.ajax({
                                url: "deleteDetailFile.htm",
                                data: "idDetail=" + idDetail,
                                type: 'GET',
                                success : function(response){
                                    $(function(){
                                        $.growl.notice({title: "Berhasil !", message: "Data berhasil dihapus !" });
                                    });
                                    reloadDetailFileProfessor();
                                }
                            });
                        });
                    }
                });
            }
            
            function reloadDetailFileSertification(){
                $.ajax({
                    url : 'getDetailFileSertification.htm',
                    type: 'GET',
                    success : function(response) {
                        var data = JSON.parse(response);
                        console.log(data);
                        var len = data.length;
                        var content = '';
                        for (var i = 0; i < len; i++){
                            content +=' <tr>\n\
                                            <td>' + (i + 1) + '</td>\n\
                                            <td class="nameDokumen">' + data[i].nameDokumen + '</td>\n\
                                        </tr>';
                            $('#tableBodyFileSertification').html(content);
                        }
                    }
                });
            }
            
            $('#formDetailFileRecruitment').submit(function(e){
                e.preventDefault();
                $.post({
                    url: "saveDetailFile.htm",
                    data: $('#formDetailFileRecruitment').serialize(),
                    dataType: "form-data",
                    error: function(){
                        $(function(){
                            $.growl.notice({title: "Berhasil !", message: "Data berhasil ditambahkan !" });
                        });
                        reloadDetailFileRecruitment();
                    }
                });
            });
            
            $('#formDetailFileNidn').submit(function(e){
                e.preventDefault();
                $.post({
                    url: "saveDetailFile.htm",
                    data: $('#formDetailFileNidn').serialize(),
                    dataType: "form-data",
                    error: function(){
                        $(function(){
                            $.growl.notice({title: "Berhasil !", message: "Data berhasil ditambahkan !" });
                        });
                        reloadDetailFileNidn();
                    }
                });
            });
            
            $('#formDetailFileAssistant').submit(function(e){
                e.preventDefault();
                $.post({
                    url: "saveDetailFile.htm",
                    data: $('#formDetailFileAssistant').serialize(),
                    dataType: "form-data",
                    error: function(){
                        $(function(){
                            $.growl.notice({title: "Berhasil !", message: "Data berhasil ditambahkan !" });
                        });
                        reloadDetailFileAssistant();
                    }
                });
            });
            
            $('#formDetailFileLectors').submit(function(e){
                e.preventDefault();
                $.post({
                    url: "saveDetailFile.htm",
                    data: $('#formDetailFileLectors').serialize(),
                    dataType: "form-data",
                    error: function(){
                        $(function(){
                            $.growl.notice({title: "Berhasil !", message: "Data berhasil ditambahkan !" });
                        });
                        reloadDetailFileLectors();
                    }
                });
            });
            
            $('#formDetailFileHeadlectors').submit(function(e){
                e.preventDefault();
                $.post({
                    url: "saveDetailFile.htm",
                    data: $('#formDetailFileHeadlectors').serialize(),
                    dataType: "form-data",
                    error: function(){
                        $(function(){
                            $.growl.notice({title: "Berhasil !", message: "Data berhasil ditambahkan !" });
                        });
                        reloadDetailFileHeadlectors();
                    }
                });
            });
            
            $('#formDetailFileProfessor').submit(function(e){
                e.preventDefault();
                $.post({
                    url: "saveDetailFile.htm",
                    data: $('#formDetailFileProfessor').serialize(),
                    dataType: "form-data",
                    error: function(){
                        $(function(){
                            $.growl.notice({title: "Berhasil !", message: "Data berhasil ditambahkan !" });
                        });
                        reloadDetailFileProfessor();
                    }
                });
            });
            
            $('#searchRecruitment').click(function(){
                var nameDokumen = $('input[name=nameSearchRecruitment]').val();
                var idEvent = "1";
                $.ajax({
                    url: "searchDetailFile.htm",
                    data: {nameDokumen: nameDokumen, idEvent: idEvent},
                    type: 'GET',
                    success: function(response){
                        var data = JSON.parse(response);
                        var len = data.length;
                        if (len === 0){
                            $(function(){
                                $.growl.warning({title: "Maaf !", message: "Data tidak ada" });
                            });
                        } else {
                            var content = '';
                            for (var i = 0; i < len; i++){
                                content +=' <tr>\n\
                                                <td>' + (i + 1) + '</td>\n\
                                                <td class="nameDokumen">' + data[i].nameDokumen + '</td>\n\
                                                <td>\n\
                                                    <input type="hidden" class="dataDetail" value="' + data[i].idDetail + '"/>\n\
                                                    <a href="#"><span class="updateDetailFileRecruitment fa fa-pencil"></span></a>\n\
                                                </td>\n\
                                                <td>\n\
                                                    <a href="#"><span class="deleteDetailFileRecruitment fa fa-trash"></span></a>\n\
                                                </td>\n\
                                            </tr>';
                                $('#tableBodyFileRecruitment').html(content);
                            }

                            $('.updateDetailFileRecruitment').click(function(){
                                var nameDokumen = $(this).closest('tr').find('.nameDokumen').html();
                                var idDetail = $(this).closest('tr').find('.dataDetail').val();
                                $('input[id=idDetailRecruitment]').val(idDetail);
                                $('input[id=recruitment]').val(nameDokumen);
                            });

                            $('.deleteDetailFileRecruitment').click(function(){
                                var idDetail = $(this).closest('tr').find('.dataDetail').val();
                                $.ajax({
                                    url: "deleteDetailFile.htm",
                                    data: "idDetail=" + idDetail,
                                    type: 'GET',
                                    success : function(response){
                                        $(function(){
                                            $.growl.notice({title: "Berhasil !", message: "Data berhasil dihapus !" });
                                        });
                                        reloadDetailFileRecruitment();
                                    }
                                });
                            });
                        }
                    }
                });
            });
            
            $('#searchNidn').click(function(){
                var nameDokumen = $('input[name=nameSearchNidn]').val();
                var idEvent = "6";
                $.ajax({
                    url: "searchDetailFile.htm",
                    data: {nameDokumen: nameDokumen, idEvent: idEvent},
                    type: 'GET',
                    success: function(response){
                        var data = JSON.parse(response);
                        var len = data.length;
                        if (len === 0){
                            $(function(){
                                $.growl.warning({title: "Maaf !", message: "Data tidak ada" });
                            });
                        } else {
                            var content = '';
                            for (var i = 0; i < len; i++){
                                content +=' <tr>\n\
                                                <td>' + (i + 1) + '</td>\n\
                                                <td class="nameDokumen">' + data[i].nameDokumen + '</td>\n\
                                                <td>\n\
                                                    <input type="hidden" class="dataDetail" value="' + data[i].idDetail + '"/>\n\
                                                    <a href="#"><span class="updateDetailFileNidn fa fa-pencil"></span></a>\n\
                                                </td>\n\
                                                <td>\n\
                                                    <a href="#"><span class="deleteDetailFileNidn fa fa-trash"></span></a>\n\
                                                </td>\n\
                                            </tr>';
                                $('#tableBodyFileNidn').html(content);
                            }

                            $('.updateDetailFileNidn').click(function(){
                                var nameDokumen = $(this).closest('tr').find('.nameDokumen').html();
                                var idDetail = $(this).closest('tr').find('.dataDetail').val();
                                $('input[id=idDetailNidn]').val(idDetail);
                                $('input[id=nidn]').val(nameDokumen);
                            });

                            $('.deleteDetailFileNidn').click(function(){
                                var idDetail = $(this).closest('tr').find('.dataDetail').val();
                                $.ajax({
                                    url: "deleteDetailFile.htm",
                                    data: "idDetail=" + idDetail,
                                    type: 'GET',
                                    success : function(response){
                                        $(function(){
                                            $.growl.notice({title: "Berhasil !", message: "Data berhasil dihapus !" });
                                        });
                                        reloadDetailFileNidn();
                                    }
                                });
                            });
                        }
                    }
                });
            });
            
            $('#searchAssistant').click(function(){
                var nameDokumen = $('input[name=nameSearchAssistant]').val();
                var idEvent = "7";
                $.ajax({
                    url: "searchDetailFile.htm",
                    data: {nameDokumen: nameDokumen, idEvent: idEvent},
                    type: 'GET',
                    success: function(response){
                        var data = JSON.parse(response);
                        var len = data.length;
                        if (len === 0){
                            $(function(){
                                $.growl.warning({title: "Maaf !", message: "Data tidak ada" });
                            });
                        } else {
                            var content = '';
                            for (var i = 0; i < len; i++){
                                content +=' <tr>\n\
                                                <td>' + (i + 1) + '</td>\n\
                                                <td class="nameDokumen">' + data[i].nameDokumen + '</td>\n\
                                                <td>\n\
                                                    <input type="hidden" class="dataDetail" value="' + data[i].idDetail + '"/>\n\
                                                    <a href="#"><span class="updateDetailFileAssistant fa fa-pencil"></span></a>\n\
                                                </td>\n\
                                                <td>\n\
                                                    <a href="#"><span class="deleteDetailFileAssistant fa fa-trash"></span></a>\n\
                                                </td>\n\
                                            </tr>';
                                $('#tableBodyFileAssistant').html(content);
                            }

                            $('.updateDetailFileAssistant').click(function(){
                                var nameDokumen = $(this).closest('tr').find('.nameDokumen').html();
                                var idDetail = $(this).closest('tr').find('.dataDetail').val();
                                $('input[id=idDetailAssistant]').val(idDetail);
                                $('input[id=assistant]').val(nameDokumen);
                            });

                            $('.deleteDetailFileAssistant').click(function(){
                                var idDetail = $(this).closest('tr').find('.dataDetail').val();
                                $.ajax({
                                    url: "deleteDetailFile.htm",
                                    data: "idDetail=" + idDetail,
                                    type: 'GET',
                                    success : function(response){
                                        $(function(){
                                            $.growl.notice({title: "Berhasil !", message: "Data berhasil dihapus !" });
                                        });
                                        reloadDetailFileAssistant();
                                    }
                                });
                            });
                        }
                    }
                });
            });
            
            $('#searchLectors').click(function(){
                var nameDokumen = $('input[name=nameSearchLectors]').val();
                var idEvent = "8";
                $.ajax({
                    url: "searchDetailFile.htm",
                    data: {nameDokumen: nameDokumen, idEvent: idEvent},
                    type: 'GET',
                    success: function(response){
                        var data = JSON.parse(response);
                        var len = data.length;
                        if (len === 0){
                            $(function(){
                                $.growl.warning({title: "Maaf !", message: "Data tidak ada" });
                            });
                        } else {
                            var content = '';
                            for (var i = 0; i < len; i++){
                                content +=' <tr>\n\
                                                <td>' + (i + 1) + '</td>\n\
                                                <td class="nameDokumen">' + data[i].nameDokumen + '</td>\n\
                                                <td>\n\
                                                    <input type="hidden" class="dataDetail" value="' + data[i].idDetail + '"/>\n\
                                                    <a href="#"><span class="updateDetailFileLectors fa fa-pencil"></span></a>\n\
                                                </td>\n\
                                                <td>\n\
                                                    <a href="#"><span class="deleteDetailFileLectors fa fa-trash"></span></a>\n\
                                                </td>\n\
                                            </tr>';
                                $('#tableBodyFileLectors').html(content);
                            }

                            $('.updateDetailFileLectors').click(function(){
                                var nameDokumen = $(this).closest('tr').find('.nameDokumen').html();
                                var idDetail = $(this).closest('tr').find('.dataDetail').val();
                                $('input[id=idDetailLectors]').val(idDetail);
                                $('input[id=assistant]').val(nameDokumen);
                            });

                            $('.deleteDetailFileLectors').click(function(){
                                var idDetail = $(this).closest('tr').find('.dataDetail').val();
                                $.ajax({
                                    url: "deleteDetailFile.htm",
                                    data: "idDetail=" + idDetail,
                                    type: 'GET',
                                    success : function(response){
                                        $(function(){
                                            $.growl.notice({title: "Berhasil !", message: "Data berhasil dihapus !" });
                                        });
                                        reloadDetailFileLectors();
                                    }
                                });
                            });
                        }
                    }
                });
            });
            
            $('#searchHeadlectors').click(function(){
                var nameDokumen = $('input[name=nameSearchHeadlectors]').val();
                var idEvent = "9";
                $.ajax({
                    url: "searchDetailFile.htm",
                    data: {nameDokumen: nameDokumen, idEvent: idEvent},
                    type: 'GET',
                    success: function(response){
                        var data = JSON.parse(response);
                        var len = data.length;
                        if (len === 0){
                            $(function(){
                                $.growl.warning({title: "Maaf !", message: "Data tidak ada" });
                            });
                        } else {
                            var content = '';
                            for (var i = 0; i < len; i++){
                                content +=' <tr>\n\
                                                <td>' + (i + 1) + '</td>\n\
                                                <td class="nameDokumen">' + data[i].nameDokumen + '</td>\n\
                                                <td>\n\
                                                    <input type="hidden" class="dataDetail" value="' + data[i].idDetail + '"/>\n\
                                                    <a href="#"><span class="updateDetailFileHeadlectors fa fa-pencil"></span></a>\n\
                                                </td>\n\
                                                <td>\n\
                                                    <a href="#"><span class="deleteDetailFileHeadlectors fa fa-trash"></span></a>\n\
                                                </td>\n\
                                            </tr>';
                                $('#tableBodyFileHeadlectors').html(content);
                            }

                            $('.updateDetailFileHeadlectors').click(function(){
                                var nameDokumen = $(this).closest('tr').find('.nameDokumen').html();
                                var idDetail = $(this).closest('tr').find('.dataDetail').val();
                                $('input[id=idDetailHeadlectors]').val(idDetail);
                                $('input[id=assistant]').val(nameDokumen);
                            });

                            $('.deleteDetailFileHeadlectors').click(function(){
                                var idDetail = $(this).closest('tr').find('.dataDetail').val();
                                $.ajax({
                                    url: "deleteDetailFile.htm",
                                    data: "idDetail=" + idDetail,
                                    type: 'GET',
                                    success : function(response){
                                        $(function(){
                                            $.growl.notice({title: "Berhasil !", message: "Data berhasil dihapus !" });
                                        });
                                        reloadDetailFileHeadlectors();
                                    }
                                });
                            });
                        }
                    }
                });
            });
            
            $('#searchProfessor').click(function(){
                var nameDokumen = $('input[name=nameSearchProfessor]').val();
                var idEvent = "10";
                $.ajax({
                    url: "searchDetailFile.htm",
                    data: {nameDokumen: nameDokumen, idEvent: idEvent},
                    type: 'GET',
                    success: function(response){
                        var data = JSON.parse(response);
                        var len = data.length;
                        if (len === 0){
                            $(function(){
                                $.growl.warning({title: "Maaf !", message: "Data tidak ada" });
                            });
                        } else {
                            var content = '';
                            for (var i = 0; i < len; i++){
                                content +=' <tr>\n\
                                                <td>' + (i + 1) + '</td>\n\
                                                <td class="nameDokumen">' + data[i].nameDokumen + '</td>\n\
                                                <td>\n\
                                                    <input type="hidden" class="dataDetail" value="' + data[i].idDetail + '"/>\n\
                                                    <a href="#"><span class="updateDetailFileProfessor fa fa-pencil"></span></a>\n\
                                                </td>\n\
                                                <td>\n\
                                                    <a href="#"><span class="deleteDetailFileProfessor fa fa-trash"></span></a>\n\
                                                </td>\n\
                                            </tr>';
                                $('#tableBodyFileProfessor').html(content);
                            }

                            $('.updateDetailFileProfessor').click(function(){
                                var nameDokumen = $(this).closest('tr').find('.nameDokumen').html();
                                var idDetail = $(this).closest('tr').find('.dataDetail').val();
                                $('input[id=idDetailProfessor]').val(idDetail);
                                $('input[id=assistant]').val(nameDokumen);
                            });

                            $('.deleteDetailFileProfessor').click(function(){
                                var idDetail = $(this).closest('tr').find('.dataDetail').val();
                                $.ajax({
                                    url: "deleteDetailFile.htm",
                                    data: "idDetail=" + idDetail,
                                    type: 'GET',
                                    success : function(response){
                                        $(function(){
                                            $.growl.notice({title: "Berhasil !", message: "Data berhasil dihapus !" });
                                        });
                                        reloadDetailFileProfessor();
                                    }
                                });
                            });
                        }
                    }
                });
            });
            
            $('#searchSertification').click(function(){
                var nameDokumen = $('input[name=nameSearchSertification]').val();
                var idEvent = "0";
                $.ajax({
                    url: "searchDetailFile.htm",
                    data: {nameDokumen: nameDokumen, idEvent: idEvent},
                    type: 'GET',
                    success: function(response){
                        var data = JSON.parse(response);
                        var len = data.length;
                        if (len === 0){
                            $(function(){
                                $.growl.warning({title: "Maaf !", message: "Data tidak ada" });
                            });
                        } else {
                            var content = '';
                            for (var i = 0; i < len; i++){
                                content +=' <tr>\n\
                                                <td>' + (i + 1) + '</td>\n\
                                                <td class="nameDokumen">' + data[i].nameDokumen + '</td>\n\
                                                <td>\n\
                                                    <input type="hidden" class="dataDetail" value="' + data[i].idDetail + '"/>\n\
                                                    <a href="#"><span class="updateDetailFileSertification fa fa-pencil"></span></a>\n\
                                                </td>\n\
                                                <td>\n\
                                                    <a href="#"><span class="deleteDetailFileSertification fa fa-trash"></span></a>\n\
                                                </td>\n\
                                            </tr>';
                                $('#tableBodyFileSertification').html(content);
                            }

                            $('.updateDetailFileSertification').click(function(){
                                var nameDokumen = $(this).closest('tr').find('.nameDokumen').html();
                                var idDetail = $(this).closest('tr').find('.dataDetail').val();
                                $('input[id=idDetailSertification]').val(idDetail);
                                $('input[id=assistant]').val(nameDokumen);
                            });

                            $('.deleteDetailFileSertification').click(function(){
                                var idDetail = $(this).closest('tr').find('.dataDetail').val();
                                $.ajax({
                                    url: "deleteDetailFile.htm",
                                    data: "idDetail=" + idDetail,
                                    type: 'GET',
                                    success : function(response){
                                        $(function(){
                                            $.growl.notice({title: "Berhasil !", message: "Data berhasil dihapus !" });
                                        });
                                        reloadDetailFileSertification();
                                    }
                                });
                            });
                        }
                    }
                });
            });
            
            $('#resetRecruitment').click(function(){
                $('input[id=idDetailRecruitment]').val(0);            
            });
            
            $('#resetNidn').click(function(){
                $('input[id=idDetailNidn]').val(0);            
            });
            
            $('#resetAssistant').click(function(){
                $('input[id=idDetailAssistant]').val(0);            
            });
            
            $('#resetLectors').click(function(){
                $('input[id=idDetailLectors]').val(0);            
            });
            
            $('#resetHeadlectors').click(function(){
                $('input[id=idDetailHeadlectors]').val(0);            
            });
            
            $('#resetProfesssor').click(function(){
                $('input[id=idDetailProfessor]').val(0);            
            });
            
        });
    </script>
    <script src="resource/js/jquery.nicescroll.js"></script>
    <script src="resource/js/scripts.js"></script>
    <script src="resource/js/bootstrap.js"> </script>
</body>
</html>                     
