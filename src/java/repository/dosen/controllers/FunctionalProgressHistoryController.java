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
import repository.dosen.dto.FunctionalProgressHistoryDto;
import repository.dosen.dto.LecturerProgressHistoryDto;
import repository.dosen.service.FunctionalProgressHistoryService;

/**
 *
 * @author Jaret
 */
@Controller
public class FunctionalProgressHistoryController {
    
    @Autowired
    FunctionalProgressHistoryService functionalProgressHistoryService;
    
    @RequestMapping(value = "/getAssistantProgressHistory", method = RequestMethod.GET)
    @ResponseBody
    public String getLecturerProgressHistory(){
        List<FunctionalProgressHistoryDto> listData = functionalProgressHistoryService.getAssistantProgressHistory();
        return new Gson().toJson(listData);
    }
    
    @RequestMapping(value = "/getAssistantProgressHistoryByFaculty", method = RequestMethod.GET)
    @ResponseBody
    public String getLecturerProgressHistoryByFaculty(String idFaculty){
        List<FunctionalProgressHistoryDto> listData = functionalProgressHistoryService.getAssistantProgressHistoryByFaculty(idFaculty);
        return new Gson().toJson(listData);
    }
    
    @RequestMapping(value = "/getAssistantProgressHistoryByMajor", method = RequestMethod.GET)
    @ResponseBody
    public String getAssistantProgressHistoryByMajor(String idMajor, String idFaculty){
        if (idMajor.equals("0")){
            List<FunctionalProgressHistoryDto> listData = functionalProgressHistoryService.getAssistantProgressHistoryByFaculty(idFaculty);
            return new Gson().toJson(listData);
        } else {
            List<FunctionalProgressHistoryDto> listData = functionalProgressHistoryService.getAssistantProgressHistoryByMajor(idMajor);
            return new Gson().toJson(listData);
        }
    }
}
