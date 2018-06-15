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
import repository.dosen.dto.Faculty;
import repository.dosen.service.FacultyService;

/**
 *
 * @author Jaret
 */
@Controller
public class FacultyController {
    
    @Autowired
    FacultyService facultyService;
    
    @RequestMapping(value = "/getFaculty", method = RequestMethod.GET)
    @ResponseBody
    public String getFaculty(){
        List<Faculty> listFaculty = facultyService.getFaculty();
        return new Gson().toJson(listFaculty);
    }
    
    @RequestMapping(value = "/getDataFaculty", method = RequestMethod.GET)
    @ResponseBody
    public String getDataFaculty(String idFaculty){
        Faculty faculty = facultyService.getDataFaculty(idFaculty);
        return new Gson().toJson(faculty);
    }
    
    @RequestMapping(value = "/saveFaculty", method = RequestMethod.POST)
    @ResponseBody
    public String saveFaculty(Faculty faculty){
        facultyService.saveFaculty(faculty);
        Map map = new HashMap<>();
        map.put("status", 1);
        map.put("message", "Data telah ditambahkan");
        return new Gson().toJson(map);
    }
    
    @RequestMapping(value = "/deleteFaculty", method = RequestMethod.GET)
    @ResponseBody
    public String deleteFaculty(String idFaculty){
        facultyService.deleteFaculty(idFaculty);
        Map map = new HashMap<>();
        map.put("status", 1);
        map.put("message", "Data telah dihapus");
        return new Gson().toJson(map);
    }
    
    @RequestMapping(value = "/searchFaculty", method = RequestMethod.GET)
    @ResponseBody
    public String searchFaculty(String nameFaculty){
        List<Faculty> listFaculty =  facultyService.searchFaculty(nameFaculty);
        return new Gson().toJson(listFaculty);
    }
}
