/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.controllers;

import com.google.gson.Gson;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import repository.dosen.dto.DetailFileDto;
import repository.dosen.dto.FileDto;
import repository.dosen.dto.Lecturer;
import repository.dosen.service.DetailFileService;
import repository.dosen.service.FileService;

/**
 *
 * @author Jaret
 */
@Controller
public class FileController {
    
    @Autowired
    FileService fileService;
    
    @Autowired
    DetailFileService detailFileService;
    
    @RequestMapping( value = "/uploadFileLectureHistory", method = RequestMethod.POST)
    @ResponseBody
    public String uploadFileLectureHistory(@RequestParam("file") MultipartFile file){
        try {
            byte[] bytes = file.getBytes();
            String rootPath = "C:\\Users\\Jaret\\Documents\\NetBeansProjects\\Repository-Dosen\\web\\assets\\RiwayatMengajar";
            double fileSize = file.getSize() / 1024;
            String fileType = file.getContentType();
            if (fileSize > 500) {
                Map map = new HashMap<>();
                map.put("message", "Ukuran file upload terlalu besar");
                map.put("status", 0);
                return new Gson().toJson(map);
            } else if (!fileType.equals("application/pdf")) {
                Map map = new HashMap<>();
                map.put("message", "Ekstensi file upload salah");
                map.put("status", 1);
                return new Gson().toJson(map);
            } else {
                File dir = new File(rootPath);
                if (!dir.exists()) 
                        dir.mkdirs();

                File serverFile = new File(dir.getAbsolutePath()
                                + File.separator + file.getOriginalFilename());
                BufferedOutputStream stream = new BufferedOutputStream(
                                new FileOutputStream(serverFile));
                stream.write(bytes);
                stream.close();
                String pathFile = "assets/RiwayatMengajar/" + file.getOriginalFilename();        
                Map map = new HashMap<>();
                map.put("pathFile", pathFile);
                map.put("status", 2);
                return new Gson().toJson(map);
            }
        } catch (Exception e) {
            return "gagal upload " + file.getName() + " => " + e.getMessage();
        }
    }
    
    @RequestMapping( value = "/uploadFileStudyHistory", method = RequestMethod.POST)
    @ResponseBody
    public String uploadFileStudyHistory(@RequestParam("file") MultipartFile file){
        try {
            byte[] bytes = file.getBytes();
            String rootPath = "C:\\Users\\Jaret\\Documents\\NetBeansProjects\\Repository-Dosen\\web\\assets\\RiwayatPendidikan";
            double fileSize = file.getSize() / 1024;
            String fileType = file.getContentType();
            if (fileSize > 500) {
                Map map = new HashMap<>();
                map.put("message", "Ukuran file upload terlalu besar");
                map.put("status", 0);
                return new Gson().toJson(map);
            } else if (!fileType.equals("application/pdf")) {
                Map map = new HashMap<>();
                map.put("message", "Ekstensi file upload salah");
                map.put("status", 1);
                return new Gson().toJson(map);
            } else {
                File dir = new File(rootPath);
                if (!dir.exists()) 
                        dir.mkdirs();

                File serverFile = new File(dir.getAbsolutePath()
                                + File.separator + file.getOriginalFilename());
                BufferedOutputStream stream = new BufferedOutputStream(
                                new FileOutputStream(serverFile));
                stream.write(bytes);
                stream.close();
                String pathFile = "assets/RiwayatPendidikan/" + file.getOriginalFilename();        
                Map map = new HashMap<>();
                map.put("pathFile", pathFile);
                map.put("status", 2);
                return new Gson().toJson(map);
            }
        } catch (Exception e) {
            return "gagal upload " + file.getName() + " => " + e.getMessage();
        }
    }
    
