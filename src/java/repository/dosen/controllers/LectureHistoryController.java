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
import repository.dosen.dto.FileDto;
import repository.dosen.dto.LectureHistory;
import repository.dosen.service.FileService;
import repository.dosen.service.LectureHistoryService;

/**
 *
 * @author Jaret
 */
@Controller
public class LectureHistoryController {
    
    @Autowired
    FileService fileService;
    
    @Autowired
    LectureHistoryService lectureHistoryService;
    
    @RequestMapping(value = "/saveLectureHistory", method = RequestMethod.POST)
    @ResponseBody
    public String saveLectureHistory(LectureHistory lectureHistory){
        FileDto fileDto = new FileDto();
        fileDto.setIdTranFile(lectureHistory.getIdTranFile());
        fileDto.setIdLecturer(lectureHistory.getIdLecturer());
        fileDto.setNameFile(lectureHistory.getPathFile());
        fileDto.setIdDetail(lectureHistory.getIdDetail());
        fileDto.setState(1);
        fileService.saveFile(fileDto);
        lectureHistoryService.saveLectureHistory(lectureHistory);
        Map map = new HashMap<>();
        map.put("message", "Data berhasil ditambahkan");
        map.put("status", 1);
        return new Gson().toJson(map);
    }
    
    @RequestMapping(value = "/getLectureHistory", method = RequestMethod.GET)
    @ResponseBody
    public String getLectureHistory(String idLecturer){
        List<LectureHistory> listLectureHistory = lectureHistoryService.getLectureHistory(Integer.parseInt(idLecturer));
        return new Gson().toJson(listLectureHistory);
    }
    
    @RequestMapping(value = "/deleteLectureHistory", method = RequestMethod.GET)
    @ResponseBody
    public String deleteLectureHistory(String idTranFile, String idLectureHistory){
        lectureHistoryService.deleteLectureHistory(Integer.parseInt(idLectureHistory));
        fileService.deleteFile(Integer.parseInt(idTranFile));
        Map map = new HashMap<>();
        map.put("message", "Data berhasil dihapus");
        map.put("status", 1);
        return new Gson().toJson(map);
    }
    
    @RequestMapping(value = "/searchLectureHistory", method = RequestMethod.GET)
    @ResponseBody
    public String searchLectureHistory(String nameLecture){
        List<LectureHistory> listlectureHistory = lectureHistoryService.searchLectureHistory(nameLecture);
        return new Gson().toJson(listlectureHistory);
    }
    
    
}
