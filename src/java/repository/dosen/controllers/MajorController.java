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
import repository.dosen.dto.Major;
import repository.dosen.service.MajorService;

/**
 *
 * @author Jaret
 */
@Controller
public class MajorController {
    
    @Autowired
    MajorService majorService;
    
    @RequestMapping(value = "/getDataMajorByFaculty", method = RequestMethod.GET)
    @ResponseBody
    public String getDataMajorByFaculty(String idFaculty){
        List<Major> listMajor = majorService.getDataMajorByFaculty(idFaculty);
        return new Gson().toJson(listMajor);
    }
    
    @RequestMapping(value = "/getDataFacultyByMajor", method = RequestMethod.GET)
    @ResponseBody
    public String getDataFacultyByMajor(String idMajor){
        Major major = majorService.getDataFacultyByMajor(idMajor);
        return new Gson().toJson(major);
    }
    
    @RequestMapping(value = "/getMajor", method = RequestMethod.GET)
    @ResponseBody
    public String getMajor(){
        List<Major> listMajor = majorService.getMajor();
        return new Gson().toJson(listMajor);
    }
    
    @RequestMapping(value = "/getDataMajor", method = RequestMethod.GET)
    @ResponseBody
    public String getDataMajor(String idMajor){
        Major major = majorService.getDataMajor(idMajor);
        return new Gson().toJson(major);
    }
    
    @RequestMapping(value = "/saveMajor", method = RequestMethod.POST)
    @ResponseBody
    public String saveMajor(Major major){
        majorService.saveMajor(major);
        Map map = new HashMap<>();
        map.put("status", 1);
        map.put("message", "Data telah ditambahkan");
        return new Gson().toJson(map);
    }
    
    @RequestMapping(value = "/deleteMajor", method = RequestMethod.GET)
    @ResponseBody
    public String deleteMajor(String idMajor){
        majorService.deleteMajor(idMajor);
        Map map = new HashMap<>();
        map.put("status", 1);
        map.put("message", "Data telah dihapus");
        return new Gson().toJson(map);
    }
    
    @RequestMapping(value = "/searchMajor", method = RequestMethod.GET)
    @ResponseBody
    public String searchFaculty(String nameMajor){
        List<Major> listMajor = majorService.searchMajor(nameMajor);
        return new Gson().toJson(listMajor);
    }
    
}
