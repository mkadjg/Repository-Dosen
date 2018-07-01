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
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import repository.dosen.dto.DetailProgressDto;
import repository.dosen.dto.Faculty;
import repository.dosen.dto.FunctionalProgressHistoryDto;
import repository.dosen.dto.Lecturer;
import repository.dosen.dto.LecturerProgressHistoryDto;
import repository.dosen.dto.TranProgressFunctionalDto;
import repository.dosen.dto.TranProgressLecturerDto;
import repository.dosen.service.DetailProgressService;
import repository.dosen.service.FacultyService;
import repository.dosen.service.FunctionalProgressHistoryService;
import repository.dosen.service.LecturerProgressHistoryService;
import repository.dosen.service.LecturerService;
import repository.dosen.service.TranProgressFunctionalService;
import repository.dosen.service.TranProgressLecturerService;

/**
 *
 * @author Jaret
 */
@Controller
public class ProgressController {
    
    @Autowired
    FacultyService facultyService;
    
    @Autowired
    LecturerService lecturerService;
    
    @Autowired
    DetailProgressService detailProgressService;
    
    @Autowired
    LecturerProgressHistoryService lecturerProgressHistoryService;
    
    @Autowired
    FunctionalProgressHistoryService functionalProgressHistoryService;
    
    @Autowired
    TranProgressLecturerService tranProgressLecturerService;
    
    @Autowired
    TranProgressFunctionalService tranProgressFunctionalService;
    
    @RequestMapping(value = "/showProgress", method = RequestMethod.GET)
    public String onShowProgress(ModelMap model){
        List<Faculty> listFaculty = facultyService.getFaculty();
        model.addAttribute("dataFaculty", listFaculty);
        return "progress_page";
    }
    
    @RequestMapping(value = "/addProgressNidn", method = RequestMethod.GET)
    public String addProgressNidn(ModelMap model){
        List<Faculty> listFaculty = facultyService.getFaculty();
        model.addAttribute("dataFaculty", listFaculty);
        return "add_nidn";
    }
    
    @RequestMapping(value = "/addProgressAssistant", method = RequestMethod.GET)
    public String addProgressAssistant(ModelMap model){
        List<Faculty> listFaculty = facultyService.getFaculty();
        model.addAttribute("dataFaculty", listFaculty);
        return "add_assistant";
    }
    
    @RequestMapping(value = "/addProgressLectors", method = RequestMethod.GET)
    public String addProgressLectors(ModelMap model){
        List<Faculty> listFaculty = facultyService.getFaculty();
        model.addAttribute("dataFaculty", listFaculty);
        return "add_lectors";
    }
    
    @RequestMapping(value = "/addProgressHeadlectors", method = RequestMethod.GET)
    public String addProgressHeadlectors(ModelMap model){
        List<Faculty> listFaculty = facultyService.getFaculty();
        model.addAttribute("dataFaculty", listFaculty);
        return "add_headlectors";
    }
    
    @RequestMapping(value = "/addProgressProfessor", method = RequestMethod.GET)
    public String addProgressProfessor(ModelMap model){
        List<Faculty> listFaculty = facultyService.getFaculty();
        model.addAttribute("dataFaculty", listFaculty);
        return "add_professor";
    }
    
    @RequestMapping(value = "/getNewLecturer", method = RequestMethod.GET)
    @ResponseBody
    public String getNewLecturer(String idFaculty, String idMajor){
        List<Lecturer> listNewLecturer = lecturerService.getNewLecturer(idFaculty, idMajor);
        return new Gson().toJson(listNewLecturer);
    }
    
    @RequestMapping(value = "/getLecturerNonNidn", method = RequestMethod.GET)
    @ResponseBody
    public String getLecturerNonNidn(String idFaculty, String idMajor){
        List<Lecturer> listLecturerNonNidn = lecturerService.getLecturerNIDN(idFaculty, idMajor);
        return new Gson().toJson(listLecturerNonNidn);
    }
    
    @RequestMapping(value = "/getLecturerNonAssistant", method = RequestMethod.GET)
    @ResponseBody
    public String getLecturerNonAssistant(String idFaculty, String idMajor){
        List<Lecturer> listLecturerNonAssistant = lecturerService.getLecturerAssistant(idFaculty, idMajor);
        return new Gson().toJson(listLecturerNonAssistant);
    }
    
    @RequestMapping(value = "/getLecturerNonLectors", method = RequestMethod.GET)
    @ResponseBody
    public String getLecturerNonLectors(String idFaculty, String idMajor){
        List<Lecturer> listLecturerNonLectors = lecturerService.getLecturerLectors(idFaculty, idMajor);
        return new Gson().toJson(listLecturerNonLectors);
    }
    
