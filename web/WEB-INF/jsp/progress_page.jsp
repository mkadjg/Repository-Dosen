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
        
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <link rel="stylesheet" href="/resources/demos/style.css">
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
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
                                    <div class="col-md-12">
                                        <div class="row">
                                            <div class="col-md-3">
                                                <select name="idFaculty"
                                                    id="facultyLecturerProgressHistory"
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
                                                        id="majorLecturerProgressHistory"
                                                        name="idMajor">
                                                    <option 
                                                        value="0" 
                                                        selected="true"
                                                        class="form-control">
                                                        --Semua Jurusan--
                                                    </option>
                                                </select>
                                            </div>
                                            <div class="col-md-3">
                                                <input type="search"
                                                       name="nameSearchLecturerProgressHistory"
                                                           placeholder="Search..."
                                                           class="form-control"
                                                           required="">
                                            </div>
                                            <div class="col-md-1" align="left">
                                                <button id="searchLecturerProgressHistory" 
                                                    style="padding-top: 7px; border-radius:5px " >
                                                    <span class="glyphicon glyphicon-search"></span>
                                                </button>
                                            </div>
                                            <div class="col-md-2
                                                btn-effcts" align="rigth">
                                               <a href="addLecturer.htm" 
                                                  class="hvr-bounce-to-right" >
                                                   <button class="btn btn-1 btn-success">
                                                       <span class="glyphicon glyphicon-plus"></span> 
                                                       Tambah
                                                   </button>
                                               </a>
                                           </div>
                                        </div>
                                        <hr>
                                        <div class="table-responsive">
                                            <table class="table table-hover">
                                                <thead>
                                                    <tr>
                                                        <th>Nomor</th>
                                                        <th>Nama Dosen</th>
                                                        <th>Fakultas</th>
                                                        <th>Jurusan</th>
                                                        <th>Status</th>
                                                        <th>Aksi</th>
                                                    </tr>
                                                </thead>
                                                <tbody id="tableBodyLecturerProgressHistory">
                                                    
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
                                        <div class="row">
                                            <div class="col-md-3">
                                                <select name="idFaculty"
                                                    id="facultyAssistantProgressHistory"
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
                                                        id="majorAssistantProgressHistory"
                                                        name="idMajor">
                                                    <option 
                                                        value="0" 
                                                        selected="true"
                                                        class="form-control">
                                                        --Semua Jurusan--
                                                    </option>
                                                </select>
                                            </div>
                                            <div class="col-md-3">
                                                <input type="search"
                                                       name="nameSearchLecturerProgressHistory"
                                                           placeholder="Search..."
                                                           class="form-control"
                                                           required="">
                                            </div>
                                            <div class="col-md-1" align="left">
                                                <button id="searchAssistantProgressHistory" 
                                                    style="padding-top: 7px; border-radius:5px " >
                                                    <span class="glyphicon glyphicon-search"></span>
                                                </button>
                                            </div>
                                            <div class="col-md-2
                                                btn-effcts" align="rigth">
                                               <a href="addLecturer.htm" 
                                                  class="hvr-bounce-to-right" >
                                                   <button class="btn btn-1 btn-success">
                                                       <span class="glyphicon glyphicon-plus"></span> 
                                                       Tambah
                                                   </button>
                                               </a>
                                           </div>
                                        </div>
                                        <hr>
                                        <div class="table-responsive">
                                            <table class="table table-hover">
                                                <thead>
                                                    <tr>
                                                        <th>Nomor</th>
                                                        <th>Nama Dosen</th>
                                                        <th>Fakultas</th>
                                                        <th>Jurusan</th>
                                                        <th>Status</th>
                                                        <th>Aksi</th>
                                                    </tr>
                                                </thead>
                                                <tbody id="tableBodyAssistantProgressHistory">
                                                    
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
                                        <div class="chit-chat-layer1">
                                            <div class="col-md- chit-chat-layer1-left">
                                                <div class="work-progres">
                                                    <div class="chit-chat-heading">
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                DATA DOSEN MENGAJUKAN JABATAN LEKTOR
                                                            </div>
                                                            <div class="col-md-4 search-box" 
                                                                 align="rigth">
                                                                <form>
                                                                    <input type="text" 
                                                                           placeholder="Search..." 
                                                                           required="">	
                                                                    <input type="submit" 
                                                                           value="">					
                                                                </form>
                                                            </div>
                                                            <div>
                                                                <div class="col-md-2 btn-effcts" 
                                                                     style="margin-top: 0.5px">
                                                                    <a href="addProgressLectors.htm" 
                                                                       class="hvr-bounce-to-right" >
                                                                        <button class="btn btn-1 btn-success">
                                                                            <span class="glyphicon glyphicon-plus"></span> 
                                                                            Tambah
                                                                        </button>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                        </div>     
                                                    </div>
                                                    <hr>
                                                    <div class="table-responsive">
                                                        <table class="table table-hover">
                                                            <thead>
                                                                <tr>
                                                                    <th>NIDN</th>
                                                                    <th>Nama Dosen</th>
                                                                    <th>Status Progress</th>
                                                                    <th colspan="3">Aksi</th>
                                                                </tr>
                                                            </thead>
                                                            <c:forEach var="dataFunctionalProgressLectors" items="${dataFunctionalProgressLectors}">
                                                            <tbody>
                                                                <tr>
                                                                    <td>${dataFunctionalProgressLectors.idLecturer}</td>
                                                                    <td>${dataFunctionalProgressLectors.nameLecturer}</td>
                                                                    <td>
                                                                        <c:if test="${dataFunctionalProgressLectors.state == 1}">
                                                                            <button type="button" class="btn btn-sm btn-success">
                                                                                <span class="glyphicon glyphicon-ok"></span>
                                                                                Completed
                                                                            </button>
                                                                        </c:if>
                                                                        <c:if test="${dataFunctionalProgressLectors.state == 0}">
                                                                            <button type="button" class="btn btn-sm btn-warning">
                                                                                <span class="glyphicon glyphicon-refresh"></span>
                                                                                On Progress
                                                                            </button>
                                                                        </c:if>
                                                                    </td>
                                                                    <c:url var="show" value="showProgressLectors.htm">
                                                                        <c:param name="idLecturer" value="${dataFunctionalProgressLectors.idLecturer}"></c:param>
                                                                    </c:url>
                                                                    <td>
                                                                        <a href="${show}"><span class="fa fa-pencil"></span></a>
                                                                    </td>
                                                                    <c:url var="delete" value="deleteDetailProgressLecturer.htm">
                                                                        <c:param name="idProgressHistory" value="${dataLecturerProgressLectors.idProgressHistory}"></c:param>
                                                                    </c:url>
                                                                    <td>
                                                                        <a href="${delete}"><span class="fa fa-trash"></span></a>
                                                                    </td>
                                                                </tr>
                                                            </c:forEach>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="clearfix"> </div>
                                        </div> 
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" 
                                 id="tab5">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="chit-chat-layer1">
                                            <div class="col-md- chit-chat-layer1-left">
                                                <div class="work-progres">
                                                    <div class="chit-chat-heading">
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                DATA DOSEN MENGAJUKAN JABATAN LEKTOR KEPALA
                                                            </div>
                                                            <div class="col-md-4 search-box" 
                                                                 align="rigth">
                                                                <form>
                                                                    <input type="text" 
                                                                           placeholder="Search..." 
                                                                           required="">	
                                                                    <input type="submit" 
                                                                           value="">					
                                                                </form>
                                                            </div>
                                                            <div>
                                                                <div class="col-md-2 btn-effcts" 
                                                                     style="margin-top: 0.5px">
                                                                    <a href="addProgressHeadlectors.htm" 
                                                                       class="hvr-bounce-to-right" >
                                                                        <button class="btn btn-1 btn-success">
                                                                            <span class="glyphicon glyphicon-plus"></span> 
                                                                            Tambah
                                                                        </button>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                        </div>     
                                                    </div>
                                                    <hr>
                                                    <div class="table-responsive">
                                                        <table class="table table-hover">
                                                            <thead>
                                                                <tr>
                                                                    <th>NIDN</th>
                                                                    <th>Nama Dosen</th>
                                                                    <th>Status Progress</th>
                                                                    <th colspan="3">Aksi</th>
                                                                </tr>
                                                            </thead>
                                                            <c:forEach var="dataFunctionalProgressHeadlectors" items="${dataFunctionalProgressHeadlectors}">
                                                            <tbody>
                                                                <tr>
                                                                    <td>${dataFunctionalProgressHeadlectors.idLecturer}</td>
                                                                    <td>${dataFunctionalProgressHeadlectors.nameLecturer}</td>
                                                                    <td>
                                                                        <c:if test="${dataFunctionalProgressHeadlectors.state == 1}">
                                                                            <button type="button" class="btn btn-sm btn-success">
                                                                                <span class="glyphicon glyphicon-ok"></span>
                                                                                Completed
                                                                            </button>
                                                                        </c:if>
                                                                        <c:if test="${dataFunctionalProgressHeadlectors.state == 0}">
                                                                            <button type="button" class="btn btn-sm btn-warning">
                                                                                <span class="glyphicon glyphicon-refresh"></span>
                                                                                On Progress
                                                                            </button>
                                                                        </c:if>
                                                                    </td>
                                                                    <c:url var="show" value="showProgressHeadlectors.htm">
                                                                        <c:param name="idLecturer" value="${dataFunctionalProgressHeadlectors.idLecturer}"></c:param>
                                                                    </c:url>
                                                                    <td>
                                                                        <a href="${show}"><span class="fa fa-pencil"></span></a>
                                                                    </td>
                                                                    <c:url var="delete" value="deleteDetailProgressLecturer.htm">
                                                                        <c:param name="idProgressHistory" value="${dataFunctionalProgressHeadlectors.idProgressHistory}"></c:param>
                                                                    </c:url>
                                                                    <td>
                                                                        <a href="${delete}"><span class="fa fa-trash"></span></a>
                                                                    </td>
                                                                </tr>
                                                            </c:forEach>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="clearfix"> </div>
                                        </div> 
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" 
                                 id="tab6">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="chit-chat-layer1">
                                            <div class="col-md- chit-chat-layer1-left">
                                                <div class="work-progres">
                                                    <div class="chit-chat-heading">
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                DATA DOSEN MENGAJUKAN GURU BESAR
                                                            </div>
                                                            <div class="col-md-4 search-box" 
                                                                 align="rigth">
                                                                <form>
                                                                    <input type="text" 
                                                                           placeholder="Search..." 
                                                                           required="">	
                                                                    <input type="submit" 
                                                                           value="">					
                                                                </form>
                                                            </div>
                                                            <div>
                                                                <div class="col-md-2 btn-effcts" 
                                                                     style="margin-top: 0.5px">
                                                                    <a href="addProgressProfessor.htm" 
                                                                       class="hvr-bounce-to-right" >
                                                                        <button class="btn btn-1 btn-success">
                                                                            <span class="glyphicon glyphicon-plus"></span> 
                                                                            Tambah
                                                                        </button>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                        </div>     
                                                    </div>
                                                    <hr>
                                                    <div class="table-responsive">
                                                        <table class="table table-hover">
                                                            <thead>
                                                                <tr>
                                                                    <th>NIDN</th>
                                                                    <th>Nama Dosen</th>
                                                                    <th>Status Progress</th>
                                                                    <th colspan="3">Aksi</th>
                                                                </tr>
                                                            </thead>
                                                            <c:forEach var="dataFunctionalProgressProfessor" items="${dataFunctionalProgressProfessor}">
                                                            <tbody>
                                                                <tr>
                                                                    <td>${dataFunctionalProgressProfessor.idLecturer}</td>
                                                                    <td>${dataFunctionalProgressProfessor.nameLecturer}</td>
                                                                    <td>
                                                                        <c:if test="${dataFunctionalProgressProfessor.state == 1}">
                                                                            <button type="button" class="btn btn-sm btn-success">
                                                                                <span class="glyphicon glyphicon-ok"></span>
                                                                                Completed
                                                                            </button>
                                                                        </c:if>
                                                                        <c:if test="${dataFunctionalProgressProfessor.state == 0}">
                                                                            <button type="button" class="btn btn-sm btn-warning">
                                                                                <span class="glyphicon glyphicon-refresh"></span>
                                                                                On Progress
                                                                            </button>
                                                                        </c:if>
                                                                    </td>
                                                                    <c:url var="show" value="showProgressProfessor.htm">
                                                                        <c:param name="idLecturer" value="${dataFunctionalProgressProfessor.idLecturer}"></c:param>
                                                                    </c:url>
                                                                    <td>
                                                                        <a href="${show}"><span class="fa fa-pencil"></span></a>
                                                                    </td>
                                                                    <c:url var="delete" value="deleteDetailProgressLecturer.htm">
                                                                        <c:param name="idProgressHistory" value="${dataFunctionalProgressProfessor.idProgressHistory}"></c:param>
                                                                    </c:url>
                                                                    <td>
                                                                        <a href="${delete}"><span class="fa fa-trash"></span></a>
                                                                    </td>
                                                                </tr>
                                                            </c:forEach>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="clearfix"> </div>
                                        </div> 
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" 
                                 id="tab7">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="chit-chat-layer1">
                                            <div class="col-md- chit-chat-layer1-left">
                                                <div class="work-progres">
                                                    <div class="chit-chat-heading">
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                DATA DOSEN MENGAJUKAN SERTIFIKASI
                                                            </div>
                                                            <div class="col-md-4 search-box" 
                                                                 align="rigth">
                                                                <form>
                                                                    <input type="text" 
                                                                           placeholder="Search..." 
                                                                           required="">	
                                                                    <input type="submit" 
                                                                           value="">					
                                                                </form>
                                                            </div>
                                                            <div>
                                                                <div class="col-md-2 btn-effcts" 
                                                                     style="margin-top: 0.5px">
                                                                    
                                                                        <button class="btn btn-1 btn-success" id="test">
                                                                            <span class="glyphicon glyphicon-plus"></span> 
                                                                            Tambah
                                                                        </button>
                                                                    
                                                                </div>
                                                            </div>
                                                        </div>     
                                                    </div>
                                                    <hr>
                                                    <div class="table-responsive">
                                                        <table class="table table-hover">
                                                            <thead>
                                                                <tr>
                                                                    <th>NIDN</th>
                                                                    <th>Nama Dosen</th>
                                                                    <th>Status Progress</th>
                                                                    <th colspan="3">Aksi</th>
                                                                </tr>
                                                            </thead>
                                                            <c:forEach var="dataSertificationProgress" items="${dataSertificationProgress}">
                                                            <tbody>
                                                                <tr>
                                                                    <td>${dataSertificationProgress.idLecturer}</td>
                                                                    <td>${dataSertificationProgress.nameLecturer}</td>
                                                                    <td>
                                                                        <c:if test="${dataSertificationProgress.state == 1}">
                                                                            <button type="button" class="btn btn-sm btn-success">
                                                                                <span class="glyphicon glyphicon-ok"></span>
                                                                                Completed
                                                                            </button>
                                                                        </c:if>
                                                                        <c:if test="${dataSertificationProgress.state == 0}">
                                                                            <button type="button" class="btn btn-sm btn-warning">
                                                                                <span class="glyphicon glyphicon-refresh"></span>
                                                                                On Progress
                                                                            </button>
                                                                        </c:if>
                                                                    </td>
                                                                    <c:url var="show" value="updateDetailProgressLecturer.htm">
                                                                        <c:param name="idLecturer" value="${dataSertificationProgress.idLecturer}"></c:param>
                                                                    </c:url>
                                                                    <td>
                                                                        <a href="${show}"><span class="fa fa-pencil"></span></a>
                                                                    </td>
                                                                    <c:url var="delete" value="deleteDetailProgressLecturer.htm">
                                                                        <c:param name="idProgressHistory" value="${dataSertificationProgress.idProgressHistory}"></c:param>
                                                                    </c:url>
                                                                    <td>
                                                                        <a href="${delete}"><span class="fa fa-trash"></span></a>
                                                                    </td>
                                                                </tr>
                                                            </c:forEach>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="clearfix"> </div>
                                        </div> 
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
                            <a href="addFileRecruitment.htm?idLecturer=15">
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
                    reloadLecturerProgressHistory();
                    
                    function reloadLecturerProgressHistory(){
                        $.ajax({
                            url: "getLecturerProgressHistory.htm",
                            type: 'GET',
                            success: function(response){
                                var data = JSON.parse(response);
                                var len = data.length;
                                if (len === 0){
                                    var content = '';
                                    $('#tableBodyLecturerProgressHistory').html(content);
                                } else {
                                    var content = '';
                                    for (var i = 0; i < len; i++){
                                        content +=' <tr>\n\
                                                        <td>' + (i + 1) + '</td>\n\
                                                        <td class="nameLecturer">' + data[i].nameLecturer + '</td>\n\
                                                        <td class="nameFaculty">' + data[i].nameFaculty + '</td>\n\
                                                        <td class="nameMajor">' + data[i].nameMajor + '</td>\n';
                                        if (data[i].state === 1){
                                            content+='<td><span class="glyphicon glyphicon-ok" style="color: green"></span></td>';
                                        } else {
                                            content+='<td><span class="glyphicon glyphicon-remove" style="color: red"></span></td>';
                                        }
                                        content+='<td>\n\
                                                    <input type="hidden" class="idProgressHistory" value="' + data[i].idProgressHistory + '"/>\n\
                                                    <input type="hidden" class="idLecturer" value="' + data[i].idLecturer + '"/>\n\
                                                    <a href="#"><span class="updateSertificationHistory fa fa-pencil"></span></a>\n\
                                                  </td>\n\
                                                </tr>';
                                        $('#tableBodyLecturerProgressHistory').html(content);
                                    }
                                }
                            }
                        });
                    }
                    
                    $("#facultyLecturerProgressHistory").change(function(){
                        var idFaculty = $('select[name=idFaculty]').val().toString();
                        if (idFaculty === "0"){
                            $.ajax({
                                url : 'getLecturerProgressHistory.htm',
                                type: 'GET',
                                success : function(response) {
                                    var data = JSON.parse(response);
                                    console.log(data);
                                    var len = data.length;
                                    var content = '';
                                    var content2 = '';
                                        for (var i = 0; i < len; i++){
                                            content +=' <tr>\n\
                                                            <td>' + (i + 1) + '</td>\n\
                                                            <td class="nameLecturer">' + data[i].nameLecturer + '</td>\n\
                                                            <td class="nameFaculty">' + data[i].nameFaculty + '</td>\n\
                                                            <td class="nameMajor">' + data[i].nameMajor + '</td>\n';
                                            if (data[i].state === 1){
                                                content+='<td><span class="glyphicon glyphicon-ok" style="color: green"></span></td>';
                                            } else {
                                                content+='<td><span class="glyphicon glyphicon-remove" style="color: red"></span></td>';
                                            }
                                            content+='<td>\n\
                                                        <input type="hidden" class="idProgressHistory" value="' + data[i].idProgressHistory + '"/>\n\
                                                        <input type="hidden" class="idLecturer" value="' + data[i].idLecturer + '"/>\n\
                                                        <a href="#"><span class="updateSertificationHistory fa fa-pencil"></span></a>\n\
                                                      </td>\n\
                                                    </tr>';
                                            $('#tableBodyLecturerProgressHistory').html(content);
                                        }
                                    content2 +='<option value="0" name="idMajor">--Semua Jurusan--</option>';
                                    $('#majorLecturerProgressHistory').html(content2);
                                }
                            });

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
                                        $('#majorLecturerProgressHistory').html(content);
                                    }
                                }
                            });
                            $.ajax({
                                url : 'getLecturerProgressHistoryByFaculty.htm',
                                data: "idFaculty=" + idFaculty,
                                type: 'GET',
                                success : function(response) {
                                    var data = JSON.parse(response);
                                    console.log(data);
                                    var len = data.length;
                                    if (len === 0){
                                        var content = '';
                                        $('#tableBodyLecturerProgressHistory').html(content);
                                    } else {
                                        var content = '';
                                        for (var i = 0; i < len; i++){
                                            content +=' <tr>\n\
                                                            <td>' + (i + 1) + '</td>\n\
                                                            <td class="nameLecturer">' + data[i].nameLecturer + '</td>\n\
                                                            <td class="nameFaculty">' + data[i].nameFaculty + '</td>\n\
                                                            <td class="nameMajor">' + data[i].nameMajor + '</td>\n';
                                            if (data[i].state === 1){
                                                content+='<td><span class="glyphicon glyphicon-ok" style="color: green"></span></td>';
                                            } else {
                                                content+='<td><span class="glyphicon glyphicon-remove" style="color: red"></span></td>';
                                            }
                                            content+='<td>\n\
                                                        <input type="hidden" class="idProgressHistory" value="' + data[i].idProgressHistory + '"/>\n\
                                                        <input type="hidden" class="idLecturer" value="' + data[i].idLecturer + '"/>\n\
                                                        <a href="#"><span class="updateSertificationHistory fa fa-pencil"></span></a>\n\
                                                      </td>\n\
                                                    </tr>';
                                            $('#tableBodyLecturerProgressHistory').html(content);
                                        }
                                    }
                                }
                            });
                        }
                    });
                    
                    $("#majorLecturerProgressHistory").change(function(){
                        var idMajor = $('select[name=idMajor]').val().toString();
                        var idFaculty = $('select[name=idFaculty]').val().toString();
                        $.ajax({
                            url : 'getDataLecturerByMajor.htm',
                            data: {idMajor: idMajor, idFaculty: idFaculty},
                            type: 'GET',
                            success : function(response) {
                                var data = JSON.parse(response);
                                console.log(data);
                                var len = data.length;
                                if (len === 0){
                                    var content = '';
                                    $('#tableBodyLecturerProgressHistory').html(content);
                                } else {
                                    var content = '';
                                    for (var i = 0; i < len; i++){
                                        content +=' <tr>\n\
                                                        <td>' + (i + 1) + '</td>\n\
                                                        <td class="nameLecturer">' + data[i].nameLecturer + '</td>\n\
                                                        <td class="nameFaculty">' + data[i].nameFaculty + '</td>\n\
                                                        <td class="nameMajor">' + data[i].nameMajor + '</td>\n';
                                        if (data[i].state === 1){
                                            content+='<td><span class="glyphicon glyphicon-ok" style="color: green"></span></td>';
                                        } else {
                                            content+='<td><span class="glyphicon glyphicon-remove" style="color: red"></span></td>';
                                        }
                                        content+='<td>\n\
                                                    <input type="hidden" class="idProgressHistory" value="' + data[i].idProgressHistory + '"/>\n\
                                                    <input type="hidden" class="idLecturer" value="' + data[i].idLecturer + '"/>\n\
                                                    <a href="#"><span class="updateSertificationHistory fa fa-pencil"></span></a>\n\
                                                  </td>\n\
                                                </tr>';
                                        $('#tableBodyLecturerProgressHistory').html(content);
                                    }
                                }
                            }
                        });
                    });
                });
        </script>
        <script src="resource/js/jquery.nicescroll.js"></script>
        <script src="resource/js/scripts.js"></script>
        <script src="resource/js/bootstrap.js"> </script>
        <div id="dialog" title="Basic dialog">
            <p>This is the default dialog which is useful for displaying information. The dialog window can be moved, resized and closed with the 'x' icon.</p>
        </div>
    </body>
</html>                     
