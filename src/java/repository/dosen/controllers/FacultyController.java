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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import repository.dosen.dto.Faculty;
import repository.dosen.dto.Lecturer;
import repository.dosen.dto.Major;
import repository.dosen.service.FacultyService;
import repository.dosen.service.FileService;
import repository.dosen.service.FunctionalHistoryService;
import repository.dosen.service.FunctionalProgressHistoryService;
import repository.dosen.service.LectureHistoryService;
import repository.dosen.service.LecturerProgressHistoryService;
import repository.dosen.service.LecturerService;
import repository.dosen.service.MajorService;
import repository.dosen.service.SertificationHistoryService;
import repository.dosen.service.SertificationProgressHistoryService;
import repository.dosen.service.StudyHistoryService;
import repository.dosen.service.TranProgressFunctionalService;
import repository.dosen.service.TranProgressLecturerService;
import repository.dosen.service.TranProgressSertificationService;

/**
 *
 * @author Jaret
 */
@Controller
public class FacultyController {
    
    @Autowired
    FacultyService facultyService;
    
    @Autowired
    LecturerService lecturerService;
    
    @Autowired
    FileService fileService;
    
    @Autowired
    MajorService majorService;
    
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
    
    
    @RequestMapping(value = "/getFaculty", method = RequestMethod.GET)
    @ResponseBody
    public String getFaculty(){
        List<Faculty> listFaculty = facultyService.getFaculty();
        return new Gson().toJson(listFaculty);
    }
    
    @RequestMapping(value = "/getDataFaculty", method = RequestMethod.GET)
    @ResponseBody
    public String getDataFaculty(String idFaculty){
        Faculty faculty = facultyService.getDataFaculty(idFaculty);
        return new Gson().toJson(faculty);
    }
    
    @RequestMapping(value = "/saveFaculty", method = RequestMethod.POST)
    @ResponseBody
    public String saveFaculty(Faculty faculty){
        facultyService.saveFaculty(faculty);
        Map map = new HashMap<>();
        map.put("status", 1);
        map.put("message", "Data telah ditambahkan");
        return new Gson().toJson(map);
    }
    
    @RequestMapping(value = "/deleteFaculty", method = RequestMethod.GET)
    @ResponseBody
    public String deleteFaculty(String idFaculty){
        List<Lecturer> listLecturer = lecturerService.getLecturerByFaculty(idFaculty);
        for (Lecturer lecturer : listLecturer){
            sertificationHistoryService.deleteAllSertificationHistory(lecturer.getIdLecturer());
            functionalHistoryService.deleteAllFunctionalHistory(lecturer.getIdLecturer());
            lectureHistoryService.deleteAllLectureHistory(lecturer.getIdLecturer());
            studyHistoryService.deleteAllStudyHistory(lecturer.getIdLecturer());
            fileService.deleteAllFile(lecturer.getIdLecturer());

            tranProgressLecturerService.deleteTranProgressLecturer(lecturer.getIdLecturer());
            tranProgressFunctionalService.deleteTranProgressFunctional(lecturer.getIdLecturer()); 
            lecturerProgressHistoryService.deleteLecturerProgressHistory(lecturer.getIdLecturer());
            functionalProgressHistoryService.deleteFunctionalProgressHistory(lecturer.getIdLecturer());
            sertificationProgressHistoryService.deleteSertificationProgressHistory(lecturer.getIdLecturer());
            lecturerService.deleteLecturer(lecturer.getIdLecturer());
        }
        List<Major> listMajor = majorService.getDataMajorByFaculty(idFaculty);
        for (Major major : listMajor){
            majorService.deleteMajor(major.getIdMajor());
        }
        facultyService.deleteFaculty(idFaculty);
        Map map = new HashMap<>();
        map.put("status", 1);
        map.put("message", "Data telah dihapus");
        return new Gson().toJson(map);
    }
    
    @RequestMapping(value = "/searchFaculty", method = RequestMethod.GET)
    @ResponseBody
    public String searchFaculty(String nameFaculty){
        List<Faculty> listFaculty =  facultyService.searchFaculty(nameFaculty);
        return new Gson().toJson(listFaculty);
    }
}
