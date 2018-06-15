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
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
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
        
        <!--autocomplete file library-->
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
                            <h3 style="margin-top: 13px;">PORTOFOLIO</h3>
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
                                   aria-expanded="true">
                                    Biodata Dosen
                                </a>
                            </li>
                            <li class="">
                                <a href="#tab2" 
                                   data-toggle="tab" 
                                   aria-expanded="false">
                                    File Dosen
                                </a>
                            </li>
                            <li class="">
                                <a href="#tab3" 
                                   data-toggle="tab" 
                                   aria-expanded="false">
                                    Riwayat Mengajar
                                </a>
                            </li>
                            <li class="">
                                <a href="#tab4" 
                                   data-toggle="tab" 
                                   aria-expanded="false">
                                    Riwayat Pendidikan
                                </a>
                            </li>
                            <li class="">
                                <a href="#tab5" 
                                   data-toggle="tab" 
                                   aria-expanded="false">
                                    Riwayat Fungsional
                                </a>
                            </li>
                            <li class="">
                                <a href="#tab6" 
                                   data-toggle="tab" 
                                   aria-expanded="false">
                                    Riwayat Sertifikasi
                                </a>
                            </li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane" 
                                 id="tab1">
                                <br>
                                <br>
                                <div class="row">
                                    <div class="col-md-offset-1 col-md-7">
                                        <div class="row">
                                            <div class="col-md-3">
                                                NIDN
                                            </div>
                                            <div class="col-md-1">
                                                :
                                            </div>
                                            <div class="col-md-7">
                                                ${listBiodata.nidn}
                                            </div>
                                        </div>
                                        <br>
                                        <div class="row">
                                            <div class="col-md-3">
                                                Nama Lengkap
                                            </div>
                                            <div class="col-md-1">
                                                :
                                            </div>
                                            <div class="col-md-7">
                                                ${listBiodata.nameLecturer}
                                            </div>
                                        </div>
                                        <br>
                                        <div class="row">
                                            <div class="col-md-3">
                                                Tempat Lahir
                                            </div>
                                            <div class="col-md-1">
                                                :
                                            </div>
                                            <div class="col-md-7">
                                                ${listBiodata.birthplace}
                                            </div>
                                        </div>
                                        <br>
                                        <div class="row">
                                            <div class="col-md-3">
                                                Tanggal Lahir
                                            </div>
                                            <div class="col-md-1">
                                                :
                                            </div>
                                            <div class="col-md-7">
                                                ${listBiodata.birthdate}
                                            </div>
                                        </div>
                                        <br>
                                        <div class="row">
                                            <div class="col-md-3">
                                                Jenis Kelamin
                                            </div>
                                            <div class="col-md-1">
                                                :
                                            </div>
                                            <div class="col-md-7">
                                                ${listBiodata.nameGender}
                                            </div>
                                        </div>
                                        <br>
                                        <div class="row">
                                            <div class="col-md-3">
                                                Alamat
                                            </div>
                                            <div class="col-md-1">
                                                :
                                            </div>
                                            <div class="col-md-7">
                                                ${listBiodata.address}
                                            </div>
                                        </div>
                                        <br>
                                        <div class="row">
                                            <div class="col-md-3">
                                                Agama
                                            </div>
                                            <div class="col-md-1">
                                                :
                                            </div>
                                            <div class="col-md-7">
                                                ${listBiodata.nameReligion}
                                            </div>
                                        </div>
                                        <br>
                                        <div class="row">
                                            <div class="col-md-3">
                                                No Telepon
                                            </div>
                                            <div class="col-md-1">
                                                :
                                            </div>
                                            <div class="col-md-7">
                                                ${listBiodata.numberPhone}
                                            </div>
                                        </div>
                                        <br>
                                        <div class="row">
                                            <div class="col-md-3">
                                                Email
                                            </div>
                                            <div class="col-md-1">
                                                :
                                            </div>
                                            <div class="col-md-7">
                                                ${listBiodata.email}
                                            </div>
                                        </div>
                                        <br>
                                        <div class="row">
                                            <div class="col-md-3">
                                                Prodi / Jurusan
                                            </div>
                                            <div class="col-md-1">
                                                :
                                            </div>
                                            <div class="col-md-7">
                                                pendidikan
                                            </div>
                                        </div>
                                        <br>
                                        <div class="row">
                                            <div class="col-md-3">
                                                Fakultas
                                            </div>
                                            <div class="col-md-1">
                                                :
                                            </div>
                                            <div class="col-md-7">
                                                gelar
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <img src="resource/images/pasim.jpg" style="width: 120px; height: 180px" />
                                            </div>
                                        </div>
                                        <br>
                                        <br>
                                        <div class="row">
                                            <div class="col-md-3">
                                                Fakultas
                                            </div>
                                            <div class="col-md-1">
                                                :
                                            </div>
                                            <div class="col-md-7">
                                                gelar
                                            </div>
                                        </div>
                                        <br>
                                        <div class="row">
                                            <div class="col-md-3">
                                                Fakultas
                                            </div>
                                            <div class="col-md-1">
                                                :
                                            </div>
                                            <div class="col-md-7">
                                                gelar
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" 
                                 id="tab2">
                                <br>
                                <br>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="row">
                                            <div class="col-md-offset-8 col-md-3">
                                                <input type="search"
                                                       name="nameSearchFile"
                                                           placeholder="Search..."
                                                           class="form-control"
                                                           required="">
                                            </div>
                                            <div class="col-md-1" align="left">
                                                <button id="searchFile" 
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
                                                        <th>Nama Dokumen / File</th>
                                                        <th>Aksi</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    
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
                                    <form action="saveLectureHistory.htm"
                                               id="formLectureHistory"
                                               name="lectureHistory"
                                               enctype="multipart/form-data"
                                               method="POST">
                                        
                                    <div class="col-md-6">
                                            <div class="row">
                                                <div class="col-md-5">
                                                    <input type="hidden" name="idLecturer"
                                                                 value="${listBiodata.idLecturer}"/>
                                                </div>
                                                <div class="col-md-5">
                                                    <input type="hidden" name="idTranFile"
                                                                 value="0"/>
                                                </div>
                                                <div class="col-md-5">
                                                    <input type="hidden" name="idLectureHistory"
                                                                 value="0"/>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-4" style="margin-top: 7px;">
                                                    Mata Kuliah<span style="color: red">*</span>
                                                </div>
                                                <div class="col-md-8">
                                                    <input type="text" 
                                                           class="form-control"
                                                           id="lecture"
                                                           name="nameLecture"
                                                           required=""/>
                                                </div>
                                            </div>
                                            <br>
                                            <div class="row">
                                                <div class="col-md-4" style="margin-top: 7px;">
                                                    Semester<span style="color: red">*</span>
                                                </div>
                                                <div class="col-md-8">
                                                    <select name="semester" 
                                                        class="form-control"
                                                        required="">
                                                        <option value="" 
                                                                class="form-control"
                                                                selected="true">
                                                            --Pilih Semester--
                                                        </option>
                                                        <option value="Genap" 
                                                            class="form-control">
                                                                Genap
                                                        </option>
                                                        <option value="Ganjil" 
                                                            class="form-control">
                                                                Ganjil
                                                        </option>
                                                    </select>
                                                </div>
                                            </div>
                                            <br>
                                            <div class="row">
                                                <div class="col-md-4" style="margin-top: 7px;">
                                                    Tahun<span style="color: red">*</span>
                                                </div>
                                                <div class="col-md-8">
                                                    <input type="number"
                                                           placeholder="Tahun" 
                                                           name="year"
                                                           class="form-control"
                                                           required=""/>
                                                </div>
                                            </div>
                                            <br>
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <input type="submit" 
                                                           value="Simpan"
                                                           class="form-control-submit"/>
                                                </div>
                                                <div class="col-md-4">
                                                    <input type="reset"
                                                           value="Reset"
                                                           class="form-control-submit"/>
                                                </div>
                                            </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="row">
                                            <div class="col-md-4" style="margin-top: 7px;">
                                                Jenis Dokumen
                                            </div>
                                            <div class="col-md-8">
                                                <select name="idDetail"
                                                             class="form-control"
                                                             required="">
                                                    <option value=""
                                                            class="form-control"
                                                            selected="true">
                                                        --Pilih Jenis Dokumen--
                                                    </option>
                                                    <c:forEach var="dataDetailFile" items="${fileHistoryLecture}">
                                                        <option value="${dataDetailFile.idDetail}">
                                                            ${dataDetailFile.nameDokumen}
                                                        </option>
                                                    </c:forEach>
                                                </select>
                                            </div>
                                        </div>
                                        <br>
                                        <div class="row">
                                            <div class="col-lg-offset-4 col-md-8">
                                                <input type="file" 
                                                       name="file"
                                                       class="form-control" />
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <i style="font-size: 12px">Keterangan :</i> 
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <i style="font-size: 12px">Isian bertanda <span style="color: red;">*</span> wajib untuk diisi</i>
                                            </div>
                                         </div>    
                                        <div class="row">
                                            <div class="col-md-12">
                                                <i style="font-size: 12px">File yang perlu diupload adalah Surat Keterangan Riwayat Mengajar Dosen (jika ada),
                                                file harus berjenis PDF dengan ukuran paling besar maksimal 500kb.</i>
                                            </div>    
                                        </div>
                                                            
                                    </div>
                                    </form> 
                                </div>                             
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="row">
                                            <div class="col-md-offset-8 col-md-3">
                                                <input type="search"
                                                       name="nameSearchFile"
                                                           placeholder="Search..."
                                                           class="form-control"
                                                           required="">
                                            </div>
                                            <div class="col-md-1" align="left">
                                                <button id="searchFile" 
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
                                                        <th>Semester</th>
                                                        <th>Tahun</th>
                                                        <th>Kode Mata Kuliah</th>
                                                        <th>Nama Mata Kuliah</th>
                                                        <th colspan="2">Aksi</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    
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
                                                            DATA RIWAYAT PENDIDIKAN
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
                                                                    <c:url var="add" 
                                                                           value="addStudyHistory.htm">
                                                                        <c:param name="idLecturer"
                                                                                 value="${listBiodata.idLecturer}">
                                                                        </c:param>
                                                                    </c:url>
                                                                    <a href="${add}" 
                                                                       class="hvr-bounce-to-right" >
                                                                        <button class="btn btn-1 btn-success">
                                                                            <span class="glyphicon glyphicon-plus"></span> Tambah
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
                                                                    <th>Nomor</th>
                                                                    <th>Perguruan Tinggi</th>
                                                                    <th>Gelar Akademik</th>
                                                                    <th>Tanggal Ijazah</th>
                                                                    <th>Jenjang</th>
                                                                    <th colspan="2">Aksi</th>
                                                                </tr>
                                                            </thead>
                                                            <c:set var="index" value="1"/>
                                                            <c:forEach var="listStudyHistory" items="${dataStudyHistory}">
                                                            <tbody>
                                                                <tr>
                                                                    <td>${index}</td>
                                                                    <td>${listStudyHistory.nameUniversity}</td>
                                                                    <td>${listStudyHistory.degree}</td>
                                                                    <td>${listStudyHistory.graduateYear}</td>
                                                                    <td>${listStudyHistory.studyDescription}</td>
                                                                    <c:url var="update" value="updateStudyHistory.htm">
                                                                        <c:param name="idStudyHistory" value="${listStudyHistory.idStudyHistory}"></c:param>
                                                                    </c:url>
                                                                    <td>
                                                                        <a href="${update}"><span class="fa fa-pencil"></span></a>
                                                                    </td>
                                                                    <c:url var="delete" value="deleteStudyHistory.htm">
                                                                        <c:param name="idStudyHistory" value="${listStudyHistory.idStudyHistory}"></c:param>
                                                                        <c:param name="idTranFile" value="${listStudyHistory.idTranFile}"></c:param>
                                                                        <c:param name="idLecturer" value="${listStudyHistory.idLecturer}"></c:param>
                                                                    </c:url>
                                                                    <td>
                                                                        <a href="${delete}"><span class="fa fa-trash"></span></a>
                                                                    </td>
                                                                </tr>
                                                            </tbody>
                                                            <c:set var="index" value="${index+1}"/>
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
                                                                DATA RIWAYAT JABATAN FUNGSIONAL
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
                                                                    <c:url var="add" value="addFunctionalHistory.htm">
                                                                        <c:param name="idLecturer" value="${listBiodata.idLecturer}"></c:param>
                                                                    </c:url>
                                                                    <a href="${add}" 
                                                                       class="hvr-bounce-to-right" >
                                                                        <button class="btn btn-1 btn-success">
                                                                            <span class="glyphicon glyphicon-plus"></span> Tambah
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
                                                                    <th>Nomor</th>
                                                                    <th>Jabatan</th>
                                                                    <th>No. SK</th>
                                                                    <th>TMT SK</th>
                                                                    <th colspan="2">Aksi</th>
                                                                </tr>
                                                            </thead>
                                                            <c:set var="index" value="1"/>
                                                            <c:forEach var="listFunctionalHistory" items="${dataFunctionalHistory}">
                                                            <tbody>
                                                                <tr>
                                                                    <td>${index}</td>
                                                                    <td>${listFunctionalHistory.nameFunctional}</td>
                                                                    <td>${listFunctionalHistory.skNumber}</td>
                                                                    <td>${listFunctionalHistory.skDate}</td>
                                                                    <c:url var="update" value="updateFunctionalHistory.htm">
                                                                        <c:param name="idFunctionalHistory" value="${listFunctionalHistory.idFunctionalHistory}"></c:param>
                                                                    </c:url>
                                                                    <td>
                                                                        <a href="${update}"><span class="fa fa-pencil"></span></a>
                                                                    </td>
                                                                    <c:url var="delete" value="deleteFunctionalHistory.htm">
                                                                        <c:param name="idFunctionalHistory" value="${listFunctionalHistory.idFunctionalHistory}"></c:param>
                                                                        <c:param name="idTranFile" value="${listFunctionalHistory.idTranFile}"></c:param>
                                                                        <c:param name="idLecturer" value="${listFunctionalHistory.idLecturer}"></c:param>
                                                                    </c:url>
                                                                    <td>
                                                                        <a href="${delete}"><span class="fa fa-trash"></span></a>
                                                                    </td>
                                                                </tr>
                                                            </tbody>
                                                            <c:set var="index" value="${index+1}"/>
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
                                                                    DATA RIWAYAT SERTIFIKASI
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
                                                                    <c:url var="add" 
                                                                           value="addSertificationHistory.htm">
                                                                        <c:param name="idLecturer"
                                                                                 value="${listBiodata.idLecturer}">
                                                                        </c:param>
                                                                    </c:url>
                                                                    <a href="${add}" 
                                                                       class="hvr-bounce-to-right" >
                                                                        <button class="btn btn-1 btn-success">
                                                                            <span class="glyphicon glyphicon-plus"></span> Tambah
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
                                                                    <th>Nomor</th>
                                                                    <th>Jenis Sertifikasi</th>
                                                                    <th>Bidang Studi</th>
                                                                    <th>No. PTPS / Lembaga Penilai</th>
                                                                    <th>No. Registrasi (SERDIK)
                                                                    <th colspan="2">Aksi</th>
                                                                </tr>
                                                            </thead>
                                                            <c:set var="index" value="1"/>
                                                            <c:forEach var="listSertificationHistory" items="${dataSertificationHistory}">
                                                            <tbody>
                                                                <tr>
                                                                    <td>${index}</td>
                                                                    <td>${listSertificationHistory.sertificationPart}</td>
                                                                    <td>${listSertificationHistory.studyPart}</td>
                                                                    <td>${listSertificationHistory.ptpsNumber}</td>
                                                                    <td>${listSertificationHistory.registrationNumber}</td>
                                                                    <c:url var="update" value="updateSertificationHistory.htm">
                                                                        <c:param name="idSertificationHistory" value="${listSertificationHistory.idSertificationHistory}"></c:param>
                                                                    </c:url>
                                                                    <td>
                                                                        <a href="${update}"><span class="fa fa-pencil"></span></a>
                                                                    </td>
                                                                    <c:url var="delete" value="deleteSertificationHistory.htm">
                                                                        <c:param name="idSertificationHistory" value="${listSertificationHistory.idSertificationHistory}"></c:param>
                                                                        <c:param name="idTranFile" value="${listSertificationHistory.idTranFile}"></c:param>
                                                                        <c:param name="idLecturer" value="${listSertificationHistory.idLecturer}"></c:param>
                                                                    </c:url>
                                                                    <td>
                                                                        <a href="${delete}"><span class="fa fa-trash"></span></a>
                                                                    </td>
                                                                </tr>
                                                            </tbody>
                                                            <c:set var="index" value="${index+1}"/>
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
            $.ajax({
                url: "getLecture.htm",
                type: 'GET',
                success: function(response){
                    var data = JSON.parse(response);
                    var len = data.length;
                    var lecture = [];
                    for (var i = 0; i < len; i++){
                        lecture[i] = data[i].nameLecture;
                    }
                    $('#lecture').autocomplete({
                       source:  lecture
                    });
                }
            });
            
            $('#formLectureHistory').submit(function(e){
                e.preventDefault();
                $.ajax({
                    url: "saveLectureHistory.htm",
                    data: $('#formLectureHistory').serialize(),
                    dataType: "form-data",
                    type: 'POST',
                    error: function(){
//                        $(function(){
//                            $.growl.notice({title: "Berhasil", message: "Data berhasil ditambahkan !" });
//                        });
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
