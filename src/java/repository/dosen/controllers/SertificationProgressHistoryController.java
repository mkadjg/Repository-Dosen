/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.controllers;

import com.google.gson.Gson;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import repository.dosen.dto.SertificationProgressHistoryDto;
import repository.dosen.service.SertificationProgressHistoryService;

/**
 *
 * @author Jaret
 */
@Controller
public class SertificationProgressHistoryController {
    
    @Autowired
    SertificationProgressHistoryService sertificationProgressHistoryService;
    
    @RequestMapping(value = "/getSertificationProgressHistory", method = RequestMethod.GET)
    @ResponseBody
    public String getSertificationProgressHistory(){
        List<SertificationProgressHistoryDto> listData = sertificationProgressHistoryService.getSertificationProgressHistory();
        return new Gson().toJson(listData);
    }
    
    @RequestMapping(value = "/getSertificationProgressHistoryByFaculty", method = RequestMethod.GET)
    @ResponseBody
    public String getSertificationProgressHistoryByFaculty(String idFaculty){
        List<SertificationProgressHistoryDto> listData = sertificationProgressHistoryService.getSertificationProgressHistoryByFaculty(idFaculty);
        return new Gson().toJson(listData);
    }
    
    @RequestMapping(value = "/getSertificationProgressHistoryByMajor", method = RequestMethod.GET)
    @ResponseBody
    public String getSertificationProgressHistoryByMajor(String idMajor, String idFaculty){
        if (idMajor.equals("0")){
            List<SertificationProgressHistoryDto> listData = sertificationProgressHistoryService.getSertificationProgressHistoryByFaculty(idFaculty);
            return new Gson().toJson(listData);
        } else {
            List<SertificationProgressHistoryDto> listData = sertificationProgressHistoryService.getSertificationProgressHistoryByMajor(idMajor);
            return new Gson().toJson(listData);
        }
    }
}