    @RequestMapping(value = "/getLecturerNonHeadlectors", method = RequestMethod.GET)
    @ResponseBody
    public String getLecturerNonHeadlectors(String idFaculty, String idMajor){
        List<Lecturer> listLecturerNonHeadlectors = lecturerService.getLecturerHeadLectors(idFaculty, idMajor);
        return new Gson().toJson(listLecturerNonHeadlectors);
    }
    
    @RequestMapping(value = "/showProgressAssistant", method = RequestMethod.GET)
    public String showProgressAssistant(String idLecturer, ModelMap model){
        List<TranProgressFunctionalDto> listProgressAssistant = tranProgressFunctionalService.getTranProgressAssistant(Integer.parseInt(idLecturer));
        model.addAttribute("detailProgress", listProgressAssistant);
        return "detail_progress_assistant";
    }
    
    @RequestMapping(value = "/showProgressNidn", method = RequestMethod.GET)
    public String showProgressNidn(String idLecturer, ModelMap model){
        List<TranProgressLecturerDto> listProgressNidn = tranProgressLecturerService.getTranProgressNidn(Integer.parseInt(idLecturer));
        model.addAttribute("detailProgress", listProgressNidn);
        return "detail_progress_nidn";
    }
    
    @RequestMapping(value = "/getProgressAssistant", method = RequestMethod.GET)
    public String getProgressAssistant(String idLecturer, ModelMap model){
        FunctionalProgressHistoryDto functionalProgressHistoryDto = new FunctionalProgressHistoryDto();
        functionalProgressHistoryDto.setIdProgressHistory(0);
        functionalProgressHistoryDto.setIdFunctional(1);
        functionalProgressHistoryDto.setIdLecturer(Integer.parseInt(idLecturer));
        functionalProgressHistoryDto.setState(0);
        functionalProgressHistoryService.saveFunctionalProgressHistory(functionalProgressHistoryDto);
        List<TranProgressFunctionalDto> listProgressAssistant = tranProgressFunctionalService.getTranProgressAssistant(Integer.parseInt(idLecturer));
        model.addAttribute("detailProgress", listProgressAssistant);
        return "detail_progress_assistant";
    }
    
    @RequestMapping(value = "/getProgressNidn", method = RequestMethod.GET)
    public String getProgressNidn(String idLecturer, ModelMap model){
        LecturerProgressHistoryDto lecturerProgressHistoryDto = new LecturerProgressHistoryDto();
        lecturerProgressHistoryDto.setIdProgressHistory(0);
        lecturerProgressHistoryDto.setIdLecturer(Integer.parseInt(idLecturer));
        lecturerProgressHistoryService.saveLecturerProgressHistory(lecturerProgressHistoryDto);
        List<TranProgressLecturerDto> listProgressNidn = tranProgressLecturerService.getTranProgressNidn(Integer.parseInt(idLecturer));
        model.addAttribute("detailProgress", listProgressNidn);
        return "detail_progress_nidn";
    }
    
    @RequestMapping(value = "/saveProgressNidn", method = RequestMethod.GET)
    public String saveProgressNidn(int idDetail, int idProgressHistory, ModelMap model){
        TranProgressLecturerDto tranProgressLecturerDto = new TranProgressLecturerDto();
        tranProgressLecturerDto.setIdProgressHistory(idProgressHistory);
        tranProgressLecturerDto.setIdDetail(idDetail);
        tranProgressLecturerDto.setIdTranProgress(0);
        tranProgressLecturerService.saveTranProgressLecturer(tranProgressLecturerDto);
        LecturerProgressHistoryDto lecturerProgressHistoryDto = lecturerProgressHistoryService.getDataLecturerProgressHistory(idProgressHistory);
        List<TranProgressLecturerDto> listProgressNidn = tranProgressLecturerService.getTranProgressNidn(lecturerProgressHistoryDto.getIdLecturer());
        model.addAttribute("detailProgress", listProgressNidn);
        return "detail_progress_nidn";
    }
    
    @RequestMapping(value = "/saveProgressAssistant", method = RequestMethod.GET)
    public String saveProgressAssistant(int idDetail, int idProgressHistory, ModelMap model){
        TranProgressFunctionalDto tranProgressFunctionalDto = new TranProgressFunctionalDto();
        tranProgressFunctionalDto.setIdProgressHistory(idProgressHistory);
        tranProgressFunctionalDto.setIdDetail(idDetail);
        tranProgressFunctionalDto.setIdTranProgress(0);
        tranProgressFunctionalService.saveTranProgressFunctional(tranProgressFunctionalDto);
        FunctionalProgressHistoryDto functionalProgressHistoryDto = functionalProgressHistoryService.getDataFunctionalHistory(idProgressHistory);
        List<TranProgressFunctionalDto> listProgressAssistant = tranProgressFunctionalService.getTranProgressAssistant(functionalProgressHistoryDto.getIdLecturer());
        model.addAttribute("detailProgress", listProgressAssistant);
        return "detail_progress_assistant";
    }
}