    @RequestMapping( value = "/uploadFileFunctionalHistory", method = RequestMethod.POST)
    @ResponseBody
    public String uploadFileFunctionalHistory(@RequestParam("file") MultipartFile file){
        try {
            byte[] bytes = file.getBytes();
            String rootPath = "C:\\Users\\Jaret\\Documents\\NetBeansProjects\\Repository-Dosen\\web\\assets\\RiwayatFungsional";
            double fileSize = file.getSize() / 1024;
            String fileType = file.getContentType();
            if (fileSize > 500) {
                Map map = new HashMap<>();
                map.put("message", "Ukuran file upload terlalu besar");
                map.put("status", 0);
                return new Gson().toJson(map);
            } else if (!fileType.equals("application/pdf")) {
                Map map = new HashMap<>();
                map.put("message", "Ekstensi file upload salah");
                map.put("status", 1);
                return new Gson().toJson(map);
            } else {
                File dir = new File(rootPath);
                if (!dir.exists()) 
                        dir.mkdirs();

                File serverFile = new File(dir.getAbsolutePath()
                                + File.separator + file.getOriginalFilename());
                BufferedOutputStream stream = new BufferedOutputStream(
                                new FileOutputStream(serverFile));
                stream.write(bytes);
                stream.close();
                String pathFile = "assets/RiwayatFungsional/" + file.getOriginalFilename();        
                Map map = new HashMap<>();
                map.put("pathFile", pathFile);
                map.put("status", 2);
                return new Gson().toJson(map);
            }
        } catch (Exception e) {
            return "gagal upload " + file.getName() + " => " + e.getMessage();
        }
    }
    
    @RequestMapping( value = "/uploadFileSertificationHistory", method = RequestMethod.POST)
    @ResponseBody
    public String uploadFileSertificationHistory(@RequestParam("file") MultipartFile file){
        try {
            byte[] bytes = file.getBytes();
            String rootPath = "C:\\Users\\Jaret\\Documents\\NetBeansProjects\\Repository-Dosen\\web\\assets\\RiwayatSertifikasi";
            double fileSize = file.getSize() / 1024;
            String fileType = file.getContentType();
            if (fileSize > 500) {
                Map map = new HashMap<>();
                map.put("message", "Ukuran file upload terlalu besar");
                map.put("status", 0);
                return new Gson().toJson(map);
            } else if (!fileType.equals("application/pdf")) {
                Map map = new HashMap<>();
                map.put("message", "Ekstensi file upload salah");
                map.put("status", 1);
                return new Gson().toJson(map);
            } else {
                File dir = new File(rootPath);
                if (!dir.exists()) 
                        dir.mkdirs();

                File serverFile = new File(dir.getAbsolutePath()
                                + File.separator + file.getOriginalFilename());
                BufferedOutputStream stream = new BufferedOutputStream(
                                new FileOutputStream(serverFile));
                stream.write(bytes);
                stream.close();
                String pathFile = "assets/RiwayatSertifikasi/" + file.getOriginalFilename();        
                Map map = new HashMap<>();
                map.put("pathFile", pathFile);
                map.put("status", 2);
                return new Gson().toJson(map);
            }
        } catch (Exception e) {
            return "gagal upload " + file.getName() + " => " + e.getMessage();
        }
    }
    
    @RequestMapping( value = "/uploadFileRecruitment", method = RequestMethod.POST)
    @ResponseBody
    public String uploadFileRecruitment(@RequestParam("file") MultipartFile file){
        try {
            byte[] bytes = file.getBytes();
            String rootPath = "C:\\Users\\Jaret\\Documents\\NetBeansProjects\\Repository-Dosen\\web\\assets\\PerekrutanDosen";
            double fileSize = file.getSize() / 1024;
            String fileType = file.getContentType();
            if (fileSize > 500) {
                Map map = new HashMap<>();
                map.put("message", "Ukuran file upload terlalu besar");
                map.put("status", 0);
                return new Gson().toJson(map);
            } else if (!fileType.equals("application/pdf") && !fileType.equals("image/png") && !fileType.equals("image/jpeg") && !fileType.equals("image/jpg")) {
                Map map = new HashMap<>();
                map.put("message", "Ekstensi file upload salah");
                map.put("status", 1);
                return new Gson().toJson(map);
            } else {
                File dir = new File(rootPath);
                if (!dir.exists()) 
                        dir.mkdirs();

                File serverFile = new File(dir.getAbsolutePath()
                                + File.separator + file.getOriginalFilename());
                BufferedOutputStream stream = new BufferedOutputStream(
                                new FileOutputStream(serverFile));
                stream.write(bytes);
                stream.close();
                String pathFile = "assets/PerekrutanDosen/" + file.getOriginalFilename();        
                Map map = new HashMap<>();
                map.put("pathFile", pathFile);
                map.put("status", 2);
                return new Gson().toJson(map);
            }
        } catch (Exception e) {
            return "gagal upload " + file.getName() + " => " + e.getMessage();
        }
    }
    
