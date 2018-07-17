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
                            <hr>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <table class="table table-hover" id="tableFileRecruitment">
                                            <thead>
                                                <th>Nomor</th>
                                                <th>Nama Dokumen</th>
                                                <th colspan="2">Aksi</th>
                                            </thead>
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
                            <hr>        
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <table class="table table-hover" id="tableFileNidn">
                                            <thead>
                                                <th>Nomor</th>
                                                <th>Nama Dokumen</th>
                                                <th colspan="2">Aksi</th>
                                            </thead>
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
                            <hr>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <table class="table table-hover" id="tableFileAssistant">
                                            <thead>
                                                <th>Nomor</th>
                                                <th>Nama Dokumen</th>
                                                <th colspan="2">Aksi</th>
                                            </thead>
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
                            <hr>    
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <table class="table table-hover" id="tableFileLectors">
                                            <thead>
                                                <th>Nomor</th>
                                                <th>Nama Dokumen</th>
                                                <th colspan="2">Aksi</th>
                                            </thead>
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
                            <hr>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <table class="table table-hover" id="tableFileHeadlectors">
                                            <thead>
                                                <th>Nomor</th>
                                                <th>Nama Dokumen</th>
                                                <th colspan="2">Aksi</th>
                                            </thead>
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
                            <hr>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <table class="table table-hover" id="tableFileProfessor">
                                            <thead>
                                                <th>Nomor</th>
                                                <th>Nama Dokumen</th>
                                                <th colspan="2">Aksi</th>
                                            </thead>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane" 
                             id="tab7">
                            <hr>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <table class="table table-hover" id="tableFileSertification">
                                            <thead>
                                                <th>Nomor</th>
                                                <th>Nama Dokumen</th>
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
            
            
            var tableFileRecruitment = $('#tableFileRecruitment').DataTable({
                columns: [
                    { data: null, sortable: false},
                    { data: 'nameDokumen'},
                    { data: null, sortable: false,
                      render : function(data, type, full) {
                        return '<button id="update"><span class="fa fa-pencil"></span></button> \n\
                                <button id="delete"><span class="fa fa-trash"></span></button>';}
                    }
                ]
            });
            
            var tableFileNidn = $('#tableFileNidn').DataTable({
                columns: [
                    { data: null, sortable: false},
                    { data: 'nameDokumen'},
                    { data: null, sortable: false,
                      render : function(data, type, full) {
                        return '<button id="update"><span class="fa fa-pencil"></span></button> \n\
                                <button id="delete"><span class="fa fa-trash"></span></button>';}
                    }
                ]
            });
            
            var tableFileAssistant = $('#tableFileAssistant').DataTable({
                columns: [
                    { data: null, sortable: false},
                    { data: 'nameDokumen'},
                    { data: null, sortable: false,
                      render : function(data, type, full) {
                        return '<button id="update"><span class="fa fa-pencil"></span></button> \n\
                                <button id="delete"><span class="fa fa-trash"></span></button>';}
                    }
                ]
            });
            
            var tableFileLectors = $('#tableFileLectors').DataTable({
                columns: [
                    { data: null, sortable: false},
                    { data: 'nameDokumen'},
                    { data: null, sortable: false,
                      render : function(data, type, full) {
                        return '<button id="update"><span class="fa fa-pencil"></span></button> \n\
                                <button id="delete"><span class="fa fa-trash"></span></button>';}
                    }
                ]
            });
            
            var tableFileHeadlectors = $('#tableFileHeadlectors').DataTable({
                columns: [
                    { data: null, sortable: false},
                    { data: 'nameDokumen'},
                    { data: null, sortable: false,
                      render : function(data, type, full) {
                        return '<button id="update"><span class="fa fa-pencil"></span></button> \n\
                                <button id="delete"><span class="fa fa-trash"></span></button>';}
                    }
                ]
            });
            
            var tableFileProfessor = $('#tableFileProfessor').DataTable({
                columns: [
                    { data: null, sortable: false},
                    { data: 'nameDokumen'},
                    { data: null, sortable: false,
                      render : function(data, type, full) {
                        return '<button id="update"><span class="fa fa-pencil"></span></button> \n\
                                <button id="delete"><span class="fa fa-trash"></span></button>';}
                    }
                ]
            });
            
            var tableFileSertification = $('#tableFileSertification').DataTable({
                columns: [
                    { data: null, sortable: false},
                    { data: 'nameDokumen'}
                ]
            });
            
            function reloadDetailFileRecruitment(){
                $.ajax({
                    url : 'getDetailFileRecruitment.htm',
                    type: 'GET',
                    success : function(response) {
                        var data = JSON.parse(response);
                        tableFileRecruitment.rows.add(data).draw();
                    }
                });
            }
            
            function reloadDetailFileNidn(){
                $.ajax({
                    url : 'getDetailFileNidn.htm',
                    type: 'GET',
                    success : function(response) {
                        var data = JSON.parse(response);
                        tableFileNidn.rows.add(data).draw();
                    }
                });
            }
            
            function reloadDetailFileAssistant(){
                $.ajax({
                    url : 'getDetailFileAssistant.htm',
                    type: 'GET',
                    success : function(response) {
                        var data = JSON.parse(response);
                        tableFileAssistant.rows.add(data).draw();
                    }
                });
            }
            
            function reloadDetailFileLectors(){
                $.ajax({
                    url : 'getDetailFileLectors.htm',
                    type: 'GET',
                    success : function(response) {
                        var data = JSON.parse(response);
                        tableFileLectors.rows.add(data).draw();
                    }
                });
            }
            
            function reloadDetailFileHeadlectors(){
                $.ajax({
                    url : 'getDetailFileHeadlectors.htm',
                    type: 'GET',
                    success : function(response) {
                        var data = JSON.parse(response);
                        tableFileHeadlectors.rows.add(data).draw();
                    }
                });
            }
            
            function reloadDetailFileProfessor(){
                $.ajax({
                    url : 'getDetailFileProfessor.htm',
                    type: 'GET',
                    success : function(response) {
                        var data = JSON.parse(response);
                        tableFileProfessor.rows.add(data).draw();
                    }
                });
            }
            
            function reloadDetailFileSertification(){
                $.ajax({
                    url : 'getDetailFileSertification.htm',
                    type: 'GET',
                    success : function(response) {
                        var data = JSON.parse(response);
                        tableFileSertification.rows.add(data).draw();
                    }
                });
            }
            
            tableFileRecruitment.on( 'order.dt search.dt', function () {
                tableFileRecruitment.column(0, {search:'applied', order:'applied'}).nodes().each( function (cell, i) {
                cell.innerHTML = i+1;
                } );
            }).draw();
            
            tableFileNidn.on( 'order.dt search.dt', function () {
                tableFileNidn.column(0, {search:'applied', order:'applied'}).nodes().each( function (cell, i) {
                cell.innerHTML = i+1;
                } );
            }).draw();
            
            tableFileAssistant.on( 'order.dt search.dt', function () {
                tableFileAssistant.column(0, {search:'applied', order:'applied'}).nodes().each( function (cell, i) {
                cell.innerHTML = i+1;
                } );
            }).draw();
            
            tableFileLectors.on( 'order.dt search.dt', function () {
                tableFileLectors.column(0, {search:'applied', order:'applied'}).nodes().each( function (cell, i) {
                cell.innerHTML = i+1;
                } );
            }).draw();
            
            tableFileHeadlectors.on( 'order.dt search.dt', function () {
                tableFileHeadlectors.column(0, {search:'applied', order:'applied'}).nodes().each( function (cell, i) {
                cell.innerHTML = i+1;
                } );
            }).draw();
            
            tableFileProfessor.on( 'order.dt search.dt', function () {
                tableFileProfessor.column(0, {search:'applied', order:'applied'}).nodes().each( function (cell, i) {
                cell.innerHTML = i+1;
                } );
            }).draw();
            
            tableFileSertification.on( 'order.dt search.dt', function () {
                tableFileSertification.column(0, {search:'applied', order:'applied'}).nodes().each( function (cell, i) {
                cell.innerHTML = i+1;
                } );
            }).draw();
            
            $('#tableFileRecruitment tbody').on('click', 'button#update', function () {
                var data = tableFileRecruitment.row(this.closest('tr')).data();
                $('input[name=idDetailRecruitment]').val(data.idDetail);
                $('input[id=recruitment]').val(data.nameDokumen);
            });
            
            $('#tableFileNidn tbody').on('click', 'button#update', function () {
                var data = tableFileNidn.row(this.closest('tr')).data();
                $('input[name=idDetailNidn]').val(data.idDetail);
                $('input[id=nidn]').val(data.nameDokumen);
            });
            
            $('#tableFileAssistant tbody').on('click', 'button#update', function () {
                var data = tableFileAssistant.row(this.closest('tr')).data();
                $('input[name=idDetailAssistant]').val(data.idDetail);
                $('input[id=assistant]').val(data.nameDokumen);
            });
            
            $('#tableFileLectors tbody').on('click', 'button#update', function () {
                var data = tableFileLectors.row(this.closest('tr')).data();
                $('input[name=idDetailLectors]').val(data.idDetail);
                $('input[id=lectors]').val(data.nameDokumen);
            });
            
            $('#tableFileHeadlectors tbody').on('click', 'button#update', function () {
                var data = tableFileHeadlectors.row(this.closest('tr')).data();
                $('input[name=idDetailHeadlectors]').val(data.idDetail);
                $('input[id=headlectors]').val(data.nameDokumen);
            });
            
            $('#tableFileProfessor tbody').on('click', 'button#update', function () {
                var data = tableFileProfessor.row(this.closest('tr')).data();
                $('input[name=idDetailProfessor]').val(data.idDetail);
                $('input[id=professor]').val(data.nameDokumen);
            });
            
            $('#tableFileRecruitment tbody').on('click', 'button#delete', function () {
                var data = tableFileRecruitment.row(this.closest('tr')).data();
                var dataConfirm = confirm('Apakah anda yakin ingin menghapus data tersebut ?');
                if (dataConfirm === true){
                    $.ajax({
                        url: "deleteDetailFile.htm",
                        data: "idDetail=" + data.idDetail,
                        daraType: "form-data",
                        type: 'GET',
                        success : function(response){
                            $(function(){
                                $.growl.notice({title: "Berhasil !", message: "Data berhasil dihapus !" });
                            });
                            $('#formDetailFileRecruitment').trigger('reset');
                            tableFileRecruitment.clear().draw();
                            reloadDetailFileRecruitment();
                        }
                    });
                }
            });
            
            $('#tableFileNidn tbody').on('click', 'button#delete', function () {
                var data = tableFileNidn.row(this.closest('tr')).data();
                var dataConfirm = confirm('Apakah anda yakin ingin menghapus data tersebut ?');
                if (dataConfirm === true){
                    $.ajax({
                        url: "deleteDetailFile.htm",
                        data: "idDetail=" + data.idDetail,
                        daraType: "form-data",
                        type: 'GET',
                        success : function(response){
                            $(function(){
                                $.growl.notice({title: "Berhasil !", message: "Data berhasil dihapus !" });
                            });
                            $('#formDetailFileNidn').trigger('reset');
                            tableFileNidn.clear().draw();
                            reloadDetailFileNidn();
                        }
                    });
                }
            });
            
            $('#tableFileAssistant tbody').on('click', 'button#delete', function () {
                var data = tableFileAssistant.row(this.closest('tr')).data();
                var dataConfirm = confirm('Apakah anda yakin ingin menghapus data tersebut ?');
                if (dataConfirm === true){
                    $.ajax({
                        url: "deleteDetailFile.htm",
                        data: "idDetail=" + data.idDetail,
                        daraType: "form-data",
                        type: 'GET',
                        success : function(response){
                            $(function(){
                                $.growl.notice({title: "Berhasil !", message: "Data berhasil dihapus !" });
                            });
                            $('#formDetailFileAssistant').trigger('reset');
                            tableFileAssistant.clear().draw();
                            reloadDetailFileAssistant();
                        }
                    });
                }
            });
            
            $('#tableFileLectors tbody').on('click', 'button#delete', function () {
                var data = tableFileLectors.row(this.closest('tr')).data();
                var dataConfirm = confirm('Apakah anda yakin ingin menghapus data tersebut ?');
                if (dataConfirm === true){
                    $.ajax({
                        url: "deleteDetailFile.htm",
                        data: "idDetail=" + data.idDetail,
                        daraType: "form-data",
                        type: 'GET',
                        success : function(response){
                            $(function(){
                                $.growl.notice({title: "Berhasil !", message: "Data berhasil dihapus !" });
                            });
                            $('#formDetailFileLectors').trigger('reset');
                            tableFileLectors.clear().draw();
                            reloadDetailFileLectors();
                        }
                    });
                }
            });
            
            $('#tableFileHeadlectors tbody').on('click', 'button#delete', function () {
                var data = tableFileHeadlectors.row(this.closest('tr')).data();
                var dataConfirm = confirm('Apakah anda yakin ingin menghapus data tersebut ?');
                if (dataConfirm === true){
                    $.ajax({
                        url: "deleteDetailFile.htm",
                        data: "idDetail=" + data.idDetail,
                        daraType: "form-data",
                        type: 'GET',
                        success : function(response){
                            $(function(){
                                $.growl.notice({title: "Berhasil !", message: "Data berhasil dihapus !" });
                            });
                            $('#formDetailFileHeadlectors').trigger('reset');
                            tableFileHeadlectors.clear().draw();
                            reloadDetailFileHeadlectors();
                        }
                    });
                }
            });
            
            $('#tableFileProfessor tbody').on('click', 'button#delete', function () {
                var data = tableFileProfessor.row(this.closest('tr')).data();
                var dataConfirm = confirm('Apakah anda yakin ingin menghapus data tersebut ?');
                if (dataConfirm === true){
                    $.ajax({
                        url: "deleteDetailFile.htm",
                        data: "idDetail=" + data.idDetail,
                        daraType: "form-data",
                        type: 'GET',
                        success : function(response){
                            $(function(){
                                $.growl.notice({title: "Berhasil !", message: "Data berhasil dihapus !" });
                            });
                            $('#formDetailFileProfessor').trigger('reset');
                            tableFileProfessor.clear().draw();
                            reloadDetailFileProfessor();
                        }
                    });
                }
            });
            
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
                        tableFileRecruitment.clear().draw();
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
                        tableFileNidn.clear().draw();
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
                        tableFileAssistant.clear().draw();
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
                        tableFileLectors.clear().draw();
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
                        tableFileHeadlectors.clear().draw();
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
                        tableFileProfessor.clear().draw();
                        reloadDetailFileProfessor();
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
