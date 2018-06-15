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
import repository.dosen.dto.Lecture;
import repository.dosen.service.LectureService;

/**
 *
 * @author Jaret
 */
@Controller
public class LectureController {
    
    @Autowired
    LectureService lectureService;
    
    @RequestMapping(value = "/getLecture", method = RequestMethod.GET)
    @ResponseBody
    public String getLecture(){
        List<Lecture> listLecture = lectureService.getLecture();
        return new Gson().toJson(listLecture);
    }
    
    @RequestMapping(value = "/getDataLecture", method = RequestMethod.GET)
    @ResponseBody
    public String getDataLecture(String idLecture){
        Lecture lecture = lectureService.getDataLecture(idLecture);
        return new Gson().toJson(lecture);
    }
    
    @RequestMapping(value = "/saveLecture", method = RequestMethod.POST)
    @ResponseBody
    public String saveLecture(Lecture lecture){
        lectureService.saveLecture(lecture);
        Map map = new HashMap<>();
        map.put("status", 1);
        map.put("message", "Data telah ditambahkan");
        return new Gson().toJson(map);
    }
    
    @RequestMapping(value = "/deleteLecture", method = RequestMethod.GET)
    @ResponseBody
    public String deleteLecture(String idLecture){
        lectureService.deleteLecture(idLecture);
        Map map = new HashMap<>();
        map.put("status", 1);
        map.put("message", "Data telah dihapus");
        return new Gson().toJson(map);
    }
    
    @RequestMapping(value = "/searchLecture", method = RequestMethod.GET)
    @ResponseBody
    public String searchLecture(String nameLecture){
        List<Lecture> listLecture =  lectureService.searchLecture(nameLecture);
        return new Gson().toJson(listLecture);
    }
}
