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
                                                           id="resetFaculty"
                                                           class="form-control-submit"/>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="table-responsive">
                                        <table class="table table-hover" id="tableFaculty">
                                            <thead>
                                                <th>No</th>
                                                <th>Id Fakultas</th>
                                                <th>Nama Fakultas</th>
                                                <th>Aksi</th>
                                            </thead>
                                        </table>
                                    </div>
                                </div>    
                            </div>
                            <div class="tab-pane" 
                                 id="tab2">
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
                                                           id="resetMajor"
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
                                            <table class="table table-hover" id="tableMajor">
                                                <thead>
                                                    <tr>
                                                        <th>No</th>
                                                        <th>Id Jurusan</th>
                                                        <th>Nama Jurusan</th>
                                                        <th>Nama Fakultas</th>
                                                        <th>Aksi</th>
                                                    </tr>
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
                                                           id="resetLecture"
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
                                            <table class="table table-hover" id="tableLecture">
                                                <thead>
                                                    <th>No</th>
                                                    <th>Id Mata Kuliah</th>
                                                    <th>Nama Mata Kuliah</th>
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
            reloadDropDownFaculty();

            var tableLecture = $('#tableLecture').DataTable({
                pageLength: 5,
                lengthChange: false,
                columns: [
                    { data: null, sortable: false},
                    { data: 'idLecture', searchable: false},
                    { data: 'nameLecture'},
                    { data: null, sortable: false,
                      render : function(data, type, full) {
                        return '<button id="update"><span class="fa fa-pencil"></span></button> \n\
                                <button id="delete"><span class="fa fa-trash"></span></button>';}
                    }
                ]
            });
            
            var tableMajor = $('#tableMajor').DataTable({
                pageLength: 5,
                lengthChange: false,
                columns: [
                    { data: null, sortable: false},
                    { data: 'idMajor', searchable: false},
                    { data: 'nameMajor'},
                    { data: 'nameFaculty', searchable: false},
                    { data: null, sortable: false,
                      render : function(data, type, full) {
                        return '<button id="update"><span class="fa fa-pencil"></span></button> \n\
                                <button id="delete"><span class="fa fa-trash"></span></button>';}
                    }
                ]
            });
            
            var tableFaculty = $('#tableFaculty').DataTable({
                pageLength: 5,
                lengthChange: false,
                columns: [
                    { data: null, sortable: false},
                    { data: 'idFaculty', searchable: false},
                    { data: 'nameFaculty'},
                    { data: null, sortable: false,
                      render : function(data, type, full) {
                        return '<button id="update"><span class="fa fa-pencil"></span></button> \n\
                                <button id="delete"><span class="fa fa-trash"></span></button>';}
                    }
                ]
            });
            
            tableFaculty.on( 'order.dt search.dt', function () {
                tableFaculty.column(0, {search:'applied', order:'applied'}).nodes().each( function (cell, i) {
                cell.innerHTML = i+1;
                } );
            }).draw();
            
            tableMajor.on( 'order.dt search.dt', function () {
                tableMajor.column(0, {search:'applied', order:'applied'}).nodes().each( function (cell, i) {
                cell.innerHTML = i+1;
                } );
            }).draw();
            
            tableLecture.on( 'order.dt search.dt', function () {
                tableLecture.column(0, {search:'applied', order:'applied'}).nodes().each( function (cell, i) {
                cell.innerHTML = i+1;
                } );
            }).draw();
            
            $('#tableFaculty tbody').on('click', 'button#update', function () {
                var data = tableFaculty.row(this.closest('tr')).data();
                $('input[name=idFaculty]').val(data.idFaculty);
                $('input[name=idFaculty]').prop('readonly', true);
                $('input[name=nameFaculty]').val(data.nameFaculty);
            });
            
            $('#tableMajor tbody').on('click', 'button#update', function () {
                var data = tableMajor.row(this.closest('tr')).data();
                $('input[name=idMajor]').val(data.idMajor);
                $('input[name=idMajor]').prop('readonly', true);
                $('input[name=nameMajor]').val(data.nameMajor);
                $('input[name=idFaculty]').val(data.idFaculty);
                $.ajax({
                    url: "getDataFacultyByMajor.htm",
                    data: "idMajor=" + data.idMajor,
                    type: "GET",
                    success: function(response){
                        var res = JSON.parse(response);
                        var idFaculty = res.idFaculty;
                        $('select[name=idFaculty]').val(idFaculty);
                    }
                });
            });
            
            $('#tableLecture tbody').on('click', 'button#update', function () {
                var data = tableLecture.row(this.closest('tr')).data();
                $('input[name=idLecture]').val(data.idLecture);
                $('input[name=idLecture]').prop('readonly', true);
                $('input[name=nameLecture]').val(data.nameLecture);
            });
                        
            $('#tableFaculty tbody').on('click', 'button#delete', function () {
                var data = tableFaculty.row(this.closest('tr')).data();
                var dataConfirm = confirm('Apakah anda yakin ingin menghapus data tersebut ?');
                if (dataConfirm === true){
                    $.ajax({
                    url: "deleteFaculty.htm",
                    data: "idFaculty=" + data.idFaculty,
                    daraType: "form-data",
                    type: 'GET',
                    success : function(response){
                        $(function(){
                            $.growl.notice({title: "Berhasil !", message: "Data berhasil dihapus !" });
                        });
                        $('#formFaculty').trigger('reset');
                        tableFaculty.clear().draw();
                        reloadDropDownFaculty();
                        reloadDataFaculty();
                    }
                });
                }
            });
            
            $('#tableMajor tbody').on('click', 'button#delete', function () {
                var data = tableMajor.row(this.closest('tr')).data();
                var dataConfirm = confirm('Apakah anda yakin ingin menghapus data tersebut ?');
                if (dataConfirm === true){
                    $.ajax({
                        url: "deleteMajor.htm",
                        data: "idMajor=" + data.idMajor,
                        daraType: "form-data",
                        type: 'GET',
                        success : function(response){
                            $(function(){
                                $.growl.notice({title: "Berhasil !", message: "Data berhasil dihapus !" });
                            });
                            tableMajor.clear().draw();
                            reloadDataMajor();
                        }
                    });
                }
            });
            
            $('#tableLecture tbody').on('click', 'button#delete', function () {
                var data = tableLecture.row(this.closest('tr')).data();
                var dataConfirm = confirm('Apakah anda yakin ingin menghapus data tersebut ?');
                if (dataConfirm === true){
                    $.ajax({
                        url: "deleteLecture.htm",
                        data: "idLecture=" + data.idLecture,
                        daraType: "form-data",
                        type: 'GET',
                        success : function(response){
                            $(function(){
                                $.growl.notice({title: "Berhasil !", message: "Data berhasil dihapus !" });
                            });
                            tableLecture.clear().draw();
                            reloadDataLecture();
                        }
                    });
                }
            });
            
            function reloadDataFaculty(){
                $.ajax({
                    url : 'getFaculty.htm',
                    type: 'GET',
                    success : function(response) {
                        var data = JSON.parse(response);
                        tableFaculty.rows.add(data).draw();
                    }
                });
            }
            
            function reloadDropDownFaculty(){
                $.ajax({
                    url : 'getFaculty.htm',
                    type: 'GET',
                    success : function(response) {
                        var data = JSON.parse(response);
                        var len = data.length;
                        var content = '';
                        for (var i = 0; i < len; i++){
                            content +='<option value="' + data[i].idFaculty + '" name="idFaculty">' + data[i].nameFaculty + '</option>';
                            $('#faculty').html(content);
                        }
                    }
                });
            }
            
            function reloadDataMajor(){
                $.ajax({
                    url : 'getMajor.htm',
                    type: 'GET',
                    success : function(response) {
                        var data = JSON.parse(response);
                        tableMajor.rows.add(data).draw();
                    }
                });
            }
            
            function reloadDataLecture(){
                $.ajax({
                    url : 'getLecture.htm',
                    type: 'GET',
                    success : function(response) {
                        var data = JSON.parse(response);
                        tableLecture.rows.add(data).draw();
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
                        $('#formFaculty').trigger('reset');
                        tableFaculty.clear().draw();
                        reloadDropDownFaculty();
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
                        $('#formMajor').trigger('reset');
                        tableMajor.clear().draw();
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
                        $('#formLecture').trigger('reset');
                        tableLecture.clear().draw();
                        reloadDataLecture();
                    }
                });
            });
            
            $('#resetFaculty').click(function(){
                $('input[name=idFaculty]').prop('readonly', false);
            });
            
            $('#resetMajor').click(function(){
                $('input[name=idMajor]').prop('readonly', false);
            });
            
            $('#resetLecture').click(function(){
                $('input[name=idLecture]').prop('readonly', false);
            });
        });
    </script>
    <script src="resource/js/jquery.nicescroll.js"></script>
    <script src="resource/js/scripts.js"></script>
    <script src="resource/js/bootstrap.js"> </script>
    </body>
</html>                     
