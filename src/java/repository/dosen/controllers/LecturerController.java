/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.controllers;

import com.google.gson.Gson;
import java.util.ArrayList;
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
import repository.dosen.dto.Gender;
import repository.dosen.dto.Lecturer;
import repository.dosen.dto.Major;
import repository.dosen.dto.Religion;
import repository.dosen.service.FacultyService;
import repository.dosen.service.FileService;
import repository.dosen.service.FunctionalHistoryService;
import repository.dosen.service.FunctionalProgressHistoryService;
import repository.dosen.service.GenderService;
import repository.dosen.service.LectureHistoryService;
import repository.dosen.service.LecturerProgressHistoryService;
import repository.dosen.service.LecturerService;
import repository.dosen.service.MajorService;
import repository.dosen.service.ReligionService;
import repository.dosen.service.SertificationHistoryService;
import repository.dosen.service.SertificationProgressHistoryService;
import repository.dosen.service.StudyHistoryService;
import repository.dosen.service.TranProgressFunctionalService;
import repository.dosen.service.TranProgressLecturerService;
import repository.dosen.service.TranProgressSertificationService;

/**
 *
 * @author sandi
 */
@Controller
public class LecturerController {
    
    @Autowired
    LecturerService lecturerService;
    
    @Autowired
    GenderService genderService;
    
    @Autowired
    ReligionService religionService;
    
    @Autowired
    MajorService majorService;
    
    @Autowired
    FacultyService facultyService;
    
    @Autowired
    FileService fileService;
    
    @Autowired
    StudyHistoryService studyHistoryService;
    
    @Autowired
    LectureHistoryService lectureHistoryService;
    
    @Autowired
    FunctionalHistoryService functionalHistoryService;
    
    @Autowired
    SertificationHistoryService sertificationHistoryService;
    
    @Autowired
    TranProgressLecturerService tranProgressLecturerService;
    
    @Autowired
    TranProgressFunctionalService tranProgressFunctionalService;
    
    @Autowired
    TranProgressSertificationService tranProgressSertificationService;
    
    @Autowired
    LecturerProgressHistoryService lecturerProgressHistoryService;
    
    @Autowired
    FunctionalProgressHistoryService functionalProgressHistoryService;
    
    @Autowired
    SertificationProgressHistoryService sertificationProgressHistoryService;
    
    @RequestMapping(value = "/lecturer", method = RequestMethod.GET)
    public String onShowLecturer(ModelMap model){
        List<Faculty> listFaculty = facultyService.getFaculty();
        model.addAttribute("dataFaculty", listFaculty);
        return "lecturer_page";
    }
    
    @RequestMapping(value = "/getLecturer", method = RequestMethod.GET)
    @ResponseBody
    public String getLecturer(){
        List<Lecturer> listLecturer = lecturerService.getLecturer();
        return new Gson().toJson(listLecturer);
    }    
    
    @RequestMapping(value = "/getDataLecturerByMajor", method = RequestMethod.GET)
    @ResponseBody
    public String getDataLecturerByMajor(String idMajor, String idFaculty){
        List<Lecturer> listLecturer = new ArrayList<>();
        if (idMajor.equals("0")){
            listLecturer = lecturerService.getLecturerByFaculty(idFaculty);
        } else {
            listLecturer = lecturerService.getLecturerByMajor(idMajor);
        }
        return new Gson().toJson(listLecturer);
    }
    
    @RequestMapping(value = "/getLecturerByNameLecturer", method = RequestMethod.GET)
    @ResponseBody
    public String getLecturerByNameLecturer(String nameLecturer, String idMajor, String idFaculty){
        List<Lecturer> listLecturer = new ArrayList<>();
        if (idMajor.equals("0")){
            listLecturer = lecturerService.getLecturerByFaculty(nameLecturer, idFaculty);
        } else if (idFaculty.equals("0") && idMajor.equals("0")){
            listLecturer = lecturerService.getLecturerByNameLecturer(nameLecturer);
        } else {
            listLecturer = lecturerService.getLecturerByMajor(nameLecturer, idMajor);
        }
        return new Gson().toJson(listLecturer);
    }
       
    @RequestMapping(value = "/addLecturer", method = RequestMethod.GET)
    public String addLecturer(ModelMap model){
        Lecturer lecturer = new Lecturer();
        List<Gender> listGender = genderService.getGender();
        List<Religion> listReligion = religionService.getReligion();
        List<Faculty> listFaculty = facultyService.getFaculty();
        List<Major> listMajor = majorService.getMajor();
        model.addAttribute("lecturer", lecturer);
        model.addAttribute("dataFaculty", listFaculty);
        model.addAttribute("dataMajor", listMajor);
        model.addAttribute("dataGender", listGender);
        model.addAttribute("dataReligion", listReligion);
        return "insert_lecturer_page";
    }
  
