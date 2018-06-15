/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.controllers;

import com.google.gson.Gson;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import repository.dosen.dto.DetailProgressDto;
import repository.dosen.service.DetailProgressService;

/**
 *
 * @author Jaret
 */
@Controller
public class MasterProgressController {
    
    @Autowired
    DetailProgressService detailProgressService;
    
    @RequestMapping(value = "/showMasterProgress", method = RequestMethod.GET)
    public String showMasterProgress(){
        return "master_progress_page";
    }
    
    @RequestMapping(value = "/getDetailProgressNidn", method = RequestMethod.GET)
    @ResponseBody
    public String getDetailProgressNidn(){
        List<DetailProgressDto> listDetailProgress = detailProgressService.getDetailProgressNidn();
        return new Gson().toJson(listDetailProgress);
    }
    
    @RequestMapping(value = "/getDetailProgressAssistant", method = RequestMethod.GET)
    @ResponseBody
    public String getDetailProgressAssistant(){
        List<DetailProgressDto> listDetailProgress = detailProgressService.getDetailProgressAssistant();
        return new Gson().toJson(listDetailProgress);
    }
    
    @RequestMapping(value = "/getDetailProgressLectors", method = RequestMethod.GET)
    @ResponseBody
    public String getDetailProgressLectors(){
        List<DetailProgressDto> listDetailProgress = detailProgressService.getDetailProgressLectors();
        return new Gson().toJson(listDetailProgress);
    }
    
    @RequestMapping(value = "/getDetailProgressHeadlectors", method = RequestMethod.GET)
    @ResponseBody
    public String getDetailProgressHeadlectors(){
        List<DetailProgressDto> listDetailProgress = detailProgressService.getDetailProgressHeadlectors();
        return new Gson().toJson(listDetailProgress);
    }
    
    @RequestMapping(value = "/getDetailProgressProfessor", method = RequestMethod.GET)
    @ResponseBody
    public String getDetailProgressProfessor(){
        List<DetailProgressDto> listDetailProgress = detailProgressService.getDetailProgressProfessor();
        return new Gson().toJson(listDetailProgress);
    }
    
    @RequestMapping(value = "/getDetailProgressSertification", method = RequestMethod.GET)
    @ResponseBody
    public String getDetailProgressSertification(){
        List<DetailProgressDto> listDetailProgress = detailProgressService.getDetailProgressSertification();
        return new Gson().toJson(listDetailProgress);
    }
    
    @RequestMapping(value = "/saveDetailProgress", method = RequestMethod.POST)
    @ResponseBody
    public String saveDetailProgress(DetailProgressDto detailProgressDto){
        detailProgressService.saveDetailProgress(detailProgressDto);
        Map map = new HashMap<>();
        map.put("status", 1);
        map.put("message", "Data telah ditambahkan");
        return new Gson().toJson(map);
    }
    
    @RequestMapping( value = "/deleteDetailProgress", method = RequestMethod.GET)
    @ResponseBody
    public String deleteDetailProgress(String idDetail){
        detailProgressService.deleteDetailProgress(Integer.parseInt(idDetail));
        Map map = new HashMap<>();
        map.put("status", 1);
        map.put("message", "Data berhasil dihapus");
        return new Gson().toJson(map);
    }
    
    @RequestMapping(value = "/searchDetailProgress", method = RequestMethod.GET)
    @ResponseBody
    public String searchDetailProgress(String description, String idEvent){
        List<DetailProgressDto> listDetailProgress = detailProgressService.searchDetailProgress(description, Integer.parseInt(idEvent));
        return new Gson().toJson(listDetailProgress);
    }
    
}
