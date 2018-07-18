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
    <div class="page-container">	
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
                
                <div class="row" style="padding-left: 50px; padding-top: 30px">
                    <div class="col-md-3">
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
                    <div class="col-md-3">
                        <select class="form-control"
                                id="major"
                                name="idMajor">
                            <option 
                                value="0" 
                                selected="true"
                                class="form-control">
                                --Semua Jurusan--
                            </option>
                        </select>
                    </div>
                </div>     
                <hr>
                <div class="row">
                    <div class="col-md-12" style="padding-left: 60px; padding-right: 50px">
                        <div class="table-responsive">
                            <table class="table table-hover" id="tableLecturer">
                                <thead>
                                    <th>No</th>
                                    <th>Nama</th>
                                    <th>Jurusan</th>                                                                 
                                    <th>Fakultas</th>
                                    <th>Aksi</th>
                                </thead>
                            </table>
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
        
        $(document).ready(function() {
            reloadDataLecturer();
            
            var tableLecturer = $('#tableLecturer').DataTable({
                pageLength: 5,
                lengthChange: false,
                columns: [
                    { data: null, sortable: false},
                    { data: 'nameLecturer'},
                    { data: 'nameFaculty'},
                    { data: 'nameMajor'},
                    { data: null, sortable: false,
                      render : function(data, type, full) {
                        return '<button id="create"><span class="fa fa-pencil"></span></button>';}
                    }
                ]
            });
            
            $('#tableLecturer tbody').on('click', 'button#create', function () {
                var data = tableLecturer.row(this.closest('tr')).data();
                window.location.assign("createProgressSertification.htm?idLecturer=" + data.idLecturer);
            });
            
            function reloadDataLecturer(){
                $.ajax({
                    url : "getLecturer.htm",
                    type: 'GET',
                    success: function(response){
                        var data = JSON.parse(response);
                        tableLecturer.rows.add(data).draw();
                    }
                });
            }
            
            tableLecturer.on( 'order.dt search.dt', function () {
                tableLecturer.column(0, {search:'applied', order:'applied'}).nodes().each( function (cell, i) {
                cell.innerHTML = i+1;
                } );
            }).draw();
            
            $("#faculty").change(function(){
                var idFaculty = $('select[name=idFaculty]').val().toString();
                if (idFaculty === "0"){
                    tableLecturer.clear().draw();
                    reloadDataLecturer();
                    var content = '<option value="0" name="idMajor">--Semua Jurusan--</option>';
                    $('#major').html(content);
                    $("#major").val('0');
                } else {
                    $.ajax({
                        url : 'getDataMajorByFaculty.htm',
                        data: "idFaculty=" + idFaculty,
                        type: 'GET',
                        success : function(response) {
                            var data = JSON.parse(response);
                            var len = data.length;
                            var content = '<option value="0" name="idMajor">--Semua Jurusan--</option>';
                            for (var i = 0; i < len; i++){
                                content +='<option value="' + data[i].idMajor + '" name="idMajor">' + data[i].nameMajor + '</option>';
                                $('#major').html(content);
                            }
                        }
                    });
                    $.ajax({
                        url : 'getDataLecturerByMajor.htm',
                        data: {idMajor: "0", idFaculty: idFaculty},
                        type: 'GET',
                        success : function(response) {
                            var data = JSON.parse(response);
                            tableLecturer.clear().draw();
                            tableLecturer.rows.add(data).draw();
                        }
                    });
                }
            });
            
            $("#major").change(function(){
                var idMajor = $('select[name=idMajor]').val().toString();
                var idFaculty = $('select[name=idFaculty]').val().toString();

                $.ajax({
                    url : 'getDataLecturerByMajor.htm',
                    data: {idMajor: idMajor, idFaculty: idFaculty},
                    type: 'GET',
                    success : function(response) {
                        var data = JSON.parse(response);
                        tableLecturer.clear().draw();
                        tableLecturer.rows.add(data).draw();
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