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
import repository.dosen.dto.FunctionalHistory;
import repository.dosen.service.FileService;
import repository.dosen.service.FunctionalHistoryService;

/**
 *
 * @author Jaret
 */
@Controller
public class FunctionalHistoryController {
    
    @Autowired
    FileService fileService;
    
    @Autowired
    FunctionalHistoryService functionalHistoryService;
    
    @RequestMapping(value = "/saveFunctionalHistory", method = RequestMethod.POST)
    @ResponseBody
    public String saveFunctionalHistory(FunctionalHistory functionalHistory){
        FileDto fileDto = new FileDto();
        fileDto.setIdTranFile(functionalHistory.getIdTranFile());
        fileDto.setIdLecturer(functionalHistory.getIdLecturer());
        fileDto.setNameFile(functionalHistory.getPathFile());
        fileDto.setIdDetail(functionalHistory.getIdDetail());
        fileDto.setState(1);
        fileService.saveFile(fileDto);
        functionalHistoryService.saveFunctionalHistory(functionalHistory);
        Map map = new HashMap<>();
        map.put("message", "Data berhasil ditambahkan");
        map.put("status", 1);
        return new Gson().toJson(map);
    }
    
    @RequestMapping(value = "/getFunctionalHistory", method = RequestMethod.GET)
    @ResponseBody
    public String getFunctionalHistory(String idLecturer){
        List<FunctionalHistory> listFunctionalHistory = functionalHistoryService.getFunctionalHistory(Integer.parseInt(idLecturer));
        return new Gson().toJson(listFunctionalHistory);
    }
    
    @RequestMapping(value = "/deleteFunctionalHistory", method = RequestMethod.GET)
    @ResponseBody
    public String deleteFunctionalHistory(String idTranFile, String idFunctionalHistory){
        functionalHistoryService.deleteFunctionalHistory(Integer.parseInt(idFunctionalHistory));
        fileService.deleteFile(Integer.parseInt(idTranFile));
        Map map = new HashMap<>();
        map.put("message", "Data berhasil dihapus");
        map.put("status", 1);
        return new Gson().toJson(map);
    }
    
    @RequestMapping(value = "/searchFunctionalHistory", method = RequestMethod.GET)
    @ResponseBody
    public String searchFunctionalHistory(String nameFunctional){
        List<FunctionalHistory> listlectureHistory = functionalHistoryService.searchFunctionalHistory(nameFunctional);
        return new Gson().toJson(listlectureHistory);
    }
    
    
}
