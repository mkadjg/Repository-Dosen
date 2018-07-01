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
    public String getAssistantProgressHistory(){
        List<FunctionalProgressHistoryDto> listData = functionalProgressHistoryService.getAssistantProgressHistory();
        return new Gson().toJson(listData);
    }
    
    @RequestMapping(value = "/getAssistantProgressHistoryByFaculty", method = RequestMethod.GET)
    @ResponseBody
    public String getAssistantProgressHistoryByFaculty(String idFaculty){
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
    
    @RequestMapping(value = "/getLectorsProgressHistory", method = RequestMethod.GET)
    @ResponseBody
    public String getLectorsProgressHistory(){
        List<FunctionalProgressHistoryDto> listData = functionalProgressHistoryService.getLectorsProgressHistory();
        return new Gson().toJson(listData);
    }
    
    @RequestMapping(value = "/getLectorsProgressHistoryByFaculty", method = RequestMethod.GET)
    @ResponseBody
    public String getLectorsProgressHistoryByFaculty(String idFaculty){
        List<FunctionalProgressHistoryDto> listData = functionalProgressHistoryService.getLectorsProgressHistoryByFaculty(idFaculty);
        return new Gson().toJson(listData);
    }
    
    @RequestMapping(value = "/getLectorsProgressHistoryByMajor", method = RequestMethod.GET)
    @ResponseBody
    public String getLectorsProgressHistoryByMajor(String idMajor, String idFaculty){
        if (idMajor.equals("0")){
            List<FunctionalProgressHistoryDto> listData = functionalProgressHistoryService.getLectorsProgressHistoryByFaculty(idFaculty);
            return new Gson().toJson(listData);
        } else {
            List<FunctionalProgressHistoryDto> listData = functionalProgressHistoryService.getLectorsProgressHistoryByMajor(idMajor);
            return new Gson().toJson(listData);
        }
    }
    
    @RequestMapping(value = "/getHeadlectorsProgressHistory", method = RequestMethod.GET)
    @ResponseBody
    public String getHeadlectorsProgressHistory(){
        List<FunctionalProgressHistoryDto> listData = functionalProgressHistoryService.getHeadlectorsProgressHistory();
        return new Gson().toJson(listData);
    }
    
    @RequestMapping(value = "/getHeadlectorsProgressHistoryByFaculty", method = RequestMethod.GET)
    @ResponseBody
    public String getHeadlectorsProgressHistoryByFaculty(String idFaculty){
        List<FunctionalProgressHistoryDto> listData = functionalProgressHistoryService.getHeadlectorsProgressHistoryByFaculty(idFaculty);
        return new Gson().toJson(listData);
    }
    
    @RequestMapping(value = "/getHeadlectorsProgressHistoryByMajor", method = RequestMethod.GET)
    @ResponseBody
    public String getHeadlectorsProgressHistoryByMajor(String idMajor, String idFaculty){
        if (idMajor.equals("0")){
            List<FunctionalProgressHistoryDto> listData = functionalProgressHistoryService.getHeadlectorsProgressHistoryByFaculty(idFaculty);
            return new Gson().toJson(listData);
        } else {
            List<FunctionalProgressHistoryDto> listData = functionalProgressHistoryService.getHeadlectorsProgressHistoryByMajor(idMajor);
            return new Gson().toJson(listData);
        }
    }
    
    @RequestMapping(value = "/getProfessorProgressHistory", method = RequestMethod.GET)
    @ResponseBody
    public String getProfessorProgressHistory(){
        List<FunctionalProgressHistoryDto> listData = functionalProgressHistoryService.getProfessorProgressHistory();
        return new Gson().toJson(listData);
    }
    
    @RequestMapping(value = "/getProfessorProgressHistoryByFaculty", method = RequestMethod.GET)
    @ResponseBody
    public String getProfessorProgressHistoryByFaculty(String idFaculty){
        List<FunctionalProgressHistoryDto> listData = functionalProgressHistoryService.getProfessorProgressHistoryByFaculty(idFaculty);
        return new Gson().toJson(listData);
    }
    
    @RequestMapping(value = "/getProfessorProgressHistoryByMajor", method = RequestMethod.GET)
    @ResponseBody
    public String getProfessorProgressHistoryByMajor(String idMajor, String idFaculty){
        if (idMajor.equals("0")){
            List<FunctionalProgressHistoryDto> listData = functionalProgressHistoryService.getProfessorProgressHistoryByFaculty(idFaculty);
            return new Gson().toJson(listData);
        } else {
            List<FunctionalProgressHistoryDto> listData = functionalProgressHistoryService.getProfessorProgressHistoryByMajor(idMajor);
            return new Gson().toJson(listData);
        }
    }
}