    @RequestMapping( value = "/uploadFileNidn", method = RequestMethod.POST)
    @ResponseBody
    public String uploadFileNidn(@RequestParam("file") MultipartFile file){
        try {
            byte[] bytes = file.getBytes();
            String rootPath = "C:\\Users\\Jaret\\Documents\\NetBeansProjects\\Repository-Dosen\\web\\assets\\PengajuanNidn";
            double fileSize = file.getSize() / 1024;
            String fileType = file.getContentType();
            if (fileSize > 500) {
                Map map = new HashMap<>();
                map.put("message", "Ukuran file upload terlalu besar");
                map.put("status", 0);
                return new Gson().toJson(map);
            } else if (!fileType.equals("application/pdf")) {
                Map map = new HashMap<>();
                map.put("message", "Ekstensi file upload salah");
                map.put("status", 1);
                return new Gson().toJson(map);
            } else {
                File dir = new File(rootPath);
                if (!dir.exists()) 
                        dir.mkdirs();

                File serverFile = new File(dir.getAbsolutePath()
                                + File.separator + file.getOriginalFilename());
                BufferedOutputStream stream = new BufferedOutputStream(
                                new FileOutputStream(serverFile));
                stream.write(bytes);
                stream.close();
                String pathFile = "assets/PengajuanNidn/" + file.getOriginalFilename();        
                Map map = new HashMap<>();
                map.put("pathFile", pathFile);
                map.put("status", 2);
                return new Gson().toJson(map);
            }
        } catch (Exception e) {
            return "gagal upload " + file.getName() + " => " + e.getMessage();
        }
    }
    
    
    @RequestMapping( value = "/uploadFileAssistant", method = RequestMethod.POST)
    @ResponseBody
    public String uploadFileAssistant(@RequestParam("file") MultipartFile file){
        try {
            byte[] bytes = file.getBytes();
            String rootPath = "C:\\Users\\Jaret\\Documents\\NetBeansProjects\\Repository-Dosen\\web\\assets\\PengajuanAsistenAhli";
            double fileSize = file.getSize() / 1024;
            String fileType = file.getContentType();
            if (fileSize > 500) {
                Map map = new HashMap<>();
                map.put("message", "Ukuran file upload terlalu besar");
                map.put("status", 0);
                return new Gson().toJson(map);
            } else if (!fileType.equals("application/pdf")) {
                Map map = new HashMap<>();
                map.put("message", "Ekstensi file upload salah");
                map.put("status", 1);
                return new Gson().toJson(map);
            } else {
                File dir = new File(rootPath);
                if (!dir.exists()) 
                        dir.mkdirs();

                File serverFile = new File(dir.getAbsolutePath()
                                + File.separator + file.getOriginalFilename());
                BufferedOutputStream stream = new BufferedOutputStream(
                                new FileOutputStream(serverFile));
                stream.write(bytes);
                stream.close();
                String pathFile = "assets/PengajuanAsistenAhli/" + file.getOriginalFilename();        
                Map map = new HashMap<>();
                map.put("pathFile", pathFile);
                map.put("status", 2);
                return new Gson().toJson(map);
            }
        } catch (Exception e) {
            return "gagal upload " + file.getName() + " => " + e.getMessage();
        }
    }
    
    @RequestMapping( value = "/uploadFileLectors", method = RequestMethod.POST)
    @ResponseBody
    public String uploadFileLectors(@RequestParam("file") MultipartFile file){
        try {
            byte[] bytes = file.getBytes();
            String rootPath = "C:\\Users\\Jaret\\Documents\\NetBeansProjects\\Repository-Dosen\\web\\assets\\PengajuanLektor";
            double fileSize = file.getSize() / 1024;
            String fileType = file.getContentType();
            if (fileSize > 500) {
                Map map = new HashMap<>();
                map.put("message", "Ukuran file upload terlalu besar");
                map.put("status", 0);
                return new Gson().toJson(map);
            } else if (!fileType.equals("application/pdf")) {
                Map map = new HashMap<>();
                map.put("message", "Ekstensi file upload salah");
                map.put("status", 1);
                return new Gson().toJson(map);
            } else {
                File dir = new File(rootPath);
                if (!dir.exists()) 
                        dir.mkdirs();

                File serverFile = new File(dir.getAbsolutePath()
                                + File.separator + file.getOriginalFilename());
                BufferedOutputStream stream = new BufferedOutputStream(
                                new FileOutputStream(serverFile));
                stream.write(bytes);
                stream.close();
                String pathFile = "assets/PengajuanLektor/" + file.getOriginalFilename();        
                Map map = new HashMap<>();
                map.put("pathFile", pathFile);
                map.put("status", 2);
                return new Gson().toJson(map);
            }
        } catch (Exception e) {
            return "gagal upload " + file.getName() + " => " + e.getMessage();
        }
    }
    
