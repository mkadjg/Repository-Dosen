/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.controllers;

import com.google.gson.Gson;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import repository.dosen.dto.DetailFileDto;
import repository.dosen.service.DetailFileService;

/**
 *
 * @author Jaret
 */
@Controller
public class MasterFileController {
    
    @Autowired
    DetailFileService detailFileService;
    
    @RequestMapping( value = "/showMasterFile", method = RequestMethod.GET)
    public String showMasterFile(){
        return "master_file_page";
    }
    
    @RequestMapping( value = "/getDetailFileRecruitment", method = RequestMethod.GET)
    @ResponseBody
    public String getDetailFileRecruitment(){
        List<DetailFileDto> listDetailFile = detailFileService.getDetailFileRecruitment();
        return new Gson().toJson(listDetailFile);
    }
    
    @RequestMapping( value = "/getDetailFileHeadlectors", method = RequestMethod.GET)
    @ResponseBody
    public String getDetailFileHeadlectors(){
        List<DetailFileDto> listDetailFile = detailFileService.getDetailFileHeadlectors();
        return new Gson().toJson(listDetailFile);
    }
    
    @RequestMapping( value = "/getDetailFileNidn", method = RequestMethod.GET)
    @ResponseBody
    public String getDetailFileNidn(){
        List<DetailFileDto> listDetailFile = detailFileService.getDetailFileNidn();
        return new Gson().toJson(listDetailFile);
    }
    
    @RequestMapping( value = "/getDetailFileAssistant", method = RequestMethod.GET)
    @ResponseBody
    public String getDetailFileAssistant(){
        List<DetailFileDto> listDetailFile = detailFileService.getDetailFileAssistant();
        return new Gson().toJson(listDetailFile);
    }
    
    @RequestMapping( value = "/getDetailFileLectors", method = RequestMethod.GET)
    @ResponseBody
    public String getDetailFileLectors(){
        List<DetailFileDto> listDetailFile = detailFileService.getDetailFileLectors();
        return new Gson().toJson(listDetailFile);
    }
    
    @RequestMapping( value = "/getDetailFileSertification", method = RequestMethod.GET)
    @ResponseBody
    public String getDetailFileSertification(){
        List<DetailFileDto> listDetailFile = detailFileService.getDetailFileSertification();
        return new Gson().toJson(listDetailFile);
    }
    
    @RequestMapping( value = "/getDetailFileProfessor", method = RequestMethod.GET)
    @ResponseBody
    public String getDetailFileProfessor(){
        List<DetailFileDto> listDetailFile = detailFileService.getDetailFileProfessor();
        return new Gson().toJson(listDetailFile);
    }
    
    @RequestMapping( value = "/saveDetailFile", method = RequestMethod.POST)
    @ResponseBody
    public String saveDetailFile(DetailFileDto detailFileDto){
        detailFileService.saveDetailFile(detailFileDto);
        Map map = new HashMap<>();
        map.put("status", 1);
        map.put("message", "Data telah ditambahkan");
        return new Gson().toJson(map);
    }
    
    @RequestMapping( value = "/deleteDetailFile", method = RequestMethod.GET)
    @ResponseBody
    public String deleteDetailFile(int idDetail){
        detailFileService.deleteDetailFile(idDetail);
        Map map = new HashMap<>();
        map.put("status", 1);
        map.put("message", "Data telah ditambahkan");
        return new Gson().toJson(map);
    }
    
    @RequestMapping( value = "/searchDetailFile", method = RequestMethod.GET)
    @ResponseBody
    public String searchDetailFile(String nameDokumen, String idEvent){
        List<DetailFileDto> listDetailFile = new ArrayList<>();
        if (idEvent.equals("0")){
            listDetailFile = detailFileService.searchDetailFile(nameDokumen);
        } else {
            listDetailFile = detailFileService.searchDetailFile(nameDokumen, Integer.parseInt(idEvent));
        }
        return new Gson().toJson(listDetailFile);
    }
    
}
