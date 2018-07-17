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
        
        <!--datatable file library-->
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
        <!--<script type="text/javascript" charset="utf8" src="https://code.jquery.com/jquery-3.3.1.js"></script>-->
        <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
        
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
                                <div class="row">
                                    <div class="col-md-offset-1 col-md-7">
                                        <div class="row">
                                            <div class="col-md-3" align="center">
                                                <button id="editBiodata" class="form-control-submit">Edit Biodata</button>
                                            </div>
                                        </div>
                                        <br>
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
                                                ${listBiodata.customDate}
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
                                    </div>
                                    <div class="col-md-4">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <img src="${file.nameFile}" style="width: 160px; height: 180px" />
                                            </div>
                                        </div>
                                        <br>
                                        <br>
                                        <div class="row">
                                            <div class="col-md-12">
                                                Homebase Dosen
                                            </div>
                                        </div>
                                        <br>
                                        <div class="row">
                                            <div class="col-md-4">
                                                Prodi / Jurusan
                                            </div>
                                            <div class="col-md-1">
                                                :
                                            </div>
                                            <div class="col-md-6">
                                                ${listBiodata.nameMajor}
                                            </div>
                                        </div>
                                        <br>
                                        <div class="row">
                                            <div class="col-md-4">
                                                Fakultas
                                            </div>
                                            <div class="col-md-1">
                                                :
                                            </div>
                                            <div class="col-md-6">
                                                ${listBiodata.nameFaculty}
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" 
                                 id="tab2">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="table-responsive">
                                            <table class="table table-hover" id="tableFile">
                                                <thead>
                                                    <th>Nomor</th>
                                                    <th>Nama Dokumen / File</th>
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
                                <hr>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="table-responsive">
                                            <table class="table table-hover" id="tableLectureHistory">
                                                <thead>
                                                    <th>Nomor</th>
                                                    <th>Mata Kuliah</th>
                                                    <th>Semester</th>
                                                    <th>Tahun</th>
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
                                <hr>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="table-responsive">
                                            <table class="table table-hover" id="tableStudyHistory">
                                                <thead>
                                                    <th>Nomor</th>
                                                    <th>Perguruan Tinggi</th>
                                                    <th>Jenjang</th>
                                                    <th>Gelar</th>
                                                    <th>Tahun Lulus</th>
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
                                </div>                    
                                <hr>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="table-responsive">
                                            <table class="table table-hover" id="tableFunctionalHistory">
                                                <thead>
                                                    <th>Nomor</th>
                                                    <th>Jabatan</th>
                                                    <th>No. SK</th>
                                                    <th>TMT SK</th>
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
                                <hr>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="table-responsive">
                                            <table class="table table-hover" id="tableSertificationHistory">
                                                <thead>
                                                    <th>Nomor</th>
                                                    <th>Jenis Sertifikasi</th>
                                                    <th>Bidang Studi</th>
                                                    <th>No. PTPS / Lembaga Penilai</th>
                                                    <th>No. Registrasi (SERDIK)
                                                    <th>Aksi</th>
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
            reloadAutocomplete();
            reloadDataFile();
            reloadLectureHistory();
            reloadStudyHistory();
            reloadFunctionalHistory();
            reloadSertificationHistory();
            
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
            
            var tableFile = $('#tableFile').DataTable({
                pageLength: 5,
                lengthChange: false,
                columns: [
                    { data: null, sortable: false},
                    { data: 'nameDokumen'},
                    { data: null, sortable: false,
                      render : function(data, type, full) {
                        return '<button id="detail"><span class="fa fa-search"></span></button>';}
                    }
                ]
            });
            
            var tableLectureHistory = $('#tableLectureHistory').DataTable({
                pageLength: 5,
                lengthChange: false,
                columns: [
                    { data: null, sortable: false},
                    { data: 'nameLecture'},
                    { data: 'semester'},
                    { data: 'year'},
                    { data: null, sortable: false,
                      render : function(data, type, full) {
                        return '<button id="update"><span class="fa fa-pencil"></span></button> \n\
                                <button id="delete"><span class="fa fa-trash"></span></button>';}
                    }
                ]
            });
            
            var tableStudyHistory = $('#tableStudyHistory').DataTable({
                pageLength: 5,
                lengthChange: false,
                columns: [
                    { data: null, sortable: false},
                    { data: 'nameUniversity'},
                    { data: 'studyDescription'},
                    { data: 'degree'},
                    { data: 'graduateYear'},
                    { data: null, sortable: false,
                      render : function(data, type, full) {
                        return '<button id="update"><span class="fa fa-pencil"></span></button> \n\
                                <button id="delete"><span class="fa fa-trash"></span></button>';}
                    }
                ]
            });
            
            var tableFunctionalHistory = $('#tableFunctionalHistory').DataTable({
                pageLength: 5,
                lengthChange: false,
                columns: [
                    { data: null, sortable: false},
                    { data: 'nameFunctional'},
                    { data: 'skNumber'},
                    { data: 'skDate'},
                    { data: null, sortable: false,
                      render : function(data, type, full) {
                        return '<button id="update"><span class="fa fa-pencil"></span></button> \n\
                                <button id="delete"><span class="fa fa-trash"></span></button>';}
                    }
                ]
            });
            
            var tableSertificationHistory = $('#tableSertificationHistory').DataTable({
                pageLength: 5,
                lengthChange: false,
                columns: [
                    { data: null, sortable: false},
                    { data: 'sertificationPart'},
                    { data: 'studyPart'},
                    { data: 'ptpsNumber'},
                    { data: 'registrationNumber'},
                    { data: null, sortable: false,
                      render : function(data, type, full) {
                        return '<button id="update"><span class="fa fa-pencil"></span></button> \n\
                                <button id="delete"><span class="fa fa-trash"></span></button>';}
                    }
                ]
            });
            
            function reloadDataFile(){
                var idLecturer = $('input[name=idLecturer]').val();
                $.ajax({
                    url : "getFile.htm",
                    data : "idLecturer=" + idLecturer,
                    type: 'GET',
                    success: function(response){
                        var data = JSON.parse(response);
                        tableFile.rows.add(data).draw();
                    }
                });
            }
            
            function reloadLectureHistory(){
                var idLecturer = $('input[name=idLecturer]').val();
                $.ajax({
                    url : "getLectureHistory.htm",
                    data : "idLecturer=" + idLecturer,
                    type: 'GET',
                    success: function(response){
                        var data = JSON.parse(response);
                        tableLectureHistory.rows.add(data).draw();
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
                        tableStudyHistory.rows.add(data).draw();
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
                        tableFunctionalHistory.rows.add(data).draw();
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
                        tableSertificationHistory.rows.add(data).draw();
                    }
                });
            }
            
            tableFile.on( 'order.dt search.dt', function () {
                tableFile.column(0, {search:'applied', order:'applied'}).nodes().each( function (cell, i) {
                cell.innerHTML = i+1;
                } );
            }).draw();
            
            tableLectureHistory.on( 'order.dt search.dt', function () {
                tableLectureHistory.column(0, {search:'applied', order:'applied'}).nodes().each( function (cell, i) {
                cell.innerHTML = i+1;
                } );
            }).draw();
            
            tableStudyHistory.on( 'order.dt search.dt', function () {
                tableStudyHistory.column(0, {search:'applied', order:'applied'}).nodes().each( function (cell, i) {
                cell.innerHTML = i+1;
                } );
            }).draw();
            
            tableFunctionalHistory.on( 'order.dt search.dt', function () {
                tableFunctionalHistory.column(0, {search:'applied', order:'applied'}).nodes().each( function (cell, i) {
                cell.innerHTML = i+1;
                } );
            }).draw();
            
            tableSertificationHistory.on( 'order.dt search.dt', function () {
                tableSertificationHistory.column(0, {search:'applied', order:'applied'}).nodes().each( function (cell, i) {
                cell.innerHTML = i+1;
                } );
            }).draw();
            
            $('#tableFile tbody').on('click', 'button#detail', function () {
                var data = tableFile.row(this.closest('tr')).data();
                window.location.assign('showFile.htm?nameFile=' + data.nameFile)
            });
            
            $('#tableLectureHistory tbody').on('click', 'button#update', function () {
                var data = tableLectureHistory.row(this.closest('tr')).data();
                $('input[id=idTranFileLectureHistory]').val(data.idTranFile);
                $('input[name=idLectureHistory]').val(data.idLectureHistory);
                $('input[name=year]').val(data.year);
                $('select[name=semester]').val(data.semester);
                $('input[name=nameLecture]').val(data.nameLecture);
                $('select[id=idDetailLectureHistory]').val(data.idDetail);
            });
            
            $('#tableStudyHistory tbody').on('click', 'button#update', function () {
                var data = tableStudyHistory.row(this.closest('tr')).data();
                $('input[id=idTranFileStudyHistory]').val(data.idTranFile);
                $('input[name=idStudyHistory]').val(data.idStudyHistory);
                $('input[name=nameUniversity]').val(data.nameUniversity);
                $('input[name=degree]').val(data.degree);
                $('input[name=graduateYear]').val(data.graduateYear);
                $('input[name=joinYear]').val(data.joinYear);
                $('input[name=studyProgram]').val(data.studyProgram);
                $('select[name=idStudy]').val(data.idStudy);
                $('select[id=idDetailStudyHistory]').val(data.idDetail);
            });
            
            $('#tableFunctionalHistory tbody').on('click', 'button#update', function () {
                var data = tableFunctionalHistory.row(this.closest('tr')).data();
                $('input[id=idTranFileStudyHistory]').val(data.idTranFile);
                $('input[name=idFunctionalHistory]').val(data.idFunctionalHistory);
                $('input[name=skNumber]').val(data.skNumber);
                $('input[name=skDate]').val(data.skDate);
                $('select[name=idFunctional]').val(data.idFunctional);
                $('select[id=idDetailFunctionalHistory]').val(data.idDetail);
            });
            
            $('#tableSertificationHistory tbody').on('click', 'button#update', function () {
                var data = tableSertificationHistory.row(this.closest('tr')).data();
                $('input[id=idTranFileSertificationHistory]').val(data.idTranFile);
                $('input[name=idSertificationHistory]').val(data.idSertificationHistory);
                $('input[name=sertificationPart]').val(data.sertificationPart);
                $('input[name=studyPart]').val(data.studyPart);
                $('input[name=ptpsNumber]').val(data.ptpsNumber);
                $('input[name=registrationNumber]').val(data.registrationNumber);
                $('select[id=idDetailSertificationHistory]').val(data.idDetail);
            });
            
            $('#tableLectureHistory tbody').on('click', 'button#delete', function () {
                var data = tableLectureHistory.row(this.closest('tr')).data();
                $.ajax({
                    url: "deleteLectureHistory.htm",
                    data: {idTranFile: data.idTranFile, idLectureHistory: data.idLectureHistory},
                    daraType: "form-data",
                    type: 'GET',
                    success : function(response){
                        $(function(){
                            $.growl.notice({title: "Berhasil !", message: "Data berhasil dihapus !" });
                        });
                        $('#formLectureHistory').trigger('reset');
                        tableLectureHistory.clear().draw();
                        tableFile.clear().draw();
                        reloadLectureHistory();
                        reloadDataFile();
                    }
                });
            });
            
            $('#tableStudyHistory tbody').on('click', 'button#delete', function () {
                var data = tableStudyHistory.row(this.closest('tr')).data();
                $.ajax({
                    url: "deleteStudyHistory.htm",
                    data: {idTranFile: data.idTranFile, idStudyHistory: data.idStudyHistory},
                    daraType: "form-data",
                    type: 'GET',
                    success : function(response){
                        $(function(){
                            $.growl.notice({title: "Berhasil !", message: "Data berhasil dihapus !" });
                        });
                        $('#formStudyHistory').trigger('reset');
                        tableStudyHistory.clear().draw();
                        tableFile.clear().draw();
                        reloadDataFile();
                        reloadStudyHistory();
                    }
                });
            });
            
            $('#tableFunctionalHistory tbody').on('click', 'button#delete', function () {
                var data = tableFunctionalHistory.row(this.closest('tr')).data();
                $.ajax({
                    url: "deleteFunctionalHistory.htm",
                    data: {idTranFile: data.idTranFile, idFunctionalHistory: data.idFunctionalHistory},
                    daraType: "form-data",
                    type: 'GET',
                    success : function(response){
                        $(function(){
                            $.growl.notice({title: "Berhasil !", message: "Data berhasil dihapus !" });
                        });
                        $('#formFunctionalHistory').trigger('reset');
                        tableFunctionalHistory.clear().draw();
                        tableFile.clear().draw();
                        reloadDataFile();
                        reloadFunctionalHistory();
                    }
                });
            });
            
            $('#tableSertificationHistory tbody').on('click', 'button#delete', function () {
                var data = tableSertificationHistory.row(this.closest('tr')).data();
                $.ajax({
                    url: "deleteSertificationHistory.htm",
                    data: {idTranFile: data.idTranFile, idSertificationHistory: data.idSertificationHistory},
                    daraType: "form-data",
                    type: 'GET',
                    success : function(response){
                        $(function(){
                            $.growl.notice({title: "Berhasil !", message: "Data berhasil dihapus !" });
                        });
                        $('#formSertificationHistory').trigger('reset');
                        tableSertificationHistory.clear().draw();
                        tableFile.clear().draw();
                        reloadDataFile();
                        reloadSertificationHistory();
                    }
                });
            });
            
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
                                    tableFile.clear().draw();
                                    tableLectureHistory.clear().draw();
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
                                    tableFile.clear().draw();
                                    tableStudyHistory.clear().draw();
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
                                    tableFile.clear().draw();
                                    tableFunctionalHistory.clear().draw();
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
                                    tableFile.clear().draw();
                                    tableSertificationHistory.clear().draw();
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
            
            $('#resetLectureHistory').click(function(){
                $('input[id=idTranFileLectureHistory]').val(0);
                $('input[name=idLectureHistory]').val(0);
            });
            
            $('#resetStudyHistory').click(function(){
                $('input[id=idTranFileStudyHistory]').val(0);
                $('input[name=idStudyHistory]').val(0);
            });
            
            $('#resetFunctionalHistory').click(function(){
                $('input[id=idTranFileFunctionalHistory]').val(0);
                $('input[name=idFunctionalHistory]').val(0);
            });
            
            $('#resetSertificationHistory').click(function(){
                $('input[id=idTranFileSertificationHistory]').val(0);
                $('input[name=idSertificationHistory]').val(0);
            });
            
            $('select[name=idStudy]').change(function(event){
                var id = parseInt(event.target.value);
                $('select[id=idDetailStudyHistory]').val(id + 4);
            });
            
             $('select[name=idFunctional]').change(function(event){
                var id = parseInt(event.target.value);
                $('select[id=idDetailFunctionalHistory]').val(id + 7);
            });
            
            $('#editBiodata').click(function(){
                var idLecturer = $('input[name=idLecturer]').val();
                window.location.assign('editLecturer.htm?idLecturer=' + idLecturer);
            });
            
        });
    </script>
    <script src="resource/js/jquery.nicescroll.js"></script>
    <script src="resource/js/scripts.js"></script>
    <script src="resource/js/bootstrap.js"> </script>
    </body>
</html>                     