    @RequestMapping(value = "/saveLecturer", method = RequestMethod.POST)
    @ResponseBody
    public String saveLecturer(Lecturer lecturer){
        int cekData = lecturerService.saveLecturer(lecturer);
        if (cekData == 1){
            Map map = new HashMap();
            map.put("status", 0);
            map.put("message", "Username sudah tersedia");
            return new Gson().toJson(map);
        } else {
            Lecturer newLecturer = lecturerService.getDataLecturerForLogin(lecturer.getUsername(), lecturer.getPassword());
            Map map = new HashMap();
            map.put("status", 1);
            map.put("message", "Berhasil execute data");
            map.put("idLecturer", newLecturer.getIdLecturer());
            return new Gson().toJson(map);
        }
    }
    
    @RequestMapping(value = "/onEditLecturer", method = RequestMethod.POST)
    @ResponseBody
    public String onEditLecturer(Lecturer lecturer){
        lecturerService.editLecturer(lecturer);
        Map map = new HashMap();
        map.put("status", 1);
        map.put("message", "Berhasil execute data");
        map.put("idLecturer", lecturer.getIdLecturer());
        return new Gson().toJson(map);
    }
    
    @RequestMapping(value = "/cekLecturer", method = RequestMethod.GET)
    @ResponseBody
    public String cekLecturer(String username, String oldPassword){
        Lecturer lecturer = lecturerService.getDataLecturerForLogin(username, oldPassword);
        if (lecturer != null){
            Map map = new HashMap<>();
            map.put("message", "Cek berhasil");
            map.put("status", 1);
            return new Gson().toJson(map);
        } else {
            Map map = new HashMap<>();
            map.put("message", "Password lama anda salah !!!");
            map.put("status", 0);
            return new Gson().toJson(map);
        }
    }
    
    @RequestMapping(value = "/updateLecturer", method = RequestMethod.GET)
    @ResponseBody
    public String updateLecturer(String idLecturer, String username, String password){
        Lecturer lecturer = lecturerService.getDataLecturer(Integer.parseInt(idLecturer));
        lecturer.setIdLecturer(Integer.parseInt(idLecturer));
        lecturer.setUsername(username);
        lecturer.setPassword(password);
        lecturerService.updateLoginLecturer(lecturer);
        Map map = new HashMap<>();
        map.put("message", "Data berhasil diupdate");
        map.put("status", 1);
        return new Gson().toJson(map);
    }
    
    @RequestMapping(value = "/editLecturer", method = RequestMethod.GET)
    public String editLecturer(String idLecturer, ModelMap model){
        Lecturer lecturer = lecturerService.getDataLecturer(Integer.parseInt(idLecturer));
        List<Gender> listGender = genderService.getGender();
        List<Religion> listReligion = religionService.getReligion();
        List<Faculty> listFaculty = facultyService.getFaculty();
        List<Major> listMajor = majorService.getMajor();
        model.addAttribute("lecturer", lecturer);
        model.addAttribute("dataFaculty", listFaculty);
        model.addAttribute("dataMajor", listMajor);
        model.addAttribute("dataGender", listGender);
        model.addAttribute("dataReligion", listReligion);
        return "update_lecturer_page";
    } 
    
    @RequestMapping(value = "/editNidn", method = RequestMethod.GET)
    public String editNidn(String idLecturer, ModelMap model){
        Lecturer lecturer = lecturerService.getDataLecturer(Integer.parseInt(idLecturer));
        List<Gender> listGender = genderService.getGender();
        List<Religion> listReligion = religionService.getReligion();
        List<Faculty> listFaculty = facultyService.getFaculty();
        List<Major> listMajor = majorService.getMajor();
        model.addAttribute("lecturer", lecturer);
        model.addAttribute("dataFaculty", listFaculty);
        model.addAttribute("dataMajor", listMajor);
        model.addAttribute("dataGender", listGender);
        model.addAttribute("dataReligion", listReligion);
        return "update_nidn_page";
    } 
    
    @RequestMapping(value = "/deleteLecturer", method = RequestMethod.GET)
    @ResponseBody
    public String deleteLecturer(String idLecturer){
        sertificationHistoryService.deleteAllSertificationHistory(Integer.parseInt(idLecturer));
        functionalHistoryService.deleteAllFunctionalHistory(Integer.parseInt(idLecturer));
        lectureHistoryService.deleteAllLectureHistory(Integer.parseInt(idLecturer));
        studyHistoryService.deleteAllStudyHistory(Integer.parseInt(idLecturer));
        fileService.deleteAllFile(Integer.parseInt(idLecturer));
        
        tranProgressLecturerService.deleteTranProgressLecturer(Integer.parseInt(idLecturer));
        tranProgressFunctionalService.deleteTranProgressFunctional(Integer.parseInt(idLecturer)); 
        lecturerProgressHistoryService.deleteLecturerProgressHistory(Integer.parseInt(idLecturer));
        functionalProgressHistoryService.deleteFunctionalProgressHistory(Integer.parseInt(idLecturer));
        sertificationProgressHistoryService.deleteSertificationProgressHistory(Integer.parseInt(idLecturer));
        lecturerService.deleteLecturer(Integer.parseInt(idLecturer));
        return "lecturer_page";
    }
    
}