    @RequestMapping( value = "/uploadFileHeadlectors", method = RequestMethod.POST)
    @ResponseBody
    public String uploadFileHeadlectors(@RequestParam("file") MultipartFile file){
        try {
            byte[] bytes = file.getBytes();
            String rootPath = "C:\\Users\\Jaret\\Documents\\NetBeansProjects\\Repository-Dosen\\web\\assets\\PengajuanLektorKepala";
            double fileSize = file.getSize() / 1024;
            String fileType = file.getContentType();
            if (fileSize > 500) {
                Map map = new HashMap<>();
                map.put("message", "Ukuran file upload terlalu besar");
                map.put("status", 0);
                return new Gson().toJson(map);
            } else if (!fileType.equals("application/pdf")) {
                Map map = new HashMap<>();
                map.put("message", "Ekstensi file upload salah");
                map.put("status", 1);
                return new Gson().toJson(map);
            } else {
                File dir = new File(rootPath);
                if (!dir.exists()) 
                        dir.mkdirs();

                File serverFile = new File(dir.getAbsolutePath()
                                + File.separator + file.getOriginalFilename());
                BufferedOutputStream stream = new BufferedOutputStream(
                                new FileOutputStream(serverFile));
                stream.write(bytes);
                stream.close();
                String pathFile = "assets/PengajuanLektorKepala/" + file.getOriginalFilename();        
                Map map = new HashMap<>();
                map.put("pathFile", pathFile);
                map.put("status", 2);
                return new Gson().toJson(map);
            }
        } catch (Exception e) {
            return "gagal upload " + file.getName() + " => " + e.getMessage();
        }
    }
    
    @RequestMapping( value = "/uploadFileProfessor", method = RequestMethod.POST)
    @ResponseBody
    public String uploadFileProfessor(@RequestParam("file") MultipartFile file){
        try {
            byte[] bytes = file.getBytes();
            String rootPath = "C:\\Users\\Jaret\\Documents\\NetBeansProjects\\Repository-Dosen\\web\\assets\\PengajuanGuruBesar";
            double fileSize = file.getSize() / 1024;
            String fileType = file.getContentType();
            if (fileSize > 500) {
                Map map = new HashMap<>();
                map.put("message", "Ukuran file upload terlalu besar");
                map.put("status", 0);
                return new Gson().toJson(map);
            } else if (!fileType.equals("application/pdf")) {
                Map map = new HashMap<>();
                map.put("message", "Ekstensi file upload salah");
                map.put("status", 1);
                return new Gson().toJson(map);
            } else {
                File dir = new File(rootPath);
                if (!dir.exists()) 
                        dir.mkdirs();

                File serverFile = new File(dir.getAbsolutePath()
                                + File.separator + file.getOriginalFilename());
                BufferedOutputStream stream = new BufferedOutputStream(
                                new FileOutputStream(serverFile));
                stream.write(bytes);
                stream.close();
                String pathFile = "assets/PengajuanGuruBesar/" + file.getOriginalFilename();        
                Map map = new HashMap<>();
                map.put("pathFile", pathFile);
                map.put("status", 2);
                return new Gson().toJson(map);
            }
        } catch (Exception e) {
            return "gagal upload " + file.getName() + " => " + e.getMessage();
        }
    }
    
    @RequestMapping(value = "/saveFile", method = RequestMethod.POST)
    @ResponseBody
    public String saveFile(String idLecturer, String pathFile, String idDetail){
        FileDto fileDto = new FileDto();
        fileDto.setIdTranFile(0);
        fileDto.setIdLecturer(Integer.parseInt(idLecturer));
        fileDto.setNameFile(pathFile);
        fileDto.setIdDetail(Integer.parseInt(idDetail));
        fileDto.setState(1);
        fileService.saveFile(fileDto);
        Map map = new HashMap<>();
        map.put("message", "Data berhasil ditambahkan");
        map.put("status", 1);
        return new Gson().toJson(map);
    }
    
