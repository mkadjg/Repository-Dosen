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
    
    @RequestMapping(value = "/saveFileRecruitment", method = RequestMethod.POST)
    @ResponseBody
    public String saveFileRecruitment(String idLecturer, String pathFile, String idDetail){
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
    
    @RequestMapping( value = "/getFileRecruitment", method = RequestMethod.GET)
    @ResponseBody
    public String getFileRecruitment(int idLecturer){
        List<FileDto> listFile = fileService.getFileRecruitment(idLecturer);
        return new Gson().toJson(listFile);
    }
}
