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
                                                <tbody id="tableBodyFile">
                                                    
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
                                                    <input type="hidden"
                                                           name="idLecturer"
                                                           value="${listBiodata.idLecturer}"/>
                                                </div>
                                                <div class="col-md-5">
                                                    <input type="hidden"
                                                           id="idTranFileLectureHistory"
                                                           name="idTranFile"
                                                           value="0"/>
                                                </div>
                                                <div class="col-md-5">
                                                    <input type="hidden"
                                                           name="idLectureHistory"
                                                           value="0"/>
                                                </div>
                                                <div class="col-md-5">
                                                    <input type="hidden"
                                                           id="pathFileLectureHistory"
                                                           name="pathFile"
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
                                                           placeholder="Nama Mata Kuliah"
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
                                                           id="resetLectureHistory"
                                                           class="form-control-submit"/>
                                                </div>
                                            </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="row">
                                            <div class="col-md-4" style="margin-top: 7px;">
                                                Jenis Dokumen<span style="color: red">*</span>
                                            </div>
                                            <div class="col-md-8">
                                                <select name="idDetail"
                                                        id="idDetailLectureHistory"
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
                                                       id="fileLectureHistory"
                                                       required=""
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
                                                <i style="font-size: 12px">File yang perlu diupload adalah Surat Keterangan Riwayat Mengajar Dosen,
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
                                                       name="nameSearchLectureHistory"
                                                           placeholder="Search..."
                                                           class="form-control"
                                                           required="">
                                            </div>
                                            <div class="col-md-1" align="left">
                                                <button id="searchLectureHistory" 
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
                                                        <th>Mata Kuliah</th>
                                                        <th>Semester</th>
                                                        <th>Tahun</th>
                                                        <th colspan="2">Aksi</th>
                                                    </tr>
                                                </thead>
                                                <tbody id="tableBodyLectureHistory">
                                                    
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" 
                                 id="tab4">
                                <div class="row">
                                    <form action="saveStudyHistory.htm"
                                               id="formStudyHistory"
                                               name="studyHistory"
                                               enctype="multipart/form-data"
                                               method="POST">
                                        <div class="col-md-6">
                                            <div class="row">
                                                <div class="row">
                                                    <div class="col-md-5">
                                                        <input type="hidden"
                                                               name="idLecturer"
                                                               value="${listBiodata.idLecturer}"/>
                                                    </div>
                                                    <div class="col-md-5">
                                                        <input type="hidden"
                                                               id="idTranFileStudyHistory"
                                                               name="idTranFile"
                                                               value="0"/>
                                                    </div>
                                                    <div class="col-md-5">
                                                        <input type="hidden"
                                                               name="idStudyHistory"
                                                               value="0"/>
                                                    </div>
                                                    <div class="col-md-5">
                                                        <input type="hidden"
                                                               id="pathFileStudyHistory"
                                                               name="pathFile"
                                                               value="0"/>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-4" style="margin-top: 7px;">
                                                    Perguruan Tinggi<span style="color: red">*</span>
                                                </div>
                                                <div class="col-md-8">
                                                    <input type="text" 
                                                           class="form-control"
                                                           id="study"
                                                           placeholder="Perguruan Tinggi"
                                                           name="nameUniversity"
                                                           required=""/>
                                                </div>
                                            </div>
                                            <br>
                                            <div class="row">
                                                <div class="col-md-4" style="margin-top: 7px;">
                                                    Program Studi<span style="color: red">*</span>
                                                </div>
                                                <div class="col-md-8">
                                                    <input type="text" 
                                                           class="form-control"
                                                           placeholder="Program Studi"
                                                           name="studyProgram"
                                                           required=""/>
                                                </div>
                                            </div>
                                            <br>
                                            <div class="row">
                                                <div class="col-md-4" style="margin-top: 7px;">
                                                    Gelar Akademik<span style="color: red">*</span>
                                                </div>
                                                <div class="col-md-8">
                                                    <input type="text" 
                                                           class="form-control"
                                                           placeholder="Gelar Akademik"
                                                           name="degree"
                                                           required=""/>
                                                </div>
                                            </div>
                                            <br>
                                            <div class="row">
                                                <div class="col-md-4" style="margin-top: 7px;">
                                                    Tahun Masuk<span style="color: red">*</span>
                                                </div>
                                                <div class="col-md-8">
                                                    <input type="text" 
                                                           class="form-control"
                                                           placeholder="Tahun Masuk"
                                                           name="joinYear"
                                                           required=""/>
                                                </div>
                                            </div>
                                            <br>
                                            <div class="row">
                                                <div class="col-md-4" style="margin-top: 7px;">
                                                    Tahun Lulus<span style="color: red">*</span>
                                                </div>
                                                <div class="col-md-8">
                                                    <input type="text" 
                                                           class="form-control"
                                                           placeholder="Tahun Lulus"
                                                           name="graduateYear"
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
                                                           id="resetStudyHistory"
                                                           class="form-control-submit"/>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="row">
                                                <div class="col-md-4" style="margin-top: 7px;">
                                                    Jenjang<span style="color: red">*</span>
                                                </div>
                                                <div class="col-md-8">
                                                    <select name="idStudy" 
                                                        class="form-control" 
                                                        required="">
                                                        <option value="" 
                                                                     selected="true">--Pilih Jenjang Pendidikan--
                                                        </option>
                                                        <c:forEach var="dataStudy" 
                                                                   items="${dataStudy}">
                                                            <option value="${dataStudy.idStudy}" 
                                                                class="form-control">
                                                                    ${dataStudy.studyDescription}
                                                            </option>
                                                        </c:forEach>
                                                    </select>
                                                </div>
                                            </div>
                                            <br>
                                            <div class="row">
                                                <div class="col-md-4" style="margin-top: 7px;">
                                                    Jenis Dokumen<span style="color: red">*</span>
                                                </div>
                                                <div class="col-md-8">
                                                    <select name="idDetail"
                                                            id="idDetailStudyHistory"
                                                            class="form-control"
                                                            readonly=""
                                                            required="">
                                                        <option value=""
                                                                class="form-control"
                                                                selected="true"
                                                                >
                                                            --Pilih Jenis Dokumen--
                                                        </option>
                                                        <c:forEach var="dataDetailFile" items="${fileHistoryStudy}">
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
                                                           id="fileStudyHistory"
                                                           required=""
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
                                                    <i style="font-size: 12px">File yang perlu diupload adalah Fotokopi/Scan Ijazah S1, S2, S3,
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
                                                       name="nameSearchStudyHistory"
                                                           placeholder="Search..."
                                                           class="form-control"
                                                           required="">
                                            </div>
                                            <div class="col-md-1" align="left">
                                                <button id="searchStudyHistory" 
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
                                                        <th>Perguruan Tinggi</th>
                                                        <th>Jenjang</th>
                                                        <th>Gelar</th>
                                                        <th>Tahun Lulus</th>
                                                        <th colspan="2">Aksi</th>
                                                    </tr>
                                                </thead>
                                                <tbody id="tableBodyStudyHistory">

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
                                        <form action="saveFunctionalHistory.htm"
                                               id="formFunctionalHistory"
                                               name="functionalHistory"
                                               enctype="multipart/form-data"
                                               method="POST">    
                                            <div class="col-md-6">
                                                <div class="row">
                                                    <div class="col-md-5">
                                                        <input type="hidden"
                                                               name="idLecturer"
                                                               value="${listBiodata.idLecturer}"/>
                                                    </div>
                                                    <div class="col-md-5">
                                                        <input type="hidden"
                                                               id="idTranFileFunctionalHistory"
                                                               name="idTranFile"
                                                               value="0"/>
                                                    </div>
                                                    <div class="col-md-5">
                                                        <input type="hidden"
                                                               name="idFunctionalHistory"
                                                               value="0"/>
                                                    </div>
                                                    <div class="col-md-5">
                                                        <input type="hidden"
                                                               id="pathFileFunctionalHistory"
                                                               name="pathFile"
                                                               value="0"/>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-4" style="margin-top: 7px;">
                                                        Jabatan<span style="color: red">*</span>
                                                    </div>
                                                    <div class="col-md-8">
                                                        <select name="idFunctional" 
                                                            class="form-control" 
                                                            required="">
                                                            <option value="" 
                                                                         selected="true">--Pilih Jabatan Fungsional--
                                                            </option>
                                                            <c:forEach var="dataFunctional" 
                                                                       items="${dataFunctional}">
                                                                <option value="${dataFunctional.idFunctional}" 
                                                                    class="form-control-input">
                                                                        ${dataFunctional.nameFunctional}
                                                                </option>
                                                            </c:forEach>
                                                        </select>
                                                    </div>
                                                </div>
                                                <br>
                                                <div class="row">
                                                    <div class="col-md-4" style="margin-top: 7px;">
                                                        No. SK<span style="color: red">*</span>
                                                    </div>
                                                    <div class="col-md-8">
                                                        <input type="text"
                                                               placeholder="No. SK" 
                                                               name="skNumber"
                                                               class="form-control"
                                                               required=""/>
                                                    </div>
                                                </div>
                                                <br>
                                                <div class="row">
                                                    <div class="col-md-4" style="margin-top: 7px;">
                                                        TMT SK<span style="color: red">*</span>
                                                    </div>
                                                    <div class="col-md-8">
                                                        <input type="date"
                                                               placeholder="TMT SK" 
                                                               name="skDate"
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
                                                               id="resetFunctionalHistory"
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
                                                                id="idDetailFunctionalHistory"
                                                                readonly=""
                                                                class="form-control">
                                                            <option value=""
                                                                    class="form-control"
                                                                    required=""
                                                                    selected="true">
                                                                --Pilih Jenis Dokumen--
                                                            </option>
                                                            <c:forEach var="dataDetailFile" items="${fileHistoryFunctional}">
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
                                                               id="fileFunctionalHistory"
                                                               required=""
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
                                                        <i style="font-size: 12px">File yang perlu diupload adalah Surat Keterangan Riwayat Jabatan Fungsional Dosen,
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
                                                           name="nameSearchFunctionalHistory"
                                                               placeholder="Search..."
                                                               class="form-control"
                                                               required="">
                                                </div>
                                                <div class="col-md-1" align="left">
                                                    <button id="searchFunctionalHistory" 
                                                        style="padding-top: 7px; border-radius:5px " >
                                                        <span class="glyphicon glyphicon-search"></span>
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
                                                    <th>Nomor</th>
                                                    <th>Jabatan</th>
                                                    <th>No. SK</th>
                                                    <th>TMT SK</th>
                                                    <th colspan="2">Aksi</th>
                                                </tr>
                                            </thead>
                                            <tbody id="tableBodyFunctionalHistory">
                                                
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" 
                                 id="tab6">
                                <div class="row">
                                    <div class="col-md-12">
                                        <form action="saveSertificationHistory.htm"
                                               id="formSertificationHistory"
                                               name="sertificationHistory"
                                               enctype="multipart/form-data"
                                               method="POST">    
                                            <div class="col-md-6">
                                                <div class="row">
                                                    <div class="col-md-5">
                                                        <input type="hidden"
                                                               name="idLecturer"
                                                               value="${listBiodata.idLecturer}"/>
                                                    </div>
                                                    <div class="col-md-5">
                                                        <input type="hidden"
                                                               id="idTranFileSertificationHistory"
                                                               name="idTranFile"
                                                               value="0"/>
                                                    </div>
                                                    <div class="col-md-5">
                                                        <input type="hidden"
                                                               name="idSertificationHistory"
                                                               value="0"/>
                                                    </div>
                                                    <div class="col-md-5">
                                                        <input type="hidden"
                                                               id="pathFileSertificationHistory"
                                                               name="pathFile"
                                                               value="0"/>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-4" style="margin-top: 7px;">
                                                        Jenis Sertifikasi<span style="color: red">*</span>
                                                    </div>
                                                    <div class="col-md-8">
                                                        <input type="text"
                                                               placeholder="Jenis Sertifikasi" 
                                                               name="sertificationPart"
                                                               class="form-control"
                                                               required=""/>
                                                    </div>
                                                </div>
                                                <br>
                                                <div class="row">
                                                    <div class="col-md-4" style="margin-top: 7px;">
                                                        Bidang Studi<span style="color: red">*</span>
                                                    </div>
                                                    <div class="col-md-8">
                                                        <input type="text"
                                                               placeholder="Bidang Studi" 
                                                               name="studyPart"
                                                               class="form-control"
                                                               required=""/>
                                                    </div>
                                                </div>
                                                <br>
                                                <div class="row">
                                                    <div class="col-md-4" style="margin-top: 7px;">
                                                        No. PTPS<span style="color: red">*</span>
                                                    </div>
                                                    <div class="col-md-8">
                                                        <input type="text"
                                                               placeholder="No. PTPS / Lembaga Penilai" 
                                                               name="ptpsNumber"
                                                               class="form-control"
                                                               required=""/>
                                                    </div>
                                                </div>
                                                <br>
                                                <div class="row">
                                                    <div class="col-md-4" style="margin-top: 7px;">
                                                        No. Registrasi<span style="color: red">*</span>
                                                    </div>
                                                    <div class="col-md-8">
                                                        <input type="text"
                                                               placeholder="No. Registrasi (SERDIK)" 
                                                               name="registrationNumber"
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
                                                               id="resetSertificationHistory"
                                                               class="form-control-submit"/>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="row">
                                                    <div class="col-md-4" style="margin-top: 7px;">
                                                        Jenis Dokumen<span style="color: red">*</span>
                                                    </div>
                                                    <div class="col-md-8">
                                                        <select name="idDetail"
                                                                id="idDetailSertificationHistory"
                                                                class="form-control"
                                                                required="">
                                                            <option value=""
                                                                    class="form-control"
                                                                    selected="true">
                                                                --Pilih Jenis Dokumen--
                                                            </option>
                                                            <c:forEach var="dataDetailFile" items="${fileHistorySertification}">
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
                                                               required=""
                                                               id="fileSertificationHistory"
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
                                                        <i style="font-size: 12px">File yang perlu diupload adalah Surat Keterangan Riwayat Sertifikasi Dosen (jika ada),
                                                        file harus berjenis PDF dengan ukuran paling besar maksimal 500kb.</i>
                                                    </div>    
                                                </div>                   
                                            </div>
                                        </form> 
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="row">
                                            <div class="col-md-offset-8 col-md-3">
                                                <input type="search"
                                                       name="nameSearchSertificationHistory"
                                                           placeholder="Search..."
                                                           class="form-control"
                                                           required="">
                                            </div>
                                            <div class="col-md-1" align="left">
                                                <button id="searchSertificationHistory" 
                                                    style="padding-top: 7px; border-radius:5px " >
                                                    <span class="glyphicon glyphicon-search"></span>
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
                                                <th>Nomor</th>
                                                <th>Jenis Sertifikasi</th>
                                                <th>Bidang Studi</th>
                                                <th>No. PTPS / Lembaga Penilai</th>
                                                <th>No. Registrasi (SERDIK)
                                                <th colspan="2">Aksi</th>
                                            </tr>
                                        </thead>
                                        <tbody id="tableBodySertificationHistory">
                                            
                                        </tbody>
                                    </table>
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
                        <a href="portofolio_dosen.htm?idLecturer=${sessionScope.idLecturer}">
                            <i class="fa fa-book nav_icon"></i>
                            <span>Portofolio</span>
                        </a>
                    </li>
                    <li>
                        <a href="showProgress.htm">
                        <i class="fa fa-bar-chart"></i>
                        <span>Progress</span>
                        </a>
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
            reloadAutocomplete();
            reloadDataFile();
            reloadLectureHistory();
            reloadStudyHistory();
            reloadFunctionalHistory();
            reloadSertificationHistory();
            
            function reloadLectureHistory(){
                var idLecturer = $('input[name=idLecturer]').val();
                $.ajax({
                    url : "getLectureHistory.htm",
                    data : "idLecturer=" + idLecturer,
                    type: 'GET',
                    success: function(response){
                        var data = JSON.parse(response);
                        var len = data.length;
                        if (len === 0){
                            var content = '';
                            $('#tableBodyLectureHistory').html(content);
                        } else {
                            var content = '';
                            for (var i =0; i < len; i++){
                                content +=' <tr>\n\
                                                <td>' + (i + 1) + '</td>\n\
                                                <td class="nameLecture">' + data[i].nameLecture + '</td>\n\
                                                <td class="semester">' + data[i].semester + '</td>\n\
                                                <td class="year">' + data[i].year + '</td>\n\
                                                <td>\n\
                                                    <input type="hidden" class="idLectureHistory" value="' + data[i].idLectureHistory + '"/>\n\
                                                    <input type="hidden" class="idTranFile" value="' + data[i].idTranFile + '"/>\n\
                                                    <input type="hidden" class="idDetail" value="' + data[i].idDetail + '"/>\n\
                                                    <a href="#"><span class="updateLectureHistory fa fa-pencil"></span></a>\n\
                                                </td>\n\
                                                <td>\n\
                                                    <a href="#"><span class="deleteLectureHistory fa fa-trash"></span></a>\n\
                                                </td>\n\
                                            </tr>';
                                $('#tableBodyLectureHistory').html(content);
                            }
                        }
                        
                        $('.updateLectureHistory').click(function(){
                            var nameLecture = $(this).closest('tr').find('.nameLecture').html();
                            var semester = $(this).closest('tr').find('.semester').html();
                            var year = $(this).closest('tr').find('.year').html();
                            var idLectureHistory = $(this).closest('tr').find('.idLectureHistory').val();
                            var idTranFile = $(this).closest('tr').find('.idTranFile').val();
                            var idDetail = $(this).closest('tr').find('.idDetail').val();
                            $('input[id=idTranFileLectureHistory]').val(idTranFile);
                            $('input[name=idLectureHistory]').val(idLectureHistory);
                            $('input[name=year]').val(year);
                            $('select[name=semester]').val(semester);
                            $('input[name=nameLecture]').val(nameLecture);
                            $('select[id=idDetailLectureHistory]').val(idDetail);
                        });
                        
                        $('.deleteLectureHistory').click(function(){
                            var idLectureHistory = $(this).closest('tr').find('.idLectureHistory').val();
                            var idTranFile = $(this).closest('tr').find('.idTranFile').val();
                            $.ajax({
                                url : "deleteLectureHistory.htm",
                                data : {idTranFile: idTranFile, idLectureHistory: idLectureHistory},
                                type: 'GET',
                                success: function(response){
                                    $(function(){
                                        $.growl.notice({title: "Berhasil", message: "Data berhasil dihapus !"});
                                    });
                                    reloadDataFile();
                                    reloadLectureHistory();
                                }
                            });
                        });
                        
                        $('#resetLectureHistory').click(function(){
                            $('input[id=idTranFileLectureHistory]').val(0);
                            $('input[name=idLectureHistory]').val(0);
                        });
                    }
                });
            }
            
            function reloadStudyHistory(){
                var idLecturer = $('input[name=idLecturer]').val();
                $.ajax({
                    url : "getStudyHistory.htm",
                    data : "idLecturer=" + idLecturer,
                    type: 'GET',
                    success: function(response){
                        var data = JSON.parse(response);
                        var len = data.length;
                        if (len === 0){
                            var content = '';
                            $('#tableBodyStudyHistory').html(content);
                        } else {
                            var content = '';
                            for (var i =0; i < len; i++){
                                var content = '';
                                for (var i =0; i < len; i++){
                                    content +=' <tr>\n\
                                                    <td>' + (i + 1) + '</td>\n\
                                                    <td class="nameUniversity">' + data[i].nameUniversity + '</td>\n\
                                                    <td class="studyDescription">' + data[i].studyDescription + '</td>\n\
                                                    <td class="degree">' + data[i].degree + '</td>\n\
                                                    <td class="graduateYear">' + data[i].graduateYear + '</td>\n\
                                                    <td>\n\
                                                        <input type="hidden" class="idStudyHistory" value="' + data[i].idStudyHistory + '"/>\n\
                                                        <input type="hidden" class="idTranFile" value="' + data[i].idTranFile + '"/>\n\
                                                        <input type="hidden" class="idStudy" value="' + data[i].idStudy + '"/>\n\
                                                        <input type="hidden" class="idDetail" value="' + data[i].idDetail + '"/>\n\
                                                        <input type="hidden" class="joinYear" value="' + data[i].joinYear + '"/>\n\
                                                        <input type="hidden" class="studyProgram" value="' + data[i].studyProgram + '"/>\n\
                                                        <a href="#"><span class="updateStudyHistory fa fa-pencil"></span></a>\n\
                                                    </td>\n\
                                                    <td>\n\
                                                        <a href="#"><span class="deleteStudyHistory fa fa-trash"></span></a>\n\
                                                    </td>\n\
                                                </tr>';
                                    $('#tableBodyStudyHistory').html(content);
                                }
                            }
                        }
                        
                        $('.updateStudyHistory').click(function(){
                            var nameUniversity = $(this).closest('tr').find('.nameUniversity').html();
                            var degree = $(this).closest('tr').find('.degree').html();
                            var graduateYear = $(this).closest('tr').find('.graduateYear').html();
                            var joinYear = $(this).closest('tr').find('.joinYear').val();
                            var studyProgram = $(this).closest('tr').find('.studyProgram').val();
                            var idStudyHistory = $(this).closest('tr').find('.idStudyHistory').val();
                            var idTranFile = $(this).closest('tr').find('.idTranFile').val();
                            var idDetail = $(this).closest('tr').find('.idDetail').val();
                            var idStudy = $(this).closest('tr').find('.idStudy').val();
                            $('input[id=idTranFileStudyHistory]').val(idTranFile);
                            $('input[name=idStudyHistory]').val(idStudyHistory);
                            $('input[name=nameUniversity]').val(nameUniversity);
                            $('input[name=degree]').val(degree);
                            $('input[name=graduateYear]').val(graduateYear);
                            $('input[name=joinYear]').val(joinYear);
                            $('input[name=studyProgram]').val(studyProgram);
                            $('select[name=idStudy]').val(idStudy);
                            $('select[id=idDetailStudyHistory]').val(idDetail);
                        });
                        
                        $('.deleteStudyHistory').click(function(){
                            var idStudyHistory = $(this).closest('tr').find('.idStudyHistory').val();
                            var idTranFile = $(this).closest('tr').find('.idTranFile').val();
                            $.ajax({
                                url : "deleteStudyHistory.htm",
                                data : {idTranFile: idTranFile, idStudyHistory: idStudyHistory},
                                type: 'GET',
                                success: function(response){
                                    $(function(){
                                        $.growl.notice({title: "Berhasil", message: "Data berhasil dihapus !"});
                                    });
                                    reloadDataFile();
                                    reloadStudyHistory();
                                }
                            });
                        });
                        
                        $('#resetStudyHistory').click(function(){
                            $('input[id=idTranFileStudyHistory]').val(0);
                            $('input[name=idStudyHistory]').val(0);
                        });
                    }
                });
            }
            
            function reloadFunctionalHistory(){
                var idLecturer = $('input[name=idLecturer]').val();
                $.ajax({
                    url : "getFunctionalHistory.htm",
                    data : "idLecturer=" + idLecturer,
                    type: 'GET',
                    success: function(response){
                        var data = JSON.parse(response);
                        var len = data.length;
                        if (len === 0){
                            var content = '';
                            $('#tableBodyFunctionalHistory').html(content);
                        } else {
                            var content = '';
                            for (var i =0; i < len; i++){
                                var content = '';
                                for (var i =0; i < len; i++){
                                    content +=' <tr>\n\
                                                    <td>' + (i + 1) + '</td>\n\
                                                    <td class="nameFunctional">' + data[i].nameFunctional + '</td>\n\
                                                    <td class="skNumber">' + data[i].skNumber + '</td>\n\
                                                    <td class="skDate">' + data[i].skDate + '</td>\n\
                                                    <td>\n\
                                                        <input type="hidden" class="idFunctionalHistory" value="' + data[i].idFunctionalHistory + '"/>\n\
                                                        <input type="hidden" class="idTranFile" value="' + data[i].idTranFile + '"/>\n\
                                                        <input type="hidden" class="idFunctional" value="' + data[i].idFunctional + '"/>\n\
                                                        <input type="hidden" class="idDetail" value="' + data[i].idDetail + '"/>\n\
                                                        <a href="#"><span class="updateFunctionalHistory fa fa-pencil"></span></a>\n\
                                                    </td>\n\
                                                    <td>\n\
                                                        <a href="#"><span class="deleteFunctionalHistory fa fa-trash"></span></a>\n\
                                                    </td>\n\
                                                </tr>';
                                    $('#tableBodyFunctionalHistory').html(content);
                                }
                            }

                            $('.updateFunctionalHistory').click(function(){
                                var skNumber = $(this).closest('tr').find('.skNumber').html();
                                var skDate = $(this).closest('tr').find('.skDate').html();
                                var idFunctionalHistory = $(this).closest('tr').find('.idFunctionalHistory').val();
                                var idTranFile = $(this).closest('tr').find('.idTranFile').val();
                                var idDetail = $(this).closest('tr').find('.idDetail').val();
                                var idFunctional = $(this).closest('tr').find('.idFunctional').val();
                                $('input[id=idTranFileStudyHistory]').val(idTranFile);
                                $('input[name=idFunctionalHistory]').val(idFunctionalHistory);
                                $('input[name=skNumber]').val(skNumber);
                                $('input[name=skDate]').val(skDate);
                                $('select[name=idFunctional]').val(idFunctional);
                                $('select[id=idDetailFunctionalHistory]').val(idDetail);
                            });

                            $('.deleteFunctionalHistory').click(function(){
                                var idFunctionalHistory = $(this).closest('tr').find('.idFunctionalHistory').val();
                                var idTranFile = $(this).closest('tr').find('.idTranFile').val();
                                $.ajax({
                                    url : "deleteFunctionalHistory.htm",
                                    data : {idTranFile: idTranFile, idFunctionalHistory: idFunctionalHistory},
                                    type: 'GET',
                                    success: function(response){
                                        $(function(){
                                            $.growl.warning({title: "Berhasil", message: "Data berhasil dihapus !"});
                                        });
                                        reloadDataFile();
                                        reloadFunctionalHistory();
                                    }
                                });
                            });

                            $('#resetFunctionalHistory').click(function(){
                                $('input[id=idTranFileFunctionalHistory]').val(0);
                                $('input[name=idFunctionalHistory]').val(0);
                            });
                        }
                    }
                });
            }
            
            function reloadSertificationHistory(){
                var idLecturer = $('input[name=idLecturer]').val();
                $.ajax({
                    url : "getSertificationHistory.htm",
                    data : "idLecturer=" + idLecturer,
                    type: 'GET',
                    success: function(response){
                        var data = JSON.parse(response);
                        var len = data.length;
                        if (len === 0){
                            var content = '';
                            $('#tableBodySertificationHistory').html(content);
                        } else {
                            var content = '';
                            for (var i =0; i < len; i++){
                                var content = '';
                                for (var i =0; i < len; i++){
                                    content +=' <tr>\n\
                                                    <td>' + (i + 1) + '</td>\n\
                                                    <td class="sertificationPart">' + data[i].sertificationPart + '</td>\n\
                                                    <td class="studyPart">' + data[i].studyPart + '</td>\n\
                                                    <td class="ptpsNumber">' + data[i].ptpsNumber + '</td>\n\
                                                    <td class="registrationNumber">' + data[i].registrationNumber + '</td>\n\
                                                    <td>\n\
                                                        <input type="hidden" class="idSertificationHistory" value="' + data[i].idSertificationHistory + '"/>\n\
                                                        <input type="hidden" class="idTranFile" value="' + data[i].idTranFile + '"/>\n\
                                                        <input type="hidden" class="idDetail" value="' + data[i].idDetail + '"/>\n\
                                                        <a href="#"><span class="updateSertificationHistory fa fa-pencil"></span></a>\n\
                                                    </td>\n\
                                                    <td>\n\
                                                        <a href="#"><span class="deleteSertificationHistory fa fa-trash"></span></a>\n\
                                                    </td>\n\
                                                </tr>';
                                    $('#tableBodySertificationHistory').html(content);
                                }
                            }

                            $('.updateSertificationHistory').click(function(){
                                var sertificationPart = $(this).closest('tr').find('.sertificationPart').html();
                                var studyPart = $(this).closest('tr').find('.studyPart').html();
                                var ptpsNumber = $(this).closest('tr').find('.ptpsNumber').html();
                                var registrationNumber = $(this).closest('tr').find('.registrationNumber').html();
                                var idFunctionalHistory = $(this).closest('tr').find('.idFunctionalHistory').val();
                                var idTranFile = $(this).closest('tr').find('.idTranFile').val();
                                var idDetail = $(this).closest('tr').find('.idDetail').val();
                                $('input[id=idTranFileStudyHistory]').val(idTranFile);
                                $('input[name=idFunctionalHistory]').val(idFunctionalHistory);
                                $('input[name=sertificationPart]').val(sertificationPart);
                                $('input[name=studyPart]').val(studyPart);
                                $('input[name=ptpsNumber]').val(ptpsNumber);
                                $('input[name=registrationNumber]').val(registrationNumber);
                                $('select[id=idDetailSertificationHistory]').val(idDetail);
                            });

                            $('.deleteSertificationHistory').click(function(){
                                var idSertificationHistory = $(this).closest('tr').find('.idSertificationHistory').val();
                                var idTranFile = $(this).closest('tr').find('.idTranFile').val();
                                $.ajax({
                                    url : "deleteSertificationHistory.htm",
                                    data : {idTranFile: idTranFile, idSertificationHistory: idSertificationHistory},
                                    type: 'GET',
                                    success: function(response){
                                        $(function(){
                                            $.growl.warning({title: "Berhasil", message: "Data berhasil dihapus !"});
                                        });
                                        reloadDataFile();
                                        reloadSertificationHistory();
                                    }
                                });
                            });

                            $('#resetSertificationHistory').click(function(){
                                $('input[id=idTranFileSertificationHistory]').val(0);
                                $('input[name=idSertificationHistory]').val(0);
                            });
                        }
                    }
                });
            }
            
            function reloadDataFile(){
                var idLecturer = $('input[name=idLecturer]').val();
                $.ajax({
                    url : "getFile.htm",
                    data : "idLecturer=" + idLecturer,
                    type: 'GET',
                    success: function(response){
                        var data = JSON.parse(response);
                        var len = data.length;
                        var content = '';
                        for (var i =0; i < len; i++){
                            content +=' <tr>\n\
                                            <td>' + (i + 1) + '</td>\n\
                                            <td class="nameDokumen">' + data[i].nameDokumen + '</td>\n\
                                            <td>\n\
                                                <a href="#"><span class="fa fa-search"></span></a>\n\
                                            </td>\n\
                                        </tr>';
                            $('#tableBodyFile').html(content);
                        }
                    } 
                });
            }
            
            function reloadAutocomplete(){
                jAuto = jQuery.noConflict(true);
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
                        jAuto('#lecture').autocomplete({
                           source:  lecture
                        });
                    }
                });
            }            
            
            
            $('#formLectureHistory').submit(function(e){
                e.preventDefault();
                var formData = new FormData();
                formData.append('file', $('input[id=fileLectureHistory]')[0].files[0]);
                $.ajax({
                    url: "uploadFileLectureHistory.htm",
                    data: formData,
                    type: 'POST',
                    contentType: false,
                    processData: false,
                    success: function(response){
                        var data = JSON.parse(response);
                        if (data.status === 0){
                            $(function(){
                                $.growl.warning({title: "Peringatan", message: "Ukuran file terlalu besar !"});
                            });
                        } else if (data.status === 1) {
                            $(function(){
                                $.growl.warning({title: "Peringatan", message: "Ekstensi file salah !"});
                            });
                        } else {
                            $('input[name=pathFile]').val(data.pathFile);
                            $.post({
                                url : "saveLectureHistory.htm",
                                data: $('#formLectureHistory').serialize(),
                                dataType: "form-data",
                                error: function(e){
                                    $(function(){
                                        $.growl.notice({title: "Berhasil", message: "Data berhasil ditambahkan !" });
                                    });
                                    reloadDataFile();
                                    reloadLectureHistory();
                                    $('#formLectureHistory').trigger('reset');
                                    $('input[id=idTranFileLectureHistory]').val(0);
                                    $('input[name=idLectureHistory]').val(0);
                                }
                            });
                        }
                    }
                });
            });
            
            $('#formStudyHistory').submit(function(e){
                e.preventDefault();
                var formData = new FormData();
                formData.append('file', $('input[id=fileStudyHistory]')[0].files[0]);
                $.ajax({
                    url: "uploadFileStudyHistory.htm",
                    data: formData,
                    type: 'POST',
                    contentType: false,
                    processData: false,
                    success: function(response){
                        var data = JSON.parse(response);
                        if (data.status === 0){
                            $(function(){
                                $.growl.warning({title: "Peringatan", message: "Ukuran file terlalu besar !"});
                            });
                        } else if (data.status === 1) {
                            $(function(){
                                $.growl.warning({title: "Peringatan", message: "Ekstensi file salah !"});
                            });
                        } else {
                            $('input[name=pathFile]').val(data.pathFile);
                            $.post({
                                url : "saveStudyHistory.htm",
                                data: $('#formStudyHistory').serialize(),
                                dataType: "form-data",
                                error: function(e){
                                    $(function(){
                                        $.growl.notice({title: "Berhasil", message: "Data berhasil ditambahkan !" });
                                    });
                                    reloadDataFile();
                                    reloadStudyHistory();
                                    $('#formStudyHistory').trigger('reset');
                                    $('input[id=idTranFileStudyHistory]').val(0);
                                    $('input[name=idStudyHistory]').val(0);
                                }
                            });
                        }
                    }
                });
            });
            
            $('#formFunctionalHistory').submit(function(e){
                e.preventDefault();
                var formData = new FormData();
                formData.append('file', $('input[id=fileFunctionalHistory]')[0].files[0]);
                $.ajax({
                    url: "uploadFileFunctionalHistory.htm",
                    data: formData,
                    type: 'POST',
                    contentType: false,
                    processData: false,
                    success: function(response){
                        var data = JSON.parse(response);
                        if (data.status === 0){
                            $(function(){
                                $.growl.warning({title: "Peringatan", message: "Ukuran file terlalu besar !"});
                            });
                        } else if (data.status === 1) {
                            $(function(){
                                $.growl.warning({title: "Peringatan", message: "Ekstensi file salah !"});
                            });
                        } else {
                            $('input[name=pathFile]').val(data.pathFile);
                            $.post({
                                url : "saveFunctionalHistory.htm",
                                data: $('#formFunctionalHistory').serialize(),
                                dataType: "form-data",
                                error: function(e){
                                    $(function(){
                                        $.growl.notice({title: "Berhasil", message: "Data berhasil ditambahkan !" });
                                    });
                                    reloadDataFile();
                                    reloadFunctionalHistory();
                                    $('#formFunctionalHistory').trigger('reset');
                                    $('input[id=idTranFileFunctionalHistory]').val(0);
                                    $('input[name=idFunctionalHistory]').val(0);
                                }
                            });
                        }
                    }
                });
            });
            
            $('#formSertificationHistory').submit(function(e){
                e.preventDefault();
                var formData = new FormData();
                formData.append('file', $('input[id=fileSertificationHistory]')[0].files[0]);
                $.ajax({
                    url: "uploadFileSertificationHistory.htm",
                    data: formData,
                    type: 'POST',
                    contentType: false,
                    processData: false,
                    success: function(response){
                        var data = JSON.parse(response);
                        if (data.status === 0){
                            $(function(){
                                $.growl.warning({title: "Peringatan", message: "Ukuran file terlalu besar !"});
                            });
                        } else if (data.status === 1) {
                            $(function(){
                                $.growl.warning({title: "Peringatan", message: "Ekstensi file salah !"});
                            });
                        } else {
                            $('input[name=pathFile]').val(data.pathFile);
                            $.post({
                                url : "saveSertificationHistory.htm",
                                data: $('#formSertificationHistory').serialize(),
                                dataType: "form-data",
                                error: function(e){
                                    $(function(){
                                        $.growl.notice({title: "Berhasil", message: "Data berhasil ditambahkan !" });
                                    });
                                    reloadDataFile();
                                    reloadSertificationHistory();
                                    $('#formSertificationHistory').trigger('reset');
                                    $('input[id=idTranFileSertificationHistory]').val(0);
                                    $('input[name=idSertificationHistory]').val(0);
                                }
                            });
                        }
                    }
                });
            });
            
            $('#searchLectureHistory').click(function(){
                var nameLecture = $('input[name=nameSearchLectureHistory]').val();
                $.ajax({
                    url : "searchLectureHistory.htm",
                    data : "nameLecture=" + nameLecture,
                    type: 'GET',
                    success : function(response){
                        var data = JSON.parse(response);
                        var len = data.length;
                        if (len === 0){
                            $(function(){
                                $.growl.warning({title: "Maaf", message: "Data tidak ada !" });
                            });
                        } else {
                            var content = '';
                            for (var i =0; i < len; i++){
                                content +=' <tr>\n\
                                                <td>' + (i + 1) + '</td>\n\
                                                <td class="nameLecture">' + data[i].nameLecture + '</td>\n\
                                                <td class="semester">' + data[i].semester + '</td>\n\
                                                <td class="year">' + data[i].year + '</td>\n\
                                                <td>\n\
                                                    <input type="hidden" class="idLectureHistory" value="' + data[i].idLectureHistory + '"/>\n\
                                                    <input type="hidden" class="idTranFile" value="' + data[i].idTranFile + '"/>\n\
                                                    <input type="hidden" class="idDetail" value="' + data[i].idDetail + '"/>\n\
                                                    <a href="#"><span class="updateLectureHistory fa fa-pencil"></span></a>\n\
                                                </td>\n\
                                                <td>\n\
                                                    <a href="#"><span class="deleteLectureHistory fa fa-trash"></span></a>\n\
                                                </td>\n\
                                            </tr>';
                                $('#tableBodyLectureHistory').html(content);
                            }
                        }
                        
                        $('.updateLectureHistory').click(function(){
                            var nameLecture = $(this).closest('tr').find('.nameLecture').html();
                            var semester = $(this).closest('tr').find('.semester').html();
                            var year = $(this).closest('tr').find('.year').html();
                            var idLectureHistory = $(this).closest('tr').find('.idLectureHistory').val();
                            var idTranFile = $(this).closest('tr').find('.idTranFile').val();
                            var idDetail = $(this).closest('tr').find('.idDetail').val();
                            $('input[id=idTranFileLectureHistory]').val(idTranFile);
                            $('input[name=idLectureHistory]').val(idLectureHistory);
                            $('input[name=year]').val(year);
                            $('select[name=semester]').val(semester);
                            $('input[name=nameLecture]').val(nameLecture);
                            $('select[id=idDetailLectureHistory]').val(idDetail);
                        });
                        
                        $('.deleteLectureHistory').click(function(){
                            var idLectureHistory = $(this).closest('tr').find('.idLectureHistory').val();
                            var idTranFile = $(this).closest('tr').find('.idTranFile').val();
                            $.ajax({
                                url : "deleteLectureHistory.htm",
                                data : {idTranFile: idTranFile, idLectureHistory: idLectureHistory},
                                type: 'GET',
                                success: function(response){
                                    $(function(){
                                        $.growl.notice({title: "Berhasil", message: "Data berhasil dihapus !"});
                                    });
                                    reloadDataFile();
                                    reloadLectureHistory();
                                }
                            });
                        });
                        
                        $('#resetLectureHistory').click(function(){
                            $('input[id=idTranFileLectureHistory]').val(0);
                            $('input[name=idLectureHistory]').val(0);
                        });
                    }
                });            
            });
            
            $('#searchStudyHistory').click(function(){
                var nameStudy = $('input[name=nameSearchStudyHistory]').val();
                $.ajax({
                    url : "searchStudyHistory.htm",
                    data : "nameStudy=" + nameStudy,
                    type: 'GET',
                    success : function(response){
                        var data = JSON.parse(response);
                        var len = data.length;
                        if (len === 0){
                            $(function(){
                                $.growl.warning({title: "Maaf", message: "Data tidak ada !" });
                            });
                        } else {
                            var content = '';
                            for (var i =0; i < len; i++){
                                var content = '';
                                for (var i =0; i < len; i++){
                                    content +=' <tr>\n\
                                                    <td>' + (i + 1) + '</td>\n\
                                                    <td class="nameUniversity">' + data[i].nameUniversity + '</td>\n\
                                                    <td class="studyDescription">' + data[i].studyDescription + '</td>\n\
                                                    <td class="degree">' + data[i].degree + '</td>\n\
                                                    <td class="graduateYear">' + data[i].graduateYear + '</td>\n\
                                                    <td>\n\
                                                        <input type="hidden" class="idStudyHistory" value="' + data[i].idStudyHistory + '"/>\n\
                                                        <input type="hidden" class="idTranFile" value="' + data[i].idTranFile + '"/>\n\
                                                        <input type="hidden" class="idStudy" value="' + data[i].idStudy + '"/>\n\
                                                        <input type="hidden" class="idDetail" value="' + data[i].idDetail + '"/>\n\
                                                        <input type="hidden" class="joinYear" value="' + data[i].joinYear + '"/>\n\
                                                        <input type="hidden" class="studyProgram" value="' + data[i].studyProgram + '"/>\n\
                                                        <a href="#"><span class="updateStudyHistory fa fa-pencil"></span></a>\n\
                                                    </td>\n\
                                                    <td>\n\
                                                        <a href="#"><span class="deleteStudyHistory fa fa-trash"></span></a>\n\
                                                    </td>\n\
                                                </tr>';
                                    $('#tableBodyStudyHistory').html(content);
                                }
                            }
                        }
                        
                        $('.updateStudyHistory').click(function(){
                            var nameUniversity = $(this).closest('tr').find('.nameUniversity').html();
                            var degree = $(this).closest('tr').find('.degree').html();
                            var graduateYear = $(this).closest('tr').find('.graduateYear').html();
                            var joinYear = $(this).closest('tr').find('.joinYear').val();
                            var studyProgram = $(this).closest('tr').find('.studyProgram').val();
                            var idStudyHistory = $(this).closest('tr').find('.idStudyHistory').val();
                            var idTranFile = $(this).closest('tr').find('.idTranFile').val();
                            var idDetail = $(this).closest('tr').find('.idDetail').val();
                            var idStudy = $(this).closest('tr').find('.idStudy').val();
                            $('input[id=idTranFileStudyHistory]').val(idTranFile);
                            $('input[name=idStudyHistory]').val(idStudyHistory);
                            $('input[name=nameUniversity]').val(nameUniversity);
                            $('input[name=degree]').val(degree);
                            $('input[name=graduateYear]').val(graduateYear);
                            $('input[name=joinYear]').val(joinYear);
                            $('input[name=studyProgram]').val(studyProgram);
                            $('select[name=idStudy]').val(idStudy);
                            $('select[id=idDetailStudyHistory]').val(idDetail);
                        });
                        
                        $('.deleteStudyHistory').click(function(){
                            var idStudyHistory = $(this).closest('tr').find('.idStudyHistory').val();
                            var idTranFile = $(this).closest('tr').find('.idTranFile').val();
                            $.ajax({
                                url : "deleteStudyHistory.htm",
                                data : {idTranFile: idTranFile, idStudyHistory: idStudyHistory},
                                type: 'GET',
                                success: function(response){
                                    $(function(){
                                        $.growl.notice({title: "Berhasil", message: "Data berhasil dihapus !"});
                                    });
                                    reloadDataFile();
                                    reloadStudyHistory();
                                }
                            });
                        });
                        
                        $('#resetStudyHistory').click(function(){
                            $('input[id=idTranFileStudyHistory]').val(0);
                            $('input[name=idStudyHistory]').val(0);
                        });
                    }
                });            
            });
            
            $('#searchFunctionalHistory').click(function(){
                var nameFunctional = $('input[name=nameSearchFunctionalHistory]').val();
                $.ajax({
                    url : "searchFunctionalHistory.htm",
                    data : "nameFunctional=" + nameFunctional,
                    type: 'GET',
                    success : function(response){
                        var data = JSON.parse(response);
                        var len = data.length;
                        if (len === 0){
                            $(function(){
                                $.growl.warning({title: "Maaf", message: "Data tidak ada !" });
                            });
                        } else {
                            var content = '';
                            for (var i =0; i < len; i++){
                                var content = '';
                                for (var i =0; i < len; i++){
                                    content +=' <tr>\n\
                                                    <td>' + (i + 1) + '</td>\n\
                                                    <td class="nameFunctional">' + data[i].nameFunctional + '</td>\n\
                                                    <td class="skNumber">' + data[i].skNumber + '</td>\n\
                                                    <td class="skDate">' + data[i].skDate + '</td>\n\
                                                    <td>\n\
                                                        <input type="hidden" class="idFunctionalHistory" value="' + data[i].idFunctionalHistory + '"/>\n\
                                                        <input type="hidden" class="idTranFile" value="' + data[i].idTranFile + '"/>\n\
                                                        <input type="hidden" class="idFunctional" value="' + data[i].idFunctional + '"/>\n\
                                                        <input type="hidden" class="idDetail" value="' + data[i].idDetail + '"/>\n\
                                                        <a href="#"><span class="updateFunctionalHistory fa fa-pencil"></span></a>\n\
                                                    </td>\n\
                                                    <td>\n\
                                                        <a href="#"><span class="deleteFunctionalHistory fa fa-trash"></span></a>\n\
                                                    </td>\n\
                                                </tr>';
                                    $('#tableBodyFunctionalHistory').html(content);
                                }
                            }

                            $('.updateFunctionalHistory').click(function(){
                                var skNumber = $(this).closest('tr').find('.skNumber').html();
                                var skDate = $(this).closest('tr').find('.skDate').html();
                                var idFunctionalHistory = $(this).closest('tr').find('.idFunctionalHistory').val();
                                var idTranFile = $(this).closest('tr').find('.idTranFile').val();
                                var idDetail = $(this).closest('tr').find('.idDetail').val();
                                var idFunctional = $(this).closest('tr').find('.idFunctional').val();
                                $('input[id=idTranFileStudyHistory]').val(idTranFile);
                                $('input[name=idFunctionalHistory]').val(idFunctionalHistory);
                                $('input[name=skNumber]').val(skNumber);
                                $('input[name=skDate]').val(skDate);
                                $('select[name=idFunctional]').val(idFunctional);
                                $('select[id=idDetailFunctionalHistory]').val(idDetail);
                            });

                            $('.deleteFunctionalHistory').click(function(){
                                var idFunctionalHistory = $(this).closest('tr').find('.idFunctionalHistory').val();
                                var idTranFile = $(this).closest('tr').find('.idTranFile').val();
                                $.ajax({
                                    url : "deleteFunctionalHistory.htm",
                                    data : {idTranFile: idTranFile, idFunctionalHistory: idFunctionalHistory},
                                    type: 'GET',
                                    success: function(response){
                                        $(function(){
                                            $.growl.notice({title: "Berhasil", message: "Data berhasil dihapus !"});
                                        });
                                        reloadDataFile();
                                        reloadFunctionalHistory();
                                    }
                                });
                            });

                            $('#resetFunctionalHistory').click(function(){
                                $('input[id=idTranFileFunctionalHistory]').val(0);
                                $('input[name=idFunctionalHistory]').val(0);
                            });
                        }
                    }
                });            
            });
            
            $('#searchSertificationHistory').click(function(){
                var sertificationPart = $('input[name=nameSearchSertificationHistory]').val();
                $.ajax({
                    url : "searchSertificationHistory.htm",
                    data : "sertificationPart=" + sertificationPart,
                    type: 'GET',
                    success : function(response){
                        var data = JSON.parse(response);
                        var len = data.length;
                        if (len === 0){
                            $(function(){
                                $.growl.warning({title: "Maaf", message: "Data tidak ada !" });
                            });
                        } else {
                            var content = '';
                            for (var i =0; i < len; i++){
                                var content = '';
                                for (var i =0; i < len; i++){
                                    content +=' <tr>\n\
                                                    <td>' + (i + 1) + '</td>\n\
                                                    <td class="sertificationPart">' + data[i].sertificationPart + '</td>\n\
                                                    <td class="studyPart">' + data[i].studyPart + '</td>\n\
                                                    <td class="ptpsNumber">' + data[i].ptpsNumber + '</td>\n\
                                                    <td class="registrationNumber">' + data[i].registrationNumber + '</td>\n\
                                                    <td>\n\
                                                        <input type="hidden" class="idSertificationHistory" value="' + data[i].idSertificationHistory + '"/>\n\
                                                        <input type="hidden" class="idTranFile" value="' + data[i].idTranFile + '"/>\n\
                                                        <input type="hidden" class="idDetail" value="' + data[i].idDetail + '"/>\n\
                                                        <a href="#"><span class="updateSertificationHistory fa fa-pencil"></span></a>\n\
                                                    </td>\n\
                                                    <td>\n\
                                                        <a href="#"><span class="deleteSertificationHistory fa fa-trash"></span></a>\n\
                                                    </td>\n\
                                                </tr>';
                                    $('#tableBodySertificationHistory').html(content);
                                }
                            }

                            $('.updateSertificationHistory').click(function(){
                                var sertificationPart = $(this).closest('tr').find('.sertificationPart').html();
                                var studyPart = $(this).closest('tr').find('.studyPart').html();
                                var ptpsNumber = $(this).closest('tr').find('.ptpsNumber').html();
                                var registrationNumber = $(this).closest('tr').find('.registrationNumber').html();
                                var idFunctionalHistory = $(this).closest('tr').find('.idFunctionalHistory').val();
                                var idTranFile = $(this).closest('tr').find('.idTranFile').val();
                                var idDetail = $(this).closest('tr').find('.idDetail').val();
                                $('input[id=idTranFileStudyHistory]').val(idTranFile);
                                $('input[name=idFunctionalHistory]').val(idFunctionalHistory);
                                $('input[name=sertificationPart]').val(sertificationPart);
                                $('input[name=studyPart]').val(studyPart);
                                $('input[name=ptpsNumber]').val(ptpsNumber);
                                $('input[name=registrationNumber]').val(registrationNumber);
                                $('select[id=idDetailSertificationHistory]').val(idDetail);
                            });

                            $('.deleteSertificationHistory').click(function(){
                                var idSertificationHistory = $(this).closest('tr').find('.idSertificationHistory').val();
                                var idTranFile = $(this).closest('tr').find('.idTranFile').val();
                                $.ajax({
                                    url : "deleteSertificationHistory.htm",
                                    data : {idTranFile: idTranFile, idSertificationHistory: idSertificationHistory},
                                    type: 'GET',
                                    success: function(response){
                                        $(function(){
                                            $.growl.notice({title: "Berhasil", message: "Data berhasil dihapus !"});
                                        });
                                        reloadDataFile();
                                        reloadSertificationHistory();
                                    }
                                });
                            });

                            $('#resetSertificationHistory').click(function(){
                                $('input[id=idTranFileSertificationHistory]').val(0);
                                $('input[name=idSertificationHistory]').val(0);
                            });
                        }
                    }
                });            
            });
            
            $('#searchFile').click(function(){
                var nameDokumen = $('input[name=nameSearchFile]').val();
                $.ajax({
                    url : "searchFile.htm",
                    data : "nameDokumen=" + nameDokumen,
                    type: 'GET',
                    success : function(response){
                        var data = JSON.parse(response);
                        var len = data.length;
                        if (len === 0){
                            $(function(){
                                $.growl.warning({title: "Maaf", message: "Data tidak ada !" });
                            });
                        } else {
                            var content = '';
                            for (var i =0; i < len; i++){
                                content +=' <tr>\n\
                                                <td>' + (i + 1) + '</td>\n\
                                                <td class="nameDokumen">' + data[i].nameDokumen + '</td>\n\
                                                <td>\n\
                                                    <a href="#"><span class="fa fa-search"></span></a>\n\
                                                </td>\n\
                                            </tr>';
                                $('#tableBodyFile').html(content);
                            }
                        }
                    }
                });
            });
            
            $('select[name=idStudy]').change(function(event){
                var id = parseInt(event.target.value);
                $('select[id=idDetailStudyHistory]').val(id + 4);
            });
            
             $('select[name=idFunctional]').change(function(event){
                var id = parseInt(event.target.value);
                $('select[id=idDetailFunctionalHistory]').val(id + 7);
            });
        });
    </script>
    <script src="resource/js/jquery.nicescroll.js"></script>
    <script src="resource/js/scripts.js"></script>
    <script src="resource/js/bootstrap.js"> </script>
    </body>
</html>                     