    @RequestMapping( value = "/getFile", method = RequestMethod.GET)
    @ResponseBody
    public String getFile(String idLecturer){
        List<FileDto> listFile = fileService.getFile(Integer.parseInt(idLecturer));
        return new Gson().toJson(listFile);
    }
    
    @RequestMapping( value = "/searchFile", method = RequestMethod.GET)
    @ResponseBody
    public String searchFile(String nameDokumen){
        List<FileDto> listFile = fileService.searchFile(nameDokumen);
        return new Gson().toJson(listFile);
    }
    
    @RequestMapping(value = "/showFile", method = RequestMethod.GET)
    public String showFile(String nameFile, ModelMap model){
        FileDto fileDto = new FileDto();
        fileDto.setNameFile(nameFile);
        model.addAttribute("file", fileDto);
        return "show_file";
    }
    
    @RequestMapping( value = "/addFileRecruitment", method = RequestMethod.GET)
    public String addFileRecruitment(ModelMap model, String idLecturer){
        Lecturer lecturer = new Lecturer();
        lecturer.setIdLecturer(Integer.parseInt(idLecturer));
        List<DetailFileDto> listDetail = detailFileService.getDetailFileRecruitment();
        model.addAttribute("fileRecruitment", listDetail);
        model.addAttribute("dataLecturer", lecturer);
        return "insert_file_recruitment";
    }
    
    @RequestMapping( value = "/addFileNidn", method = RequestMethod.GET)
    public String addFileNidn(ModelMap model, String idLecturer){
        Lecturer lecturer = new Lecturer();
        lecturer.setIdLecturer(Integer.parseInt(idLecturer));
        List<DetailFileDto> listDetail = detailFileService.getDetailFileNidn();
        model.addAttribute("fileNidn", listDetail);
        model.addAttribute("dataLecturer", lecturer);
        return "insert_file_nidn";
    }
    
    @RequestMapping( value = "/addFileAssistant", method = RequestMethod.GET)
    public String addFileAssistant(ModelMap model, String idLecturer){
        Lecturer lecturer = new Lecturer();
        lecturer.setIdLecturer(Integer.parseInt(idLecturer));
        List<DetailFileDto> listDetail = detailFileService.getDetailFileAssistant();
        model.addAttribute("fileAssistant", listDetail);
        model.addAttribute("dataLecturer", lecturer);
        return "insert_file_assistant";
    }
    
    @RequestMapping( value = "/addFileLectors", method = RequestMethod.GET)
    public String addFileLectors(ModelMap model, String idLecturer){
        Lecturer lecturer = new Lecturer();
        lecturer.setIdLecturer(Integer.parseInt(idLecturer));
        List<DetailFileDto> listDetail = detailFileService.getDetailFileLectors();
        model.addAttribute("fileLectors", listDetail);
        model.addAttribute("dataLecturer", lecturer);
        return "insert_file_lectors";
    }
    
    @RequestMapping( value = "/addFileHeadlectors", method = RequestMethod.GET)
    public String addFileHeadlectors(ModelMap model, String idLecturer){
        Lecturer lecturer = new Lecturer();
        lecturer.setIdLecturer(Integer.parseInt(idLecturer));
        List<DetailFileDto> listDetail = detailFileService.getDetailFileHeadlectors();
        model.addAttribute("fileHeadlectors", listDetail);
        model.addAttribute("dataLecturer", lecturer);
        return "insert_file_headlectors";
    }
    
    @RequestMapping( value = "/addFileProfessor", method = RequestMethod.GET)
    public String addFileProfessor(ModelMap model, String idLecturer){
        Lecturer lecturer = new Lecturer();
        lecturer.setIdLecturer(Integer.parseInt(idLecturer));
        List<DetailFileDto> listDetail = detailFileService.getDetailFileProfessor();
        model.addAttribute("fileProfessor", listDetail);
        model.addAttribute("dataLecturer", lecturer);
        return "insert_file_professor";
    }
    
    @RequestMapping( value = "/addFileNidnDosen", method = RequestMethod.GET)
    public String addFileNidnDosen(ModelMap model, String idLecturer){
        Lecturer lecturer = new Lecturer();
        lecturer.setIdLecturer(Integer.parseInt(idLecturer));
        List<DetailFileDto> listDetail = detailFileService.getDetailFileNidn();
        model.addAttribute("fileNidn", listDetail);
        model.addAttribute("dataLecturer", lecturer);
        return "insert_file_nidn_dosen";
    }
    
