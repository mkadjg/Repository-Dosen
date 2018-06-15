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
                            <h3 style="margin-top: 13px;">KELOLA MASTER DATA</h3>
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
                                    <a href="#">
                                        <i class="fa fa-cog"></i> Settings
                                    </a> 
                                </li> 
                                <li> 
                                    <a href="#">
                                        <i class="fa fa-user"></i> Profile
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
                        $(window).scroll(function(){
                            var scrollpos=$(window).scrollTop(); 
                            if(scrollpos){
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
                                   aria-expanded="true">Data Fakultas
                                </a>
                            </li>
                            <li class="">
                                <a href="#tab2" 
                                   data-toggle="tab" 
                                   aria-expanded="false">Data Jurusan
                                </a>
                            </li>
                            <li class="">
                                <a href="#tab3" 
                                   data-toggle="tab" 
                                   aria-expanded="false">Data Mata Kuliah
                                </a>
                            </li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane" 
                                 id="tab1">
                                <br>
                                <div class="row">
                                    <div class="col-md-12">
                                        <form action="saveFaculty.htm"
                                            id="formFaculty"
                                            name="faculty"
                                            method="POST">
                                            <div class="row">
                                                <div class="col-md-2" style="margin-top: 7px;">
                                                    Id Fakultas<span style="color: red">*</span>
                                                </div>
                                                <div class="col-md-4">
                                                    <input type="text" 
                                                       class="form-control" 
                                                       name="idFaculty"
                                                       placeholder="Id Fakultas" 
                                                       required="" />
                                                </div>
                                            </div>
                                            <br>
                                            <div class="row">
                                                <div class="col-md-2" style="margin-top: 7px;">
                                                    Nama Fakultas<span style="color: red">*</span>
                                                </div>
                                                <div class="col-md-4">
                                                    <input type="text" 
                                                       class="form-control" 
                                                       name="nameFaculty"
                                                       placeholder="Nama Fakultas" 
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
                                                       name="nameSearchFaculty"
                                                           placeholder="Search..."
                                                           class="form-control"
                                                           required="">
                                            </div>
                                            <div class="col-md-1" align="left">
                                                <button id="searchFaculty" 
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
                                                        <th>No</th>
                                                        <th>Id Fakultas</th>
                                                        <th>Nama Fakultas</th>
                                                        <th colspan="2">Aksi</th>
                                                    </tr>
                                                </thead>
                                                <tbody id="tableBodyFaculty">

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
                                        <form action="saveMajor.htm"
                                            id="formMajor"
                                            name=major
                                            method="POST">
                                            <div class="row">
                                                <div class="col-md-2" style="margin-top: 7px;">
                                                    Id Jurusan<span style="color: red">*</span>
                                                </div>
                                                <div class="col-md-4">
                                                    <input type="text" 
                                                       class="form-control" 
                                                       name="idMajor"
                                                       placeholder="Id Jurusan" 
                                                       required="" />
                                                </div>
                                            </div>
                                            <br>
                                            <div class="row">
                                                <div class="col-md-2" style="margin-top: 7px;">
                                                    Nama Jurusan<span style="color: red">*</span>
                                                </div>
                                                <div class="col-md-4">
                                                    <input type="text" 
                                                       class="form-control" 
                                                       name="nameMajor"
                                                       placeholder="Nama Jurusan" 
                                                       required="" />
                                                </div>
                                            </div>
                                            <br>
                                            <div class="row">
                                                <div class="col-md-2" style="margin-top: 7px;">
                                                    Fakultas<span style="color: red">*</span>
                                                </div>
                                                <div class="col-md-4">
                                                    <select name="idFaculty"
                                                        id="faculty"
                                                        class="form-control">
                                                        <option value="0" 
                                                                selected="true"
                                                                class="form-control">
                                                            --Semua Fakultas--
                                                        </option>
                                                        <c:forEach var="dataFaculty" 
                                                                   items="${dataFaculty}">
                                                            <option value="${dataFaculty.idFaculty}" 
                                                                    class="form-control">
                                                                        ${dataFaculty.nameFaculty}
                                                            </option>
                                                        </c:forEach>
                                                    </select>
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
                                                       name="nameSearchMajor"
                                                           placeholder="Search..."
                                                           class="form-control"
                                                           required="">
                                            </div>
                                            <div class="col-md-1" align="left">
                                                <button id="searchMajor" 
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
                                                        <th>No</th>
                                                        <th>Id Jurusan</th>
                                                        <th>Nama Jurusan</th>
                                                        <th>Nama Fakultas</th>
                                                        <th colspan="3">Aksi</th>
                                                    </tr>
                                                </thead>
                                                <tbody id="tableBodyMajor">
                                                    
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
                                        <form action="saveLecture.htm"
                                            id="formLecture"
                                            name="lecture"
                                            method="POST">
                                            <div class="row">
                                                <div class="col-md-2" style="margin-top: 7px;">
                                                    Id Mata Kuliah<span style="color: red">*</span>
                                                </div>
                                                <div class="col-md-4">
                                                    <input type="text" 
                                                       class="form-control" 
                                                       name="idLecture"
                                                       placeholder="Id Mata Kuliah" 
                                                       required="" />
                                                </div>
                                            </div>
                                            <br>
                                            <div class="row">
                                                <div class="col-md-2" style="margin-top: 7px;">
                                                    Mata Kuliah<span style="color: red">*</span>
                                                </div>
                                                <div class="col-md-4">
                                                    <input type="text" 
                                                       class="form-control" 
                                                       name="nameLecture"
                                                       placeholder="Nama Mata Kuliah" 
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
                                                       name="nameSearchLecture"
                                                           placeholder="Search..."
                                                           class="form-control"
                                                           required="">
                                            </div>
                                            <div class="col-md-1" align="left">
                                                <button id="searchLecture" 
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
                                                        <th>No</th>
                                                        <th>Id Mata Kuliah</th>
                                                        <th>Nama Mata Kuliah</th>
                                                        <th colspan="3">Aksi</th>
                                                    </tr>
                                                </thead>
                                                <tbody id="tableBodyLecture">
                                                    
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
                        <a href="index.html">
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
        
        $(document).ready(function() {
            reloadDataFaculty();
            reloadDataMajor();
            reloadDataLecture();
            
            function reloadDataMajor(){
                $.ajax({
                    url : 'getMajor.htm',
                    type: 'GET',
                    success : function(response) {
                        var data = JSON.parse(response);
                        console.log(data);
                        var len = data.length;
                        var content = '';
                        for (var i = 0; i < len; i++){
                            content +=' <tr>\n\
                                            <td>' + (i + 1) + '</td>\n\
                                            <td class="idMajor">' + data[i].idMajor + '</td>\n\
                                            <td class="nameMajor">' + data[i].nameMajor + '</td>\n\\n\
                                            <td>' + data[i].nameFaculty + '</td>\n\
                                            <td>\n\
                                                <a href="#"><span class="updateMajor fa fa-pencil"></span></a>\n\
                                            </td>\n\
                                            <td>\n\
                                                <a href="#"><span class="deleteMajor fa fa-trash"></span></a>\n\
                                            </td>\n\
                                        </tr>';
                            $('#tableBodyMajor').html(content);
                        }

                        $('.updateMajor').click(function(){
                            var idMajor = $(this).closest('tr').find('.idMajor').html();
                            var nameMajor = $(this).closest('tr').find('.nameMajor').html();
                            $('input[name=idMajor]').val(idMajor);
                            $('input[name=nameMajor]').val(nameMajor);
                            $.ajax({
                                url: "getDataFacultyByMajor.htm",
                                data: "idMajor=" + idMajor,
                                type: "GET",
                                success: function(response){
                                    var data = JSON.parse(response);
                                    var idFaculty = data.idFaculty;
                                    $('select[name=idFaculty]').val(idFaculty);

                                }
                            });
                        });

                        $('.deleteMajor').click(function(){
                            var idMajor = $(this).closest('tr').find('.idMajor').html();
                            $.ajax({
                                url: "deleteMajor.htm",
                                data: "idMajor=" + idMajor,
                                type: 'GET',
                                success : function(response){
                                    $(function(){
                                        $.growl.notice({title: "Berhasil !", message: "Data berhasil dihapus !" });
                                    });
                                    reloadDataMajor();
                                }
                            });
                        });
                    }
                });
            }
            
            function reloadDataLecture(){
                $.ajax({
                    url : 'getLecture.htm',
                    type: 'GET',
                    success : function(response) {
                        var data = JSON.parse(response);
                        console.log(data);
                        var len = data.length;
                        var content = '';
                        for (var i = 0; i < len; i++){
                            content +=' <tr>\n\
                                            <td>' + (i + 1) + '</td>\n\
                                            <td class="idLecture">' + data[i].idLecture + '</td>\n\
                                            <td class="nameLecture">' + data[i].nameLecture + '</td>\n\
                                            <td>\n\
                                                <a href="#"><span class="updateLecture fa fa-pencil"></span></a>\n\
                                            </td>\n\
                                            <td>\n\
                                                <a href="#"><span class="deleteLecture fa fa-trash"></span></a>\n\
                                            </td>\n\
                                        </tr>';
                            $('#tableBodyLecture').html(content);
                        }

                        $('.updateLecture').click(function(){
                            var idLecture = $(this).closest('tr').find('.idLecture').html();
                            var nameLecture = $(this).closest('tr').find('.nameLecture').html();
                            $('input[name=idLecture]').val(idLecture);
                            $('input[name=nameLecture]').val(nameLecture);
                        });

                        $('.deleteLecture').click(function(){
                            var idLecture = $(this).closest('tr').find('.idLecture').html();
                            $.ajax({
                                url: "deleteLecture.htm",
                                data: "idLecture=" + idLecture,
                                daraType: "form-data",
                                type: 'GET',
                                success : function(response){
                                    $(function(){
                                        $.growl.notice({title: "Berhasil !", message: "Data berhasil dihapus !" });
                                    });
                                    reloadDataLecture();
                                }
                            });
                        });
                    }
                });
            }
            
            function reloadDataFaculty(){
                $.ajax({
                    url : 'getFaculty.htm',
                    type: 'GET',
                    success : function(response) {
                        var data = JSON.parse(response);
                        console.log(data);
                        var len = data.length;
                        var content = '';
                        for (var i = 0; i < len; i++){
                            content +=' <tr>\n\
                                            <td>' + (i + 1) + '</td>\n\
                                            <td class="idFaculty">' + data[i].idFaculty + '</td>\n\
                                            <td class="nameFaculty">' + data[i].nameFaculty + '</td>\n\
                                            <td>\n\
                                                <a href="#"><span class="updateFaculty fa fa-pencil"></span></a>\n\
                                            </td>\n\
                                            <td>\n\
                                                <a href="#"><span class="deleteFaculty fa fa-trash"></span></a>\n\
                                            </td>\n\
                                        </tr>';
                            $('#tableBodyFaculty').html(content);
                        }

                        $('.updateFaculty').click(function(){
                            var idFaculty = $(this).closest('tr').find('.idFaculty').html();
                            var nameFaculty = $(this).closest('tr').find('.nameFaculty').html();
                            $('input[name=idFaculty]').val(idFaculty);
                            $('input[name=nameFaculty]').val(nameFaculty);
                        });

                        $('.deleteFaculty').click(function(){
                            var idFaculty = $(this).closest('tr').find('.idFaculty').html();
                            $.ajax({
                                url: "deleteFaculty.htm",
                                data: "idFaculty=" + idFaculty,
                                daraType: "form-data",
                                type: 'GET',
                                success : function(response){
                                    $(function(){
                                        $.growl.notice({title: "Berhasil !", message: "Data berhasil dihapus !" });
                                    });
                                    reloadDataFaculty();
                                }
                            });
                        });
                    }
                });
            }

            $('#formFaculty').submit(function(e){
                e.preventDefault();
                $.post({
                    url: "saveFaculty.htm",
                    data: $('#formFaculty').serialize(),
                    dataType: "form-data",
                    error: function(){
                        $(function(){
                            $.growl.notice({title: "Berhasil !", message: "Data berhasil ditambahkan !" });
                        });
                        reloadDataFaculty();
                    }
                });
            });
            
            $('#formMajor').submit(function(e){
                e.preventDefault();
                $.post({
                    url: "saveMajor.htm",
                    data: $('#formMajor').serialize(),
                    dataType: "form-data",
                    error: function(){
                        $(function(){
                            $.growl.notice({title: "Berhasil !", message: "Data berhasil ditambahkan !" });
                        });
                        reloadDataMajor();
                    }
                });
            });
            
            $('#formLecture').submit(function(e){
                e.preventDefault();
                $.post({
                    url: "saveLecture.htm",
                    data: $('#formLecture').serialize(),
                    dataType: "form-data",
                    error: function(){
                        $(function(){
                            $.growl.notice({title: "Berhasil !", message: "Data berhasil ditambahkan !" });
                        });
                        reloadDataLecture();
                    }
                });
            });
            
            $('#searchFaculty').click(function(){
                var nameFaculty = $('input[name=nameSearchFaculty]').val().toString();
                $.ajax({
                    url : 'searchFaculty.htm',
                    type: 'GET',
                    data: "nameFaculty=" + nameFaculty,
                    success : function(response) {
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
                                                <td class="idFaculty">' + data[i].idFaculty + '</td>\n\
                                                <td class="nameFaculty">' + data[i].nameFaculty + '</td>\n\
                                                <td>\n\
                                                    <a href="#"><span class="updateFaculty fa fa-pencil"></span></a>\n\
                                                </td>\n\
                                                <td>\n\
                                                    <a href="#"><span class="deleteFaculty fa fa-trash"></span></a>\n\
                                                </td>\n\
                                            </tr>';
                                $('#tableBodyFaculty').html(content);
                            }
                        }
                        

                        $('.updateFaculty').click(function(){
                            var idFaculty = $(this).closest('tr').find('.idFaculty').html();
                            var nameFaculty = $(this).closest('tr').find('.nameFaculty').html();
                            $('input[name=idFaculty]').val(idFaculty);
                            $('input[name=nameFaculty]').val(nameFaculty);
                        });

                        $('.deleteFaculty').click(function(){
                            var idFaculty = $(this).closest('tr').find('.idFaculty').html();
                            $.ajax({
                                url: "deleteFaculty.htm",
                                data: "idFaculty=" + idFaculty,
                                type: 'GET',
                                success : function(response){
                                    $(function(){
                                        $.growl.notice({title: "Berhasil !", message: "Data berhasil dihapus !" });
                                    });
                                    reloadDataFaculty();
                                }
                            });
                        });
                    }
                });
            });
            
            $('#searchLecture').click(function(){
                var nameLecture = $('input[name=nameSearchLecture]').val().toString();
                $.ajax({
                    url : 'searchLecture.htm',
                    type: 'GET',
                    data: "nameLecture=" + nameLecture,
                    success : function(response) {
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
                                                <td class="idLecture">' + data[i].idLecture + '</td>\n\
                                                <td class="nameLecture">' + data[i].nameLecture + '</td>\n\
                                                <td>\n\
                                                    <a href="#"><span class="updateLecture fa fa-pencil"></span></a>\n\
                                                </td>\n\
                                                <td>\n\
                                                    <a href="#"><span class="deleteLecture fa fa-trash"></span></a>\n\
                                                </td>\n\
                                            </tr>';
                                $('#tableBodyLecture').html(content);
                            }
                        }
                        

                        $('.updateLecture').click(function(){
                            var idLecture = $(this).closest('tr').find('.idLecture').html();
                            var nameLecture = $(this).closest('tr').find('.nameLecture').html();
                            $('input[name=idLecture]').val(idLecture);
                            $('input[name=nameLecture]').val(nameLecture);
                        });

                        $('.deleteLecture').click(function(){
                            var idLecture = $(this).closest('tr').find('.idLecture').html();
                            $.ajax({
                                url: "deleteLecture.htm",
                                data: "idLecture=" + idLecture,
                                type: 'GET',
                                success : function(response){
                                    $(function(){
                                        $.growl.notice({title: "Berhasil !", message: "Data berhasil dihapus !" });
                                    });
                                    reloadDataLecture();
                                }
                            });
                        });
                    }
                });
            });
            
            $('#searchMajor').click(function(){
                var nameMajor = $('input[name=nameSearchMajor]').val().toString();
                $.ajax({
                    url : 'searchMajor.htm',
                    type: 'GET',
                    data: "nameMajor=" + nameMajor,
                    success : function(response) {
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
                                                <td class="idMajor">' + data[i].idMajor + '</td>\n\
                                                <td class="nameMajor">' + data[i].nameMajor + '</td>\n\
                                                <td>\n\
                                                    <a href="#"><span class="updateMajor fa fa-pencil"></span></a>\n\
                                                </td>\n\
                                                <td>\n\
                                                    <a href="#"><span class="deleteMajor fa fa-trash"></span></a>\n\
                                                </td>\n\
                                            </tr>';
                                $('#tableBodyMajor').html(content);
                            }
                        }

                        $('.updateMajor').click(function(){
                            var idMajor = $(this).closest('tr').find('.idMajor').html();
                            var nameMajor = $(this).closest('tr').find('.nameMajor').html();
                            $('input[name=idMajor]').val(idMajor);
                            $('input[name=nameMajor]').val(nameMajor);
                            $.ajax({
                                url: "getDataFacultyByMajor.htm",
                                data: "idMajor=" + idMajor,
                                type: "GET",
                                success: function(response){
                                    var data = JSON.parse(response);
                                    var idFaculty = data.idFaculty;
                                    $('select[name=idFaculty]').val(idFaculty);

                                }
                            });
                        });

                        $('.deleteMajor').click(function(){
                            var idMajor = $(this).closest('tr').find('.idMajor').html();
                            $.ajax({
                                url: "deleteMajor.htm",
                                data: "idMajor=" + idMajor,
                                type: 'GET',
                                success : function(response){
                                    $(function(){
                                        $.growl.notice({title: "Berhasil !", message: "Data berhasil dihapus !" });
                                    });
                                    reloadDataMajor();
                                }
                            });
                        });
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
