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
                                                        <th>Urutan Proses</th>
                                                        <th>Deskripsi Proses</th>
                                                        <th colspan="2">Aksi</th>
                                                    </tr>
                                                </thead>
                                                <tbody id="tableBodyProgressNidn">

                                                </tbody>
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
                                                        <th>Urutan Proses</th>
                                                        <th>Deskripsi Proses</th>
                                                        <th colspan="2">Aksi</th>
                                                    </tr>
                                                </thead>
                                                <tbody id="tableBodyProgressAssistant">

                                                </tbody>
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
                                                        <th>Urutan Proses</th>
                                                        <th>Deskripsi Proses</th>
                                                        <th colspan="2">Aksi</th>
                                                    </tr>
                                                </thead>
                                                <tbody id="tableBodyProgressLectors">

                                                </tbody>
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
                                                        <th>Urutan Proses</th>
                                                        <th>Deskripsi Proses</th>
                                                        <th colspan="2">Aksi</th>
                                                    </tr>
                                                </thead>
                                                <tbody id="tableBodyProgressHeadlectors">

                                                </tbody>
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
                                                        <th>Urutan Proses</th>
                                                        <th>Deskripsi Proses</th>
                                                        <th colspan="2">Aksi</th>
                                                    </tr>
                                                </thead>
                                                <tbody id="tableBodyProgressProfessor">

                                                </tbody>
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
                                <br>
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
                                                        <th>Urutan Proses</th>
                                                        <th>Deskripsi Proses</th>
                                                        <th colspan="2">Aksi</th>
                                                    </tr>
                                                </thead>
                                                <tbody id="tableBodyProgressSertification">

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
                
                function reloadDetailProgressNidn(){
                    $.ajax({
                        url : 'getDetailProgressNidn.htm',
                        type: 'GET',
                        success : function(response) {
                            var data = JSON.parse(response);
                            console.log(data);
                            var len = data.length;
                            countDetailNidn = len + 1;
                            $('input[id=numberRequirementNidn]').val(countDetailNidn);
                            var content = '';
                            for (var i = 0; i < len; i++){
                                if (i === (len-1)){
                                    content +=' <tr>\n\
                                                <td class="numberRequirement">' + data[i].numberRequirement + '</td>\n\
                                                <td class="description">' + data[i].description + '</td>\n\
                                                <td>\n\
                                                    <input type="hidden" class="dataDetail" value="' + data[i].idDetail + '"/>\n\
                                                    <a href="#"><span class="updateDetailProgressNidn fa fa-pencil"></span></a>\n\
                                                </td>\n\
                                                <td>\n\
                                                    <a href="#"><span class="deleteDetailProgressNidn fa fa-trash"></span></a>\n\
                                                </td>\n\
                                            </tr>';
                                } else {
                                    content +=' <tr>\n\
                                                <td class="numberRequirement">' + data[i].numberRequirement + '</td>\n\
                                                <td class="description">' + data[i].description + '</td>\n\
                                                <td>\n\
                                                    <input type="hidden" class="dataDetail" value="' + data[i].idDetail + '"/>\n\
                                                    <a href="#"><span class="updateDetailProgressNidn fa fa-pencil"></span></a>\n\
                                                </td>\n\
                                            </tr>';
                                }
                                
                                $('#tableBodyProgressNidn').html(content);
                            }

                            $('.updateDetailProgressNidn').click(function(){
                                var description = $(this).closest('tr').find('.description').html();
                                var numberRequirement = $(this).closest('tr').find('.numberRequirement').html();
                                var idDetail = $(this).closest('tr').find('.dataDetail').val();
                                $('input[id=idDetailNidn]').val(idDetail);
                                $('input[id=descriptionNidn]').val(description);
                                $('input[id=numberRequirementNidn]').val(numberRequirement);
                            });

                            $('.deleteDetailProgressNidn').click(function(){
                                var idDetail = $(this).closest('tr').find('.dataDetail').val();
                                $.ajax({
                                    url: "deleteDetailProgress.htm",
                                    data: "idDetail=" + idDetail,
                                    type: 'GET',
                                    success : function(response){
                                        $(function(){
                                            $.growl.notice({title: "Berhasil !", message: "Data berhasil dihapus !" });
                                        });
                                        reloadDetailProgressNidn();
                                    }
                                });
                            });
                            
                            $('#resetNidn').click(function(){
                                $('input[id=idDetailNidn]').val(0);
                                $('input[id=numberRequirementNidn]').val(countDetailNidn);
                                $('input[id=descriptionNidn]').val("");
                            });
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
                            countDetailAssistant = len + 1;
                            $('input[id=numberRequirementAssistant]').val(countDetailAssistant);
                            var content = '';
                            for (var i = 0; i < len; i++){
                                 if (i === (len-1)){
                                     content +=' <tr>\n\
                                                <td class="numberRequirement">' + data[i].numberRequirement + '</td>\n\
                                                <td class="description">' + data[i].description + '</td>\n\
                                                <td>\n\
                                                    <input type="hidden" class="dataDetail" value="' + data[i].idDetail + '"/>\n\
                                                    <a href="#"><span class="updateDetailProgressAssistant fa fa-pencil"></span></a>\n\
                                                </td>\n\
                                                <td>\n\
                                                    <a href="#"><span class="deleteDetailProgressAssistant fa fa-trash"></span></a>\n\
                                                </td>\n\
                                            </tr>';
                                 } else {
                                     content +=' <tr>\n\
                                                <td class="numberRequirement">' + data[i].numberRequirement + '</td>\n\
                                                <td class="description">' + data[i].description + '</td>\n\
                                                <td>\n\
                                                    <input type="hidden" class="dataDetail" value="' + data[i].idDetail + '"/>\n\
                                                    <a href="#"><span class="updateDetailProgressAssistant fa fa-pencil"></span></a>\n\
                                                </td>\n\
                                            </tr>';
                                }
                                $('#tableBodyProgressAssistant').html(content);
                            }

                            $('.updateDetailProgressAssistant').click(function(){
                                var description = $(this).closest('tr').find('.description').html();
                                var numberRequirement = $(this).closest('tr').find('.numberRequirement').html();
                                var idDetail = $(this).closest('tr').find('.dataDetail').val();
                                $('input[id=idDetailAssistant]').val(idDetail);
                                $('input[id=descriptionAssistant]').val(description);
                                $('input[id=numberRequirementAssistant]').val(numberRequirement);
                            });

                            $('.deleteDetailProgressAssistant').click(function(){
                                var idDetail = $(this).closest('tr').find('.dataDetail').val();
                                $.ajax({
                                    url: "deleteDetailProgress.htm",
                                    data: "idDetail=" + idDetail,
                                    type: 'GET',
                                    success : function(response){
                                        $(function(){
                                            $.growl.notice({title: "Berhasil !", message: "Data berhasil dihapus !" });
                                        });
                                        reloadDetailProgressAssistant();
                                    }
                                });
                            });
                            
                            $('#resetAssistant').click(function(){
                                $('input[id=idDetailAssistant]').val(0);
                                $('input[id=numberRequirementAssistant]').val(countDetailAssistant);
                                $('input[id=descriptionAssistant]').val("");
                            });
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
                            countDetailLectors = len + 1;
                            $('input[id=numberRequirementLectors]').val(countDetailLectors);    
                            var content = '';
                            for (var i = 0; i < len; i++){
                                if (i === (len - 1)){
                                    content +=' <tr>\n\
                                                <td class="numberRequirement">' + data[i].numberRequirement + '</td>\n\
                                                <td class="description">' + data[i].description + '</td>\n\
                                                <td>\n\
                                                    <input type="hidden" class="dataDetail" value="' + data[i].idDetail + '"/>\n\
                                                    <a href="#"><span class="updateDetailProgressLectors fa fa-pencil"></span></a>\n\
                                                </td>\n\
                                                <td>\n\
                                                    <a href="#"><span class="deleteDetailProgressLectors fa fa-trash"></span></a>\n\
                                                </td>\n\
                                            </tr>';
                                } else {
                                    content +=' <tr>\n\
                                                <td class="numberRequirement">' + data[i].numberRequirement + '</td>\n\
                                                <td class="description">' + data[i].description + '</td>\n\
                                                <td>\n\
                                                    <input type="hidden" class="dataDetail" value="' + data[i].idDetail + '"/>\n\
                                                    <a href="#"><span class="updateDetailProgressLectors fa fa-pencil"></span></a>\n\
                                                </td>\n\
                                            </tr>';
                                }
                                $('#tableBodyProgressLectors').html(content);
                            }

                            $('.updateDetailProgressLectors').click(function(){
                                var description = $(this).closest('tr').find('.description').html();
                                var numberRequirement = $(this).closest('tr').find('.numberRequirement').html();
                                var idDetail = $(this).closest('tr').find('.dataDetail').val();
                                $('input[id=idDetailLectors]').val(idDetail);
                                $('input[id=descriptionLectors]').val(description);
                                $('input[id=numberRequirementLectors]').val(numberRequirement);
                            });

                            $('.deleteDetailProgressLectors').click(function(){
                                var idDetail = $(this).closest('tr').find('.dataDetail').val();
                                $.ajax({
                                    url: "deleteDetailProgress.htm",
                                    data: "idDetail=" + idDetail,
                                    type: 'GET',
                                    success : function(response){
                                        $(function(){
                                            $.growl.notice({title: "Berhasil !", message: "Data berhasil dihapus !" });
                                        });
                                        reloadDetailProgressLectors();
                                    }
                                });
                            });
                            
                            $('#resetLectors').click(function(){
                                $('input[id=idDetailLectors]').val(0);
                                $('input[id=numberRequirementLectors]').val(countDetailLectors);
                                $('input[id=descriptionLectors]').val("");
                            });
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
                            countDetailHeadlectors = len + 1;
                            $('input[id=numberRequirementHeadlectors]').val(countDetailHeadlectors);    
                            var content = '';
                            for (var i = 0; i < len; i++){
                                if (i === (len - 1)){
                                    content +=' <tr>\n\
                                                <td class="numberRequirement">' + data[i].numberRequirement + '</td>\n\
                                                <td class="description">' + data[i].description + '</td>\n\
                                                <td>\n\
                                                    <input type="hidden" class="dataDetail" value="' + data[i].idDetail + '"/>\n\
                                                    <a href="#"><span class="updateDetailProgressHeadlectors fa fa-pencil"></span></a>\n\
                                                </td>\n\
                                                <td>\n\
                                                    <a href="#"><span class="deleteDetailProgressHeadlectors fa fa-trash"></span></a>\n\
                                                </td>\n\
                                            </tr>';
                                } else {
                                    content +=' <tr>\n\
                                                <td class="numberRequirement">' + data[i].numberRequirement + '</td>\n\
                                                <td class="description">' + data[i].description + '</td>\n\
                                                <td>\n\
                                                    <input type="hidden" class="dataDetail" value="' + data[i].idDetail + '"/>\n\
                                                    <a href="#"><span class="updateDetailProgressHeadlectors fa fa-pencil"></span></a>\n\
                                                </td>\n\
                                            </tr>';
                                }
                                $('#tableBodyProgressHeadlectors').html(content);
                            }

                            $('.updateDetailProgressHeadlectors').click(function(){
                                var description = $(this).closest('tr').find('.description').html();
                                var numberRequirement = $(this).closest('tr').find('.numberRequirement').html();
                                var idDetail = $(this).closest('tr').find('.dataDetail').val();
                                $('input[id=idDetailHeadlectors]').val(idDetail);
                                $('input[id=descriptionHeadlectors]').val(description);
                                $('input[id=numberRequirementHeadlectors]').val(numberRequirement);
                            });

                            $('.deleteDetailProgressHeadlectors').click(function(){
                                var idDetail = $(this).closest('tr').find('.dataDetail').val();
                                $.ajax({
                                    url: "deleteDetailProgress.htm",
                                    data: "idDetail=" + idDetail,
                                    type: 'GET',
                                    success : function(response){
                                        $(function(){
                                            $.growl.notice({title: "Berhasil !", message: "Data berhasil dihapus !" });
                                        });
                                        reloadDetailProgressHeadlectors();
                                    }
                                });
                            });
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
                            countDetailProfessor = len + 1;
                            $('input[id=numberRequirementProfessor]').val(countDetailProfessor);
                            var content = '';
                            for (var i = 0; i < len; i++){
                                if (i === (len - 1)){
                                    content +=' <tr>\n\
                                                <td class="numberRequirement">' + data[i].numberRequirement + '</td>\n\
                                                <td class="description">' + data[i].description + '</td>\n\
                                                <td>\n\
                                                    <input type="hidden" class="dataDetail" value="' + data[i].idDetail + '"/>\n\
                                                    <a href="#"><span class="updateDetailProgressProfessor fa fa-pencil"></span></a>\n\
                                                </td>\n\\n\
                                                <td>\n\
                                                    <a href="#"><span class="deleteDetailProgressProfessor fa fa-trash"></span></a>\n\
                                                </td>\n\
                                            </tr>';
                                } else {
                                    content +=' <tr>\n\
                                                <td class="numberRequirement">' + data[i].numberRequirement + '</td>\n\
                                                <td class="description">' + data[i].description + '</td>\n\
                                                <td>\n\
                                                    <input type="hidden" class="dataDetail" value="' + data[i].idDetail + '"/>\n\
                                                    <a href="#"><span class="updateDetailProgressProfessor fa fa-pencil"></span></a>\n\
                                                </td>\n\
                                            </tr>';
                                }
                                $('#tableBodyProgressProfessor').html(content);
                            }

                            $('.updateDetailProgressProfessor').click(function(){
                                var description = $(this).closest('tr').find('.description').html();
                                var numberRequirement = $(this).closest('tr').find('.numberRequirement').html();
                                var idDetail = $(this).closest('tr').find('.dataDetail').val();
                                $('input[id=idDetailProfessor]').val(idDetail);
                                $('input[id=descriptionProfessor]').val(description);
                                $('input[id=numberRequirementProfessor]').val(numberRequirement);
                            });

                            $('.deleteDetailProgressProfessor').click(function(){
                                var idDetail = $(this).closest('tr').find('.dataDetail').val();
                                $.ajax({
                                    url: "deleteDetailProgress.htm",
                                    data: "idDetail=" + idDetail,
                                    type: 'GET',
                                    success : function(response){
                                        $(function(){
                                            $.growl.notice({title: "Berhasil !", message: "Data berhasil dihapus !" });
                                        });
                                        reloadDetailProgressProfessor();
                                    }
                                });
                            });
                            
                            $('#resetProfessor').click(function(){
                                $('input[id=idDetailProfessor]').val(0);
                                $('input[id=numberRequirementProfessor]').val(countDetailHeadlectors);
                                $('input[id=descriptionProfessor]').val("");
                            });
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
                            countDetailSertification = len + 1;
                            $('input[id=numberRequirementSertification]').val(countDetailSertification);
                            var content = '';
                            for (var i = 0; i < len; i++){
                                if (i === (len - 1)){
                                    content +=' <tr>\n\
                                                <td class="numberRequirement">' + data[i].numberRequirement + '</td>\n\
                                                <td class="description">' + data[i].description + '</td>\n\
                                                <td>\n\
                                                    <input type="hidden" class="dataDetail" value="' + data[i].idDetail + '"/>\n\
                                                    <a href="#"><span class="updateDetailProgressSertification fa fa-pencil"></span></a>\n\
                                                </td>\n\
                                                <td>\n\
                                                    <a href="#"><span class="deleteDetailProgressSertification fa fa-trash"></span></a>\n\
                                                </td>\n\
                                            </tr>';
                                } else {
                                    content +=' <tr>\n\
                                                <td class="numberRequirement">' + data[i].numberRequirement + '</td>\n\
                                                <td class="description">' + data[i].description + '</td>\n\
                                                <td>\n\
                                                    <input type="hidden" class="dataDetail" value="' + data[i].idDetail + '"/>\n\
                                                    <a href="#"><span class="updateDetailProgressSertification fa fa-pencil"></span></a>\n\
                                                </td>\n\
                                            </tr>';
                                }
                                $('#tableBodyProgressSertification').html(content);
                            }

                            $('.updateDetailProgressSertification').click(function(){
                                var description = $(this).closest('tr').find('.description').html();
                                var numberRequirement = $(this).closest('tr').find('.numberRequirement').html();
                                var idDetail = $(this).closest('tr').find('.dataDetail').val();
                                $('input[id=idDetailSertification]').val(idDetail);
                                $('input[id=descriptionSertification]').val(description);
                                $('input[id=numberRequirementSertification]').val(numberRequirement);
                            });

                            $('.deleteDetailProgressSertification').click(function(){
                                var idDetail = $(this).closest('tr').find('.dataDetail').val();
                                $.ajax({
                                    url: "deleteDetailProgress.htm",
                                    data: "idDetail=" + idDetail,
                                    type: 'GET',
                                    success : function(response){
                                        $(function(){
                                            $.growl.notice({title: "Berhasil !", message: "Data berhasil dihapus !" });
                                        });
                                        reloadDetailProgressSertification();
                                    }
                                });
                            });
                            
                            $('#resetSertification').click(function(){
                                $('input[id=idDetailSertification]').val(0);
                                $('input[id=numberRequirementSertification]').val(countDetailSertification);
                                $('input[id=descriptionSertification]').val("");
                            });
                        }
                    });
                }
                
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
                            reloadDetailProgressSertification();
                        }
                    });
                });
                
                $('#searchNidn').click(function(){
                    var description = $('input[name=nameSearchNidn]').val().toString();
                    var idEvent = "1";
                    $.ajax({
                        url: "searchDetailProgress.htm",
                        data: {description: description, idEvent: idEvent},
                        type: "GET",
                        success: function(response){
                            var data = JSON.parse(response);
                            var len = data.length;
                            if (len === 0) {
                                $(function(){
                                    $.growl.warning({title: "Maaf !", message: "Data tidak ada !" });
                                });
                            } else {
                                var content = '';
                                for (var i = 0; i < len; i++){
                                    if (data[i].numberRequirement === (countDetailNidn - 1)){
                                        content +=' <tr>\n\
                                                    <td class="numberRequirement">' + data[i].numberRequirement + '</td>\n\
                                                    <td class="description">' + data[i].description + '</td>\n\
                                                    <td>\n\
                                                        <input type="hidden" class="dataDetail" value="' + data[i].idDetail + '"/>\n\
                                                        <a href="#"><span class="updateDetailProgressNidn fa fa-pencil"></span></a>\n\
                                                    </td>\n\
                                                    <td>\n\
                                                        <a href="#"><span class="deleteDetailProgressNidn fa fa-trash"></span></a>\n\
                                                    </td>\n\
                                                </tr>';
                                    } else {
                                        content +=' <tr>\n\
                                                    <td class="numberRequirement">' + data[i].numberRequirement + '</td>\n\
                                                    <td class="description">' + data[i].description + '</td>\n\
                                                    <td>\n\
                                                        <input type="hidden" class="dataDetail" value="' + data[i].idDetail + '"/>\n\
                                                        <a href="#"><span class="updateDetailProgressNidn fa fa-pencil"></span></a>\n\
                                                    </td>\n\
                                                </tr>';
                                    }
                                    $('#tableBodyProgressNidn').html(content);
                                }

                                $('.updateDetailProgressNidn').click(function(){
                                    var description = $(this).closest('tr').find('.description').html();
                                    var numberRequirement = $(this).closest('tr').find('.numberRequirement').html();
                                    var idDetail = $(this).closest('tr').find('.dataDetail').val();
                                    $('input[id=idDetailNidn]').val(idDetail);
                                    $('input[id=descriptionNidn]').val(description);
                                    $('input[id=numberRequirementNidn]').val(numberRequirement);
                                });

                                $('.deleteDetailProgressNidn').click(function(){
                                    var idDetail = $(this).closest('tr').find('.dataDetail').val();
                                    $.ajax({
                                        url: "deleteDetailProgress.htm",
                                        data: "idDetail=" + idDetail,
                                        type: 'GET',
                                        success : function(response){
                                            $(function(){
                                                $.growl.notice({title: "Berhasil !", message: "Data berhasil dihapus !" });
                                            });
                                            reloadDetailProgressNidn();
                                        }
                                    });
                                });

                                $('#resetNidn').click(function(){
                                    $('input[id=idDetailNidn]').val(0);
                                    $('input[id=numberRequirementNidn]').val(countDetailNidn);
                                    $('input[id=descriptionNidn]').val("");
                                });
                            }
                        }
                    });        
                });
                
                $('#searchAssistant').click(function(){
                    var description = $('input[name=nameSearchAssistant]').val().toString();
                    var idEvent = "2";
                    $.ajax({
                        url: "searchDetailProgress.htm",
                        data: {description: description, idEvent: idEvent},
                        type: "GET",
                        success: function(response){
                            var data = JSON.parse(response);
                            var len = data.length;
                            if (len === 0) {
                                $(function(){
                                    $.growl.warning({title: "Maaf !", message: "Data tidak ada !" });
                                });
                            } else {
                                var content = '';
                                for (var i = 0; i < len; i++){
                                    if (data[i].numberRequirement === (countDetailAssistant - 1)){
                                        content +=' <tr>\n\
                                                    <td class="numberRequirement">' + data[i].numberRequirement + '</td>\n\
                                                    <td class="description">' + data[i].description + '</td>\n\
                                                    <td>\n\
                                                        <input type="hidden" class="dataDetail" value="' + data[i].idDetail + '"/>\n\
                                                        <a href="#"><span class="updateDetailProgressAssistant fa fa-pencil"></span></a>\n\
                                                    </td>\n\
                                                    <td>\n\
                                                        <a href="#"><span class="deleteDetailProgressAssistant fa fa-trash"></span></a>\n\
                                                    </td>\n\
                                                </tr>';
                                    } else {
                                        content +=' <tr>\n\
                                                    <td class="numberRequirement">' + data[i].numberRequirement + '</td>\n\
                                                    <td class="description">' + data[i].description + '</td>\n\
                                                    <td>\n\
                                                        <input type="hidden" class="dataDetail" value="' + data[i].idDetail + '"/>\n\
                                                        <a href="#"><span class="updateDetailProgressAssistant fa fa-pencil"></span></a>\n\
                                                    </td>\n\
                                                </tr>';
                                    }
                                    $('#tableBodyProgressAssistant').html(content);
                                }

                                $('.updateDetailProgressAssistant').click(function(){
                                    var description = $(this).closest('tr').find('.description').html();
                                    var numberRequirement = $(this).closest('tr').find('.numberRequirement').html();
                                    var idDetail = $(this).closest('tr').find('.dataDetail').val();
                                    $('input[id=idDetailAssistant]').val(idDetail);
                                    $('input[id=descriptionAssistant]').val(description);
                                    $('input[id=numberRequirementAssistant]').val(numberRequirement);
                                });

                                $('.deleteDetailProgressAssistant').click(function(){
                                    var idDetail = $(this).closest('tr').find('.dataDetail').val();
                                    $.ajax({
                                        url: "deleteDetailProgress.htm",
                                        data: "idDetail=" + idDetail,
                                        type: 'GET',
                                        success : function(response){
                                            $(function(){
                                                $.growl.notice({title: "Berhasil !", message: "Data berhasil dihapus !" });
                                            });
                                            reloadDetailProgressAssistant();
                                        }
                                    });
                                });

                                $('#resetAssistant').click(function(){
                                    $('input[id=idDetailAssistant]').val(0);
                                    $('input[id=numberRequirementAssistant]').val(countDetailAssistant);
                                    $('input[id=descriptionAssistant]').val("");
                                });
                            }
                        }
                    });        
                });
                
                $('#searchLectors').click(function(){
                    var description = $('input[name=nameSearchLectors]').val().toString();
                    var idEvent = "3";
                    $.ajax({
                        url: "searchDetailProgress.htm",
                        data: {description: description, idEvent: idEvent},
                        type: "GET",
                        success: function(response){
                            var data = JSON.parse(response);
                            var len = data.length;
                            if (len === 0) {
                                $(function(){
                                    $.growl.warning({title: "Maaf !", message: "Data tidak ada !" });
                                });
                            } else {
                                var content = '';
                                for (var i = 0; i < len; i++){
                                    if (data[i].numberRequirement === (countDetailLectors - 1)){
                                        content +=' <tr>\n\
                                                    <td class="numberRequirement">' + data[i].numberRequirement + '</td>\n\
                                                    <td class="description">' + data[i].description + '</td>\n\
                                                    <td>\n\
                                                        <input type="hidden" class="dataDetail" value="' + data[i].idDetail + '"/>\n\
                                                        <a href="#"><span class="updateDetailProgressLectors fa fa-pencil"></span></a>\n\
                                                    </td>\n\
                                                    <td>\n\
                                                        <a href="#"><span class="deleteDetailProgressLectors fa fa-trash"></span></a>\n\
                                                    </td>\n\
                                                </tr>';
                                    } else {
                                        content +=' <tr>\n\
                                                    <td class="numberRequirement">' + data[i].numberRequirement + '</td>\n\
                                                    <td class="description">' + data[i].description + '</td>\n\
                                                    <td>\n\
                                                        <input type="hidden" class="dataDetail" value="' + data[i].idDetail + '"/>\n\
                                                        <a href="#"><span class="updateDetailProgressLectors fa fa-pencil"></span></a>\n\
                                                    </td>\n\
                                                </tr>';
                                    }
                                    $('#tableBodyProgressLectors').html(content);
                                }

                                $('.updateDetailProgressLectors').click(function(){
                                    var description = $(this).closest('tr').find('.description').html();
                                    var numberRequirement = $(this).closest('tr').find('.numberRequirement').html();
                                    var idDetail = $(this).closest('tr').find('.dataDetail').val();
                                    $('input[id=idDetailLectors]').val(idDetail);
                                    $('input[id=descriptionLectors]').val(description);
                                    $('input[id=numberRequirementLectors]').val(numberRequirement);
                                });

                                $('.deleteDetailProgressLectors').click(function(){
                                    var idDetail = $(this).closest('tr').find('.dataDetail').val();
                                    $.ajax({
                                        url: "deleteDetailProgress.htm",
                                        data: "idDetail=" + idDetail,
                                        type: 'GET',
                                        success : function(response){
                                            $(function(){
                                                $.growl.notice({title: "Berhasil !", message: "Data berhasil dihapus !" });
                                            });
                                            reloadDetailProgressLectors();
                                        }
                                    });
                                });

                                $('#resetLectors').click(function(){
                                    $('input[id=idDetailLectors]').val(0);
                                    $('input[id=numberRequirementLectors]').val(countDetailLectors);
                                    $('input[id=descriptionLectors]').val("");
                                });
                            }
                        }
                    });        
                });
                
                $('#searchHeadlectors').click(function(){
                    var description = $('input[name=nameSearchHeadlectors]').val().toString();
                    var idEvent = "4";
                    $.ajax({
                        url: "searchDetailProgress.htm",
                        data: {description: description, idEvent: idEvent},
                        type: "GET",
                        success: function(response){
                            var data = JSON.parse(response);
                            var len = data.length;
                            if (len === 0) {
                                $(function(){
                                    $.growl.warning({title: "Maaf !", message: "Data tidak ada !" });
                                });
                            } else {
                                var content = '';
                                for (var i = 0; i < len; i++){
                                    if (data[i].numberRequirement === (countDetailHeadlectors - 1)){
                                        content +=' <tr>\n\
                                                    <td class="numberRequirement">' + data[i].numberRequirement + '</td>\n\
                                                    <td class="description">' + data[i].description + '</td>\n\
                                                    <td>\n\
                                                        <input type="hidden" class="dataDetail" value="' + data[i].idDetail + '"/>\n\
                                                        <a href="#"><span class="updateDetailProgressHeadlectors fa fa-pencil"></span></a>\n\
                                                    </td>\n\
                                                    <td>\n\
                                                        <a href="#"><span class="deleteDetailProgressHeadlectors fa fa-trash"></span></a>\n\
                                                    </td>\n\
                                                </tr>';
                                    } else {
                                        content +=' <tr>\n\
                                                    <td class="numberRequirement">' + data[i].numberRequirement + '</td>\n\
                                                    <td class="description">' + data[i].description + '</td>\n\
                                                    <td>\n\
                                                        <input type="hidden" class="dataDetail" value="' + data[i].idDetail + '"/>\n\
                                                        <a href="#"><span class="updateDetailProgressHeadlectors fa fa-pencil"></span></a>\n\
                                                    </td>\n\
                                                </tr>';
                                    }
                                    $('#tableBodyProgressHeadlectors').html(content);
                                }

                                $('.updateDetailProgressHeadlectors').click(function(){
                                    var description = $(this).closest('tr').find('.description').html();
                                    var numberRequirement = $(this).closest('tr').find('.numberRequirement').html();
                                    var idDetail = $(this).closest('tr').find('.dataDetail').val();
                                    $('input[id=idDetailHeadlectors]').val(idDetail);
                                    $('input[id=descriptionHeadlectors]').val(description);
                                    $('input[id=numberRequirementHeadlectors]').val(numberRequirement);
                                });

                                $('.deleteDetailProgressHeadlectors').click(function(){
                                    var idDetail = $(this).closest('tr').find('.dataDetail').val();
                                    $.ajax({
                                        url: "deleteDetailProgress.htm",
                                        data: "idDetail=" + idDetail,
                                        type: 'GET',
                                        success : function(response){
                                            $(function(){
                                                $.growl.notice({title: "Berhasil !", message: "Data berhasil dihapus !" });
                                            });
                                            reloadDetailProgressHeadlectors();
                                        }
                                    });
                                });

                                $('#resetHeadlectors').click(function(){
                                    $('input[id=idDetailHeadlectors]').val(0);
                                    $('input[id=numberRequirementHeadlectors]').val(countDetailHeadlectors);
                                    $('input[id=descriptionHeadlectors]').val("");
                                });
                            }
                        }
                    });        
                });
                
                $('#searchProfessor').click(function(){
                    var description = $('input[name=nameSearchProfessor]').val().toString();
                    var idEvent = "5";
                    $.ajax({
                        url: "searchDetailProgress.htm",
                        data: {description: description, idEvent: idEvent},
                        type: "GET",
                        success: function(response){
                            var data = JSON.parse(response);
                            var len = data.length;
                            if (len === 0) {
                                $(function(){
                                    $.growl.warning({title: "Maaf !", message: "Data tidak ada !" });
                                });
                            } else {
                                var content = '';
                                for (var i = 0; i < len; i++){
                                    if (data[i].numberRequirement === (countDetailProfessor - 1)){
                                        content +=' <tr>\n\
                                                    <td class="numberRequirement">' + data[i].numberRequirement + '</td>\n\
                                                    <td class="description">' + data[i].description + '</td>\n\
                                                    <td>\n\
                                                        <input type="hidden" class="dataDetail" value="' + data[i].idDetail + '"/>\n\
                                                        <a href="#"><span class="updateDetailProgressProfessor fa fa-pencil"></span></a>\n\
                                                    </td>\n\
                                                    <td>\n\
                                                        <a href="#"><span class="deleteDetailProgressProfessor fa fa-trash"></span></a>\n\
                                                    </td>\n\
                                                </tr>';
                                    } else {
                                        content +=' <tr>\n\
                                                    <td class="numberRequirement">' + data[i].numberRequirement + '</td>\n\
                                                    <td class="description">' + data[i].description + '</td>\n\
                                                    <td>\n\
                                                        <input type="hidden" class="dataDetail" value="' + data[i].idDetail + '"/>\n\
                                                        <a href="#"><span class="updateDetailProgressProfessor fa fa-pencil"></span></a>\n\
                                                    </td>\n\
                                                </tr>';
                                    }
                                    $('#tableBodyProgressProfessor').html(content);
                                }

                                $('.updateDetailProgressProfessor').click(function(){
                                    var description = $(this).closest('tr').find('.description').html();
                                    var numberRequirement = $(this).closest('tr').find('.numberRequirement').html();
                                    var idDetail = $(this).closest('tr').find('.dataDetail').val();
                                    $('input[id=idDetailProfessor]').val(idDetail);
                                    $('input[id=descriptionProfessor]').val(description);
                                    $('input[id=numberRequirementProfessor]').val(numberRequirement);
                                });

                                $('.deleteDetailProgressProfessor').click(function(){
                                    var idDetail = $(this).closest('tr').find('.dataDetail').val();
                                    $.ajax({
                                        url: "deleteDetailProgress.htm",
                                        data: "idDetail=" + idDetail,
                                        type: 'GET',
                                        success : function(response){
                                            $(function(){
                                                $.growl.notice({title: "Berhasil !", message: "Data berhasil dihapus !" });
                                            });
                                            reloadDetailProgressProfessor();
                                        }
                                    });
                                });

                                $('#resetProfessor').click(function(){
                                    $('input[id=idDetailProfessor]').val(0);
                                    $('input[id=numberRequirementProfessor]').val(countDetailProfessor);
                                    $('input[id=descriptionProfessor]').val("");
                                });
                            }
                        }
                    });        
                });
                
                $('#searchSertification').click(function(){
                    var description = $('input[name=nameSearchSertification]').val().toString();
                    var idEvent = "6";
                    $.ajax({
                        url: "searchDetailProgress.htm",
                        data: {description: description, idEvent: idEvent},
                        type: "GET",
                        success: function(response){
                            var data = JSON.parse(response);
                            var len = data.length;
                            if (len === 0) {
                                $(function(){
                                    $.growl.warning({title: "Maaf !", message: "Data tidak ada !" });
                                });
                            } else {
                                var content = '';
                                for (var i = 0; i < len; i++){
                                    if (data[i].numberRequirement === (countDetailSertification - 1)){
                                        content +=' <tr>\n\
                                                    <td class="numberRequirement">' + data[i].numberRequirement + '</td>\n\
                                                    <td class="description">' + data[i].description + '</td>\n\
                                                    <td>\n\
                                                        <input type="hidden" class="dataDetail" value="' + data[i].idDetail + '"/>\n\
                                                        <a href="#"><span class="updateDetailProgressSertification fa fa-pencil"></span></a>\n\
                                                    </td>\n\
                                                    <td>\n\
                                                        <a href="#"><span class="deleteDetailProgressSertification fa fa-trash"></span></a>\n\
                                                    </td>\n\
                                                </tr>';
                                    } else {
                                        content +=' <tr>\n\
                                                    <td class="numberRequirement">' + data[i].numberRequirement + '</td>\n\
                                                    <td class="description">' + data[i].description + '</td>\n\
                                                    <td>\n\
                                                        <input type="hidden" class="dataDetail" value="' + data[i].idDetail + '"/>\n\
                                                        <a href="#"><span class="updateDetailProgressSertification fa fa-pencil"></span></a>\n\
                                                    </td>\n\
                                                </tr>';
                                    }
                                    $('#tableBodyProgressSertification').html(content);
                                }

                                $('.updateDetailProgressSertification').click(function(){
                                    var description = $(this).closest('tr').find('.description').html();
                                    var numberRequirement = $(this).closest('tr').find('.numberRequirement').html();
                                    var idDetail = $(this).closest('tr').find('.dataDetail').val();
                                    $('input[id=idDetailSertification]').val(idDetail);
                                    $('input[id=descriptionSertification]').val(description);
                                    $('input[id=numberRequirementSertification]').val(numberRequirement);
                                });

                                $('.deleteDetailProgressSertification').click(function(){
                                    var idDetail = $(this).closest('tr').find('.dataDetail').val();
                                    $.ajax({
                                        url: "deleteDetailProgress.htm",
                                        data: "idDetail=" + idDetail,
                                        type: 'GET',
                                        success : function(response){
                                            $(function(){
                                                $.growl.notice({title: "Berhasil !", message: "Data berhasil dihapus !" });
                                            });
                                            reloadDetailProgressSertification();
                                        }
                                    });
                                });

                                $('#resetSertification').click(function(){
                                    $('input[id=idDetailSertification]').val(0);
                                    $('input[id=numberRequirementSertification]').val(countDetailSertification);
                                    $('input[id=descriptionSertification]').val("");
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
</body>
</html>                     