    @RequestMapping( value = "/addFileAssistantDosen", method = RequestMethod.GET)
    public String addFileAssistantDosen(ModelMap model, String idLecturer){
        Lecturer lecturer = new Lecturer();
        lecturer.setIdLecturer(Integer.parseInt(idLecturer));
        List<DetailFileDto> listDetail = detailFileService.getDetailFileAssistant();
        model.addAttribute("fileAssistant", listDetail);
        model.addAttribute("dataLecturer", lecturer);
        return "insert_file_assistant_dosen";
    }
    
    @RequestMapping( value = "/addFileLectorsDosen", method = RequestMethod.GET)
    public String addFileLectorsDosen(ModelMap model, String idLecturer){
        Lecturer lecturer = new Lecturer();
        lecturer.setIdLecturer(Integer.parseInt(idLecturer));
        List<DetailFileDto> listDetail = detailFileService.getDetailFileLectors();
        model.addAttribute("fileLectors", listDetail);
        model.addAttribute("dataLecturer", lecturer);
        return "insert_file_lectors_dosen";
    }
    
    @RequestMapping( value = "/addFileHeadlectorsDosen", method = RequestMethod.GET)
    public String addFileHeadlectorsDosen(ModelMap model, String idLecturer){
        Lecturer lecturer = new Lecturer();
        lecturer.setIdLecturer(Integer.parseInt(idLecturer));
        List<DetailFileDto> listDetail = detailFileService.getDetailFileHeadlectors();
        model.addAttribute("fileHeadlectors", listDetail);
        model.addAttribute("dataLecturer", lecturer);
        return "insert_file_headlectors_dosen";
    }
    
    @RequestMapping( value = "/addFileProfessorDosen", method = RequestMethod.GET)
    public String addFileProfessorDosen(ModelMap model, String idLecturer){
        Lecturer lecturer = new Lecturer();
        lecturer.setIdLecturer(Integer.parseInt(idLecturer));
        List<DetailFileDto> listDetail = detailFileService.getDetailFileProfessor();
        model.addAttribute("fileProfessor", listDetail);
        model.addAttribute("dataLecturer", lecturer);
        return "insert_file_professor_dosen";
    }
    
    @RequestMapping( value = "/getFileRecruitment", method = RequestMethod.GET)
    @ResponseBody
    public String getFileRecruitment(int idLecturer){
        List<FileDto> listFile = fileService.getFileRecruitment(idLecturer);
        return new Gson().toJson(listFile);
    }
    
    @RequestMapping( value = "/getFileNidn", method = RequestMethod.GET)
    @ResponseBody
    public String getFileNidn(int idLecturer){
        List<FileDto> listFile = fileService.getFileNidn(idLecturer);
        return new Gson().toJson(listFile);
    }
    
    @RequestMapping( value = "/getFileAssistant", method = RequestMethod.GET)
    @ResponseBody
    public String getFileAssistant(int idLecturer){
        List<FileDto> listFile = fileService.getFileAssistant(idLecturer);
        return new Gson().toJson(listFile);
    }
    
    @RequestMapping( value = "/getFileLectors", method = RequestMethod.GET)
    @ResponseBody
    public String getFileLectors(int idLecturer){
        List<FileDto> listFile = fileService.getFileLectors(idLecturer);
        return new Gson().toJson(listFile);
    }
    
    @RequestMapping( value = "/getFileHeadlectors", method = RequestMethod.GET)
    @ResponseBody
    public String getFileHeadlectors(int idLecturer){
        List<FileDto> listFile = fileService.getFileHeadlectors(idLecturer);
        return new Gson().toJson(listFile);
    }
    
    @RequestMapping( value = "/getFileProfessor", method = RequestMethod.GET)
    @ResponseBody
    public String getFileProfessor(int idLecturer){
        List<FileDto> listFile = fileService.getFileProfessor(idLecturer);
        return new Gson().toJson(listFile);
    }
    
    @RequestMapping(value = "/deleteFile", method = RequestMethod.GET)
    @ResponseBody
    public String deleteFile(String idTranFile){
        fileService.deleteFile(Integer.parseInt(idTranFile));
        Map map = new HashMap<>();
        map.put("message", "Data berhasil dihapus");
        map.put("status", 1);
        return new Gson().toJson(map);
    }
}
