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
import repository.dosen.service.GenderService;
import repository.dosen.service.LecturerService;
import repository.dosen.service.MajorService;
import repository.dosen.service.ReligionService;

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
        lecturerService.saveLecturer(lecturer);
        Map map = new HashMap();
        map.put("status", 1);
        map.put("message", "Berhasil execute data");
        map.put("idLecturer", lecturer.getIdLecturer());
        return new Gson().toJson(map);
    }
    
    

}
