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
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import repository.dosen.dto.Faculty;
import repository.dosen.dto.FunctionalProgressHistoryDto;
import repository.dosen.dto.Lecturer;
import repository.dosen.dto.LecturerProgressHistoryDto;
import repository.dosen.dto.SertificationProgressHistoryDto;
import repository.dosen.dto.TranProgressFunctionalDto;
import repository.dosen.dto.TranProgressLecturerDto;
import repository.dosen.dto.TranProgressSertificationDto;
import repository.dosen.service.DetailProgressService;
import repository.dosen.service.FacultyService;
import repository.dosen.service.FunctionalProgressHistoryService;
import repository.dosen.service.LecturerProgressHistoryService;
import repository.dosen.service.LecturerService;
import repository.dosen.service.SertificationProgressHistoryService;
import repository.dosen.service.TranProgressFunctionalService;
import repository.dosen.service.TranProgressLecturerService;
import repository.dosen.service.TranProgressSertificationService;

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
    SertificationProgressHistoryService sertificationProgressHistoryService;
    
    @Autowired
    TranProgressLecturerService tranProgressLecturerService;
    
    @Autowired
    TranProgressFunctionalService tranProgressFunctionalService;
    
    @Autowired
    TranProgressSertificationService tranProgressSertificationService;
    
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
    
    @RequestMapping(value = "/addProgressSertification", method = RequestMethod.GET)
    public String addProgressSertification(ModelMap model){
        List<Faculty> listFaculty = facultyService.getFaculty();
        model.addAttribute("dataFaculty", listFaculty);
        return "add_sertification";
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
    
    @RequestMapping(value = "/showProgressNidn", method = RequestMethod.GET)
    public String showProgressNidn(String idLecturer, ModelMap model){
        Lecturer lecturer = lecturerService.getDataLecturer(Integer.parseInt(idLecturer));
        model.addAttribute("lecturer", lecturer);
        return "detail_progress_nidn";
    }
    
    @RequestMapping(value = "/showProgressAssistant", method = RequestMethod.GET)
    public String showProgressAssistant(String idLecturer, ModelMap model){
        Lecturer lecturer = lecturerService.getDataLecturer(Integer.parseInt(idLecturer));
        model.addAttribute("lecturer", lecturer);
        return "detail_progress_assistant";
    }
    
    @RequestMapping(value = "/showProgressLectors", method = RequestMethod.GET)
    public String showProgressLectors(String idLecturer, ModelMap model){
        Lecturer lecturer = lecturerService.getDataLecturer(Integer.parseInt(idLecturer));
        model.addAttribute("lecturer", lecturer);
        return "detail_progress_lectors";
    }
    
    @RequestMapping(value = "/showProgressHeadlectors", method = RequestMethod.GET)
    public String showProgressHeadlectors(String idLecturer, ModelMap model){
        Lecturer lecturer = lecturerService.getDataLecturer(Integer.parseInt(idLecturer));
        model.addAttribute("lecturer", lecturer);
        return "detail_progress_headlectors";
    }
    
    @RequestMapping(value = "/showProgressProfessor", method = RequestMethod.GET)
    public String showProgressProfessor(String idLecturer, ModelMap model){
        Lecturer lecturer = lecturerService.getDataLecturer(Integer.parseInt(idLecturer));
        model.addAttribute("lecturer", lecturer);
        return "detail_progress_professor";
    }
    
    @RequestMapping(value = "/showProgressSertification", method = RequestMethod.GET)
    public String showProgressSertification(String idLecturer, ModelMap model){
        Lecturer lecturer = lecturerService.getDataLecturer(Integer.parseInt(idLecturer));
        model.addAttribute("lecturer", lecturer);
        return "detail_progress_sertification";
    }
    
    @RequestMapping(value = "/getProgressNidn", method = RequestMethod.GET)
    @ResponseBody
    public String getProgressNidn(String idLecturer, ModelMap model){
        List<TranProgressLecturerDto> listProgressNidn = tranProgressLecturerService.getTranProgressNidn(Integer.parseInt(idLecturer));
        return new Gson().toJson(listProgressNidn);
    }
    
    @RequestMapping(value = "/getProgressAssistant", method = RequestMethod.GET)
    @ResponseBody
    public String getProgressAssistant(String idLecturer, ModelMap model){
        List<TranProgressFunctionalDto> listProgressAssistant = tranProgressFunctionalService.getTranProgressAssistant(Integer.parseInt(idLecturer));
        return new Gson().toJson(listProgressAssistant);
    }
    
    @RequestMapping(value = "/getProgressLectors", method = RequestMethod.GET)
    @ResponseBody
    public String getProgressLectors(String idLecturer, ModelMap model){
        List<TranProgressFunctionalDto> listProgressLectors = tranProgressFunctionalService.getTranProgressLectors(Integer.parseInt(idLecturer));
        return new Gson().toJson(listProgressLectors);
    }
    
    @RequestMapping(value = "/getProgressHeadlectors", method = RequestMethod.GET)
    @ResponseBody
    public String getProgressHeadlectors(String idLecturer, ModelMap model){
        List<TranProgressFunctionalDto> listProgressHeadlectors = tranProgressFunctionalService.getTranProgressHeadlectors(Integer.parseInt(idLecturer));
        return new Gson().toJson(listProgressHeadlectors);
    }
    
    @RequestMapping(value = "/getProgressProfessor", method = RequestMethod.GET)
    @ResponseBody
    public String getProgressProfessor(String idLecturer, ModelMap model){
        List<TranProgressFunctionalDto> listProgressProfessor = tranProgressFunctionalService.getTranProgressProfessor(Integer.parseInt(idLecturer));
        return new Gson().toJson(listProgressProfessor);
    }
    
    @RequestMapping(value = "/getProgressSertification", method = RequestMethod.GET)
    @ResponseBody
    public String getProgressSertification(String idLecturer, ModelMap model){
        List<TranProgressSertificationDto> listProgressSertification = tranProgressSertificationService.getTranProgressSertification(Integer.parseInt(idLecturer));
        return new Gson().toJson(listProgressSertification);
    }
    
    @RequestMapping(value = "/createProgressNidn", method = RequestMethod.GET)
    public String createProgressNidn(String idLecturer, ModelMap model){
        LecturerProgressHistoryDto lecturerProgressHistoryDto = new LecturerProgressHistoryDto();
        lecturerProgressHistoryDto.setIdProgressHistory(0);
        lecturerProgressHistoryDto.setIdLecturer(Integer.parseInt(idLecturer));
        lecturerProgressHistoryService.saveLecturerProgressHistory(lecturerProgressHistoryDto);
        Lecturer lecturer = lecturerService.getDataLecturer(Integer.parseInt(idLecturer));
        model.addAttribute("lecturer", lecturer);
        return "detail_progress_nidn";
    }
    
    @RequestMapping(value = "/createProgressAssistant", method = RequestMethod.GET)
    public String createProgressAssistant(String idLecturer, ModelMap model){
        FunctionalProgressHistoryDto functionalProgressHistoryDto = new FunctionalProgressHistoryDto();
        functionalProgressHistoryDto.setIdProgressHistory(0);
        functionalProgressHistoryDto.setIdFunctional(1);
        functionalProgressHistoryDto.setIdLecturer(Integer.parseInt(idLecturer));
        functionalProgressHistoryDto.setState(0);
        functionalProgressHistoryService.saveFunctionalProgressHistory(functionalProgressHistoryDto);
        Lecturer lecturer = lecturerService.getDataLecturer(Integer.parseInt(idLecturer));
        model.addAttribute("lecturer", lecturer);
        return "detail_progress_assistant";
    }
    
    @RequestMapping(value = "/createProgressLectors", method = RequestMethod.GET)
    public String createProgressLectors(String idLecturer, ModelMap model){
        FunctionalProgressHistoryDto functionalProgressHistoryDto = new FunctionalProgressHistoryDto();
        functionalProgressHistoryDto.setIdProgressHistory(0);
        functionalProgressHistoryDto.setIdFunctional(2);
        functionalProgressHistoryDto.setIdLecturer(Integer.parseInt(idLecturer));
        functionalProgressHistoryDto.setState(0);
        functionalProgressHistoryService.saveFunctionalProgressHistory(functionalProgressHistoryDto);
        Lecturer lecturer = lecturerService.getDataLecturer(Integer.parseInt(idLecturer));
        model.addAttribute("lecturer", lecturer);
        return "detail_progress_lectors";
    }
    
    @RequestMapping(value = "/createProgressHeadlectors", method = RequestMethod.GET)
    public String createProgressHeadlectors(String idLecturer, ModelMap model){
        FunctionalProgressHistoryDto functionalProgressHistoryDto = new FunctionalProgressHistoryDto();
        functionalProgressHistoryDto.setIdProgressHistory(0);
        functionalProgressHistoryDto.setIdFunctional(3);
        functionalProgressHistoryDto.setIdLecturer(Integer.parseInt(idLecturer));
        functionalProgressHistoryDto.setState(0);
        functionalProgressHistoryService.saveFunctionalProgressHistory(functionalProgressHistoryDto);
        Lecturer lecturer = lecturerService.getDataLecturer(Integer.parseInt(idLecturer));
        model.addAttribute("lecturer", lecturer);
        return "detail_progress_headlectors";
    }
    
    @RequestMapping(value = "/createProgressProfessor", method = RequestMethod.GET)
    public String createProgressProfessor(String idLecturer, ModelMap model){
        FunctionalProgressHistoryDto functionalProgressHistoryDto = new FunctionalProgressHistoryDto();
        functionalProgressHistoryDto.setIdProgressHistory(0);
        functionalProgressHistoryDto.setIdFunctional(4);
        functionalProgressHistoryDto.setIdLecturer(Integer.parseInt(idLecturer));
        functionalProgressHistoryDto.setState(0);
        functionalProgressHistoryService.saveFunctionalProgressHistory(functionalProgressHistoryDto);
        Lecturer lecturer = lecturerService.getDataLecturer(Integer.parseInt(idLecturer));
        model.addAttribute("lecturer", lecturer);
        return "detail_progress_professor";
    }
    
    @RequestMapping(value = "/createProgressSertification", method = RequestMethod.GET)
    public String createProgressSertification(String idLecturer, ModelMap model){
        SertificationProgressHistoryDto sertificationProgressHistoryDto = new SertificationProgressHistoryDto();
        sertificationProgressHistoryDto.setIdProgressHistory(0);
        sertificationProgressHistoryDto.setIdLecturer(Integer.parseInt(idLecturer));
        sertificationProgressHistoryDto.setState(0);
        sertificationProgressHistoryService.saveSertificationProgressHistory(sertificationProgressHistoryDto);
        Lecturer lecturer = lecturerService.getDataLecturer(Integer.parseInt(idLecturer));
        model.addAttribute("lecturer", lecturer);
        return "detail_progress_sertification";
    }
    
    @RequestMapping(value = "/saveProgressNidn", method = RequestMethod.GET)
    public String saveProgressNidn(int idDetail, int idProgressHistory, ModelMap model){
        TranProgressLecturerDto tranProgressLecturerDto = new TranProgressLecturerDto();
        tranProgressLecturerDto.setIdProgressHistory(idProgressHistory);
        tranProgressLecturerDto.setIdDetail(idDetail);
        tranProgressLecturerDto.setIdTranProgress(0);
        tranProgressLecturerService.saveTranProgressLecturer(tranProgressLecturerDto);
        LecturerProgressHistoryDto lecturerProgressHistoryDto = lecturerProgressHistoryService.getDataLecturerProgressHistory(idProgressHistory);
        Lecturer lecturer = lecturerService.getDataLecturer(lecturerProgressHistoryDto.getIdLecturer());
        model.addAttribute("lecturer", lecturer);
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
        Lecturer lecturer = lecturerService.getDataLecturer(functionalProgressHistoryDto.getIdLecturer());
        model.addAttribute("lecturer", lecturer);
        return "detail_progress_assistant";
    }
    
    @RequestMapping(value = "/saveProgressLectors", method = RequestMethod.GET)
    public String saveProgressLectors(int idDetail, int idProgressHistory, ModelMap model){
        TranProgressFunctionalDto tranProgressFunctionalDto = new TranProgressFunctionalDto();
        tranProgressFunctionalDto.setIdProgressHistory(idProgressHistory);
        tranProgressFunctionalDto.setIdDetail(idDetail);
        tranProgressFunctionalDto.setIdTranProgress(0);
        tranProgressFunctionalService.saveTranProgressFunctional(tranProgressFunctionalDto);
        FunctionalProgressHistoryDto functionalProgressHistoryDto = functionalProgressHistoryService.getDataFunctionalHistory(idProgressHistory);
        Lecturer lecturer = lecturerService.getDataLecturer(functionalProgressHistoryDto.getIdLecturer());
        model.addAttribute("lecturer", lecturer);
        return "detail_progress_lectors";
    }
    
    @RequestMapping(value = "/saveProgressHeadlectors", method = RequestMethod.GET)
    public String saveProgressHeadlectors(int idDetail, int idProgressHistory, ModelMap model){
        TranProgressFunctionalDto tranProgressFunctionalDto = new TranProgressFunctionalDto();
        tranProgressFunctionalDto.setIdProgressHistory(idProgressHistory);
        tranProgressFunctionalDto.setIdDetail(idDetail);
        tranProgressFunctionalDto.setIdTranProgress(0);
        tranProgressFunctionalService.saveTranProgressFunctional(tranProgressFunctionalDto);
        FunctionalProgressHistoryDto functionalProgressHistoryDto = functionalProgressHistoryService.getDataFunctionalHistory(idProgressHistory);
        Lecturer lecturer = lecturerService.getDataLecturer(functionalProgressHistoryDto.getIdLecturer());
        model.addAttribute("lecturer", lecturer);
        return "detail_progress_headlectors";
    }
    
    @RequestMapping(value = "/saveProgressProfessor", method = RequestMethod.GET)
    public String saveProgressProfessor(int idDetail, int idProgressHistory, ModelMap model){
        TranProgressFunctionalDto tranProgressFunctionalDto = new TranProgressFunctionalDto();
        tranProgressFunctionalDto.setIdProgressHistory(idProgressHistory);
        tranProgressFunctionalDto.setIdDetail(idDetail);
        tranProgressFunctionalDto.setIdTranProgress(0);
        tranProgressFunctionalService.saveTranProgressFunctional(tranProgressFunctionalDto);
        FunctionalProgressHistoryDto functionalProgressHistoryDto = functionalProgressHistoryService.getDataFunctionalHistory(idProgressHistory);
        Lecturer lecturer = lecturerService.getDataLecturer(functionalProgressHistoryDto.getIdLecturer());
        model.addAttribute("lecturer", lecturer);
        return "detail_progress_professor";
    }
    
    @RequestMapping(value = "/saveProgressSertification", method = RequestMethod.GET)
    public String saveProgressSertification(int idDetail, int idProgressHistory, ModelMap model){
        TranProgressSertificationDto tranProgressSertificationDto = new TranProgressSertificationDto();
        tranProgressSertificationDto.setIdProgressHistory(idProgressHistory);
        tranProgressSertificationDto.setIdDetail(idDetail);
        tranProgressSertificationDto.setIdTranProgress(0);
        tranProgressSertificationService.saveTranProgressSertification(tranProgressSertificationDto);
        SertificationProgressHistoryDto sertificationProgressHistoryDto = sertificationProgressHistoryService.getDataSertificationProgressHistoryById(idProgressHistory);
        Lecturer lecturer = lecturerService.getDataLecturer(sertificationProgressHistoryDto.getIdLecturer());
        model.addAttribute("lecturer", lecturer);
        return "detail_progress_sertification";
    }
    
    @RequestMapping(value = "/updateProgressHistoryAssistant", method = RequestMethod.GET)
    @ResponseBody
    public String updateProgressHistoryAssistant(String idProgressHistory){
        functionalProgressHistoryService.updateFunctionalProgressHistory(Integer.parseInt(idProgressHistory));
        FunctionalProgressHistoryDto functionalProgressHistoryDto = functionalProgressHistoryService.getDataFunctionalHistory(Integer.parseInt(idProgressHistory));
        Map map = new HashMap<>();
        map.put("status", "1");
        map.put("idLecturer", functionalProgressHistoryDto.getIdLecturer());
        map.put("message", "Berhasil update data");
        return new Gson().toJson(map);
    }
    
    @RequestMapping(value = "/updateProgressHistoryLectors", method = RequestMethod.GET)
    @ResponseBody
    public String updateProgressHistoryLectors(String idProgressHistory){
        functionalProgressHistoryService.updateFunctionalProgressHistory(Integer.parseInt(idProgressHistory));
        FunctionalProgressHistoryDto functionalProgressHistoryDto = functionalProgressHistoryService.getDataFunctionalHistory(Integer.parseInt(idProgressHistory));
        Map map = new HashMap<>();
        map.put("status", "1");
        map.put("idLecturer", functionalProgressHistoryDto.getIdLecturer());
        map.put("message", "Berhasil update data");
        return new Gson().toJson(map);
    }
    
    @RequestMapping(value = "/updateProgressHistoryHeadlectors", method = RequestMethod.GET)
    @ResponseBody
    public String updateProgressHistoryHeadlectors(String idProgressHistory){
        functionalProgressHistoryService.updateFunctionalProgressHistory(Integer.parseInt(idProgressHistory));
        FunctionalProgressHistoryDto functionalProgressHistoryDto = functionalProgressHistoryService.getDataFunctionalHistory(Integer.parseInt(idProgressHistory));
        Map map = new HashMap<>();
        map.put("status", "1");
        map.put("idLecturer", functionalProgressHistoryDto.getIdLecturer());
        map.put("message", "Berhasil update data");
        return new Gson().toJson(map);
    }
    
    @RequestMapping(value = "/updateProgressHistoryProfessor", method = RequestMethod.GET)
    @ResponseBody
    public String updateProgressHistoryProfessor(String idProgressHistory){
        functionalProgressHistoryService.updateFunctionalProgressHistory(Integer.parseInt(idProgressHistory));
        FunctionalProgressHistoryDto functionalProgressHistoryDto = functionalProgressHistoryService.getDataFunctionalHistory(Integer.parseInt(idProgressHistory));
        Map map = new HashMap<>();
        map.put("status", "1");
        map.put("message", "Berhasil update data");
        map.put("idLecturer", functionalProgressHistoryDto.getIdLecturer());
        return new Gson().toJson(map);
    }
    
    @RequestMapping(value = "/updateProgressHistorySertification", method = RequestMethod.GET)
    @ResponseBody
    public String updateProgressHistorySertification(String idProgressHistory){
        sertificationProgressHistoryService.updateSertificationProgressHistory(Integer.parseInt(idProgressHistory));
        SertificationProgressHistoryDto sertificationProgressHistoryDto = sertificationProgressHistoryService.getDataSertificationProgressHistoryById(Integer.parseInt(idProgressHistory));
        Map map = new HashMap<>();
        map.put("status", "1");
        map.put("message", "Berhasil update data");
        map.put("idLecturer", sertificationProgressHistoryDto.getIdLecturer());
        return new Gson().toJson(map);
    }
    
    @RequestMapping(value = "/showProgressDosen", method = RequestMethod.GET)
    public String showProgressDosen(String idLecturer, ModelMap model){
        Lecturer lecturer = lecturerService.getDataLecturer(Integer.parseInt(idLecturer));
        model.addAttribute("lecturer", lecturer);
        return "progress_page_dosen";
    }; 
}
