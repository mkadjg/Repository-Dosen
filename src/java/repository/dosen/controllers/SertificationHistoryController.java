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
import repository.dosen.dto.SertificationHistory;
import repository.dosen.service.FileService;
import repository.dosen.service.SertificationHistoryService;

/**
 *
 * @author Jaret
 */
@Controller
public class SertificationHistoryController {
    
    @Autowired
    FileService fileService;
    
    @Autowired
    SertificationHistoryService sertificationHistoryService;
    
    @RequestMapping(value = "/saveSertificationHistory", method = RequestMethod.POST)
    @ResponseBody
    public String saveSertificationHistory(SertificationHistory sertificationHistory){
        FileDto fileDto = new FileDto();
        fileDto.setIdTranFile(sertificationHistory.getIdTranFile());
        fileDto.setIdLecturer(sertificationHistory.getIdLecturer());
        fileDto.setNameFile(sertificationHistory.getPathFile());
        fileDto.setIdDetail(sertificationHistory.getIdDetail());
        fileDto.setState(1);
        fileService.saveFile(fileDto);
        sertificationHistoryService.saveSertificationHistory(sertificationHistory);
        Map map = new HashMap<>();
        map.put("message", "Data berhasil ditambahkan");
        map.put("status", 1);
        return new Gson().toJson(map);
    }
    
    @RequestMapping(value = "/getSertificationHistory", method = RequestMethod.GET)
    @ResponseBody
    public String getSertificationHistory(String idLecturer){
        List<SertificationHistory> listSertificationHistory = sertificationHistoryService.getSertificationHistory(Integer.parseInt(idLecturer));
        return new Gson().toJson(listSertificationHistory);
    }
    
    @RequestMapping(value = "/deleteSertificationHistory", method = RequestMethod.GET)
    @ResponseBody
    public String deleteSertificationHistory(String idTranFile, String idSertificationHistory){
        sertificationHistoryService.deleteSertificationHistory(Integer.parseInt(idSertificationHistory));
        fileService.deleteFile(Integer.parseInt(idTranFile));
        Map map = new HashMap<>();
        map.put("message", "Data berhasil dihapus");
        map.put("status", 1);
        return new Gson().toJson(map);
    }
    
    @RequestMapping(value = "/searchSertificationHistory", method = RequestMethod.GET)
    @ResponseBody
    public String searchSertificationHistory(String sertificationPart){
        List<SertificationHistory> listlectureHistory = sertificationHistoryService.searchSertificationHistory(sertificationPart);
        return new Gson().toJson(listlectureHistory);
    }
    
    
}
