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
import repository.dosen.dto.StudyHistory;
import repository.dosen.service.FileService;
import repository.dosen.service.StudyHistoryService;

/**
 *
 * @author Jaret
 */
@Controller
public class StudyHistoryController {
    
    @Autowired
    FileService fileService;
    
    @Autowired
    StudyHistoryService studyHistoryService;
    
    @RequestMapping(value = "/saveStudyHistory", method = RequestMethod.POST)
    @ResponseBody
    public String saveStudyHistory(StudyHistory studyHistory){
        FileDto fileDto = new FileDto();
        fileDto.setIdTranFile(studyHistory.getIdTranFile());
        fileDto.setIdLecturer(studyHistory.getIdLecturer());
        fileDto.setNameFile(studyHistory.getPathFile());
        fileDto.setIdDetail(studyHistory.getIdDetail());
        fileDto.setState(1);
        fileService.saveFile(fileDto);
        studyHistoryService.saveStudyHistory(studyHistory);
        Map map = new HashMap<>();
        map.put("message", "Data berhasil ditambahkan");
        map.put("status", 1);
        return new Gson().toJson(map);
    }
    
    @RequestMapping(value = "/getStudyHistory", method = RequestMethod.GET)
    @ResponseBody
    public String getStudyHistory(String idLecturer){
        List<StudyHistory> listStudyHistory = studyHistoryService.getStudyHistory(Integer.parseInt(idLecturer));
        return new Gson().toJson(listStudyHistory);
    }
    
    @RequestMapping(value = "/deleteStudyHistory", method = RequestMethod.GET)
    @ResponseBody
    public String deleteStudyHistory(String idTranFile, String idStudyHistory){
        studyHistoryService.deleteStudyHistory(Integer.parseInt(idStudyHistory));
        fileService.deleteFile(Integer.parseInt(idTranFile));
        Map map = new HashMap<>();
        map.put("message", "Data berhasil dihapus");
        map.put("status", 1);
        return new Gson().toJson(map);
    }
    
    @RequestMapping(value = "/searchStudyHistory", method = RequestMethod.GET)
    @ResponseBody
    public String searchStudyHistory(String nameStudy){
        List<StudyHistory> listStudyHistory = studyHistoryService.searchStudyHistory(nameStudy);
        return new Gson().toJson(listStudyHistory);
    }
}
