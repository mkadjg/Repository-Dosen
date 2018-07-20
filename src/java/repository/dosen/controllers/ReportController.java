/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.controllers;

import com.google.gson.Gson;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import repository.dosen.dto.Faculty;
import repository.dosen.dto.FileDto;
import repository.dosen.dto.FunctionalHistory;
import repository.dosen.dto.LectureHistory;
import repository.dosen.dto.Lecturer;
import repository.dosen.dto.Major;
import repository.dosen.dto.SertificationHistory;
import repository.dosen.dto.StudyHistory;
import repository.dosen.service.FacultyService;
import repository.dosen.service.FileService;
import repository.dosen.service.FunctionalHistoryService;
import repository.dosen.service.LectureHistoryService;
import repository.dosen.service.LecturerService;
import repository.dosen.service.MajorService;
import repository.dosen.service.ReportService;
import repository.dosen.service.SertificationHistoryService;
import repository.dosen.service.StudyHistoryService;

/**
 *
 * @author Jaret
 */
@Controller
public class ReportController {
    
    @Autowired
    FacultyService facultyService;
    
    @Autowired
    MajorService majorService;
    
    @Autowired
    LecturerService lecturerService;
    
    @Autowired 
    ReportService reportService;
    
    @Autowired 
    FileService fileService;
    
    @Autowired 
    LectureHistoryService lectureHistoryService;
    
    @Autowired 
    StudyHistoryService studyHistoryService;
    
    @Autowired 
    FunctionalHistoryService functionalHistoryService;
    
    @Autowired 
    SertificationHistoryService sertificationHistoryService;
    
      
    @RequestMapping(value = "/showReportResume", method = RequestMethod.GET)
    public String showReportResume(ModelMap model){
        List<Faculty> listFaculty = facultyService.getFaculty();
        model.addAttribute("dataFaculty", listFaculty);
        return "report_resume_lecturer";
    }
    
    @RequestMapping(value = "/showDetailReportResumeNidn", method = RequestMethod.GET)
    public String showDetailReportResumeNidn(String idFaculty, String idMajor, ModelMap model){
        Faculty faculty = new Faculty();
        Major major = new Major();
        if (!idFaculty.equals("0")){
            faculty = facultyService.getDataFaculty(idFaculty);
        } else {
            faculty.setIdFaculty(idFaculty);
            faculty.setNameFaculty("Seluruh Fakultas");
        }
        if (!idMajor.equals("0")){
            major = majorService.getDataMajor(idMajor);
        } else {
            major.setIdMajor(idMajor);
            major.setNameMajor("Seluruh Jurusan");
        }
        model.addAttribute("major", major);
        model.addAttribute("faculty", faculty);
        return "detail_resume_nidn";
    }
    
    @RequestMapping(value = "/showDetailReportResumeAssistant", method = RequestMethod.GET)
    public String showDetailReportResumeAssistant(String idFaculty, String idMajor, ModelMap model){
        Faculty faculty = new Faculty();
        Major major = new Major();
        if (!idFaculty.equals("0")){
            faculty = facultyService.getDataFaculty(idFaculty);
        } else {
            faculty.setIdFaculty(idFaculty);
            faculty.setNameFaculty("Seluruh Fakultas");
        }
        if (!idMajor.equals("0")){
            major = majorService.getDataMajor(idMajor);
        } else {
            major.setIdMajor(idMajor);
            major.setNameMajor("Seluruh Jurusan");
        }
        model.addAttribute("major", major);
        model.addAttribute("faculty", faculty);
        return "detail_resume_assistant";
    }
    
    @RequestMapping(value = "/showDetailReportResumeLectors", method = RequestMethod.GET)
    public String showDetailReportResumeLectors(String idFaculty, String idMajor, ModelMap model){
        Faculty faculty = new Faculty();
        Major major = new Major();
        if (!idFaculty.equals("0")){
            faculty = facultyService.getDataFaculty(idFaculty);
        } else {
            faculty.setIdFaculty(idFaculty);
            faculty.setNameFaculty("Seluruh Fakultas");
        }
        if (!idMajor.equals("0")){
            major = majorService.getDataMajor(idMajor);
        } else {
            major.setIdMajor(idMajor);
            major.setNameMajor("Seluruh Jurusan");
        }
        model.addAttribute("major", major);
        model.addAttribute("faculty", faculty);
        return "detail_resume_lectors";
    }
    
    @RequestMapping(value = "/showDetailReportResumeHeadlectors", method = RequestMethod.GET)
    public String showDetailReportResumeHeadlectors(String idFaculty, String idMajor, ModelMap model){
        Faculty faculty = new Faculty();
        Major major = new Major();
        if (!idFaculty.equals("0")){
            faculty = facultyService.getDataFaculty(idFaculty);
        } else {
            faculty.setIdFaculty(idFaculty);
            faculty.setNameFaculty("Seluruh Fakultas");
        }
        if (!idMajor.equals("0")){
            major = majorService.getDataMajor(idMajor);
        } else {
            major.setIdMajor(idMajor);
            major.setNameMajor("Seluruh Jurusan");
        }
        model.addAttribute("major", major);
        model.addAttribute("faculty", faculty);
        return "detail_resume_headlectors";
    }
    
    @RequestMapping(value = "/showDetailReportResumeProfessor", method = RequestMethod.GET)
    public String showDetailReportResumeProfessor(String idFaculty, String idMajor, ModelMap model){
        Faculty faculty = new Faculty();
        Major major = new Major();
        if (!idFaculty.equals("0")){
            faculty = facultyService.getDataFaculty(idFaculty);
        } else {
            faculty.setIdFaculty(idFaculty);
            faculty.setNameFaculty("Seluruh Fakultas");
        }
        if (!idMajor.equals("0")){
            major = majorService.getDataMajor(idMajor);
        } else {
            major.setIdMajor(idMajor);
            major.setNameMajor("Seluruh Jurusan");
        }
        model.addAttribute("major", major);
        model.addAttribute("faculty", faculty);
        return "detail_resume_professor";
    }
    
    @RequestMapping(value = "/showDetailReportResumeSertification", method = RequestMethod.GET)
    public String showDetailReportResumeSertification(String idFaculty, String idMajor, ModelMap model){
        Faculty faculty = new Faculty();
        Major major = new Major();
        if (!idFaculty.equals("0")){
            faculty = facultyService.getDataFaculty(idFaculty);
        } else {
            faculty.setIdFaculty(idFaculty);
            faculty.setNameFaculty("Seluruh Fakultas");
        }
        if (!idMajor.equals("0")){
            major = majorService.getDataMajor(idMajor);
        } else {
            major.setIdMajor(idMajor);
            major.setNameMajor("Seluruh Jurusan");
        }
        model.addAttribute("major", major);
        model.addAttribute("faculty", faculty);
        return "detail_resume_sertification";
    }
    
    @RequestMapping(value = "/getDetailReportResumeNidn", method = RequestMethod.GET)
    @ResponseBody
    public String getDetailReportResumeNidn(String idFaculty, String idMajor){
        List<Lecturer> listLecturer = lecturerService.getLecturerHasNidn(idFaculty, idMajor);
        return new Gson().toJson(listLecturer);
    }
    
    @RequestMapping(value = "/getDetailReportResumeAssistant", method = RequestMethod.GET)
    @ResponseBody
    public String getDetailReportResumeAssistant(String idFaculty, String idMajor){
        List<Lecturer> listLecturer = lecturerService.getLecturerHasAssistant(idFaculty, idMajor);
        return new Gson().toJson(listLecturer);
    }
    
    @RequestMapping(value = "/getDetailReportResumeLectors", method = RequestMethod.GET)
    @ResponseBody
    public String getDetailReportResumelectors(String idFaculty, String idMajor){
        List<Lecturer> listLecturer = lecturerService.getLecturerHasLectors(idFaculty, idMajor);
        return new Gson().toJson(listLecturer);
    }
    
    @RequestMapping(value = "/getDetailReportResumeHeadlectors", method = RequestMethod.GET)
    @ResponseBody
    public String getDetailReportResumeHeadlectors(String idFaculty, String idMajor){
        List<Lecturer> listLecturer = lecturerService.getLecturerHasHeadlectors(idFaculty, idMajor);
        return new Gson().toJson(listLecturer);
    }
    
    @RequestMapping(value = "/getDetailReportResumeProfessor", method = RequestMethod.GET)
    @ResponseBody
    public String getDetailReportResumeProfessor(String idFaculty, String idMajor){
        List<Lecturer> listLecturer = lecturerService.getLecturerHasProfessor(idFaculty, idMajor);
        return new Gson().toJson(listLecturer);
    }
    
    @RequestMapping(value = "/getDetailReportResumeSertification", method = RequestMethod.GET)
    @ResponseBody
    public String getDetailReportResumeSertification(String idFaculty, String idMajor){
        List<Lecturer> listLecturer = lecturerService.getLecturerHasSertification(idFaculty, idMajor);
        return new Gson().toJson(listLecturer);
    }
    
    @RequestMapping(value = "/getDataReportResume", method = RequestMethod.GET)
    @ResponseBody
    public String getDataReportResume(String idFaculty, String idMajor){
        List<Map> listResult = reportService.getDataReportResume(idFaculty, idMajor);
        return new Gson().toJson(listResult);
    }
    
    //=========================================================================================================================================
    
    @RequestMapping(value = "/showReportComprehensif", method = RequestMethod.GET)
    public String showReportComprehensif(ModelMap model){
        return "report_comprehensif_data";
    }
    
    @RequestMapping(value = "/showDetailHistoryComprehensif", method = RequestMethod.GET)
    public String showDetailHistoryComprehensif(String idLecturer, ModelMap model){
        Lecturer lecturer = lecturerService.getDataLecturer(Integer.parseInt(idLecturer));
        model.addAttribute("lecturer", lecturer);
        return "detail_comprehensif_history";
    }
    
    @RequestMapping(value = "/showDetailProgressComprehensif", method = RequestMethod.GET)
    public String showDetailProgressComprehensif(String idLecturer, ModelMap model){
        Lecturer lecturer = lecturerService.getDataLecturer(Integer.parseInt(idLecturer));
        model.addAttribute("lecturer", lecturer);
        return "detail_comprehensif_progress";
    }
    
    @RequestMapping(value = "/getDetailRecruitmentHistory", method = RequestMethod.GET)
    @ResponseBody
    public String getDetailRecruitmentHistory(String idLecturer){
        List<FileDto> listFile = fileService.getFileRecruitment(Integer.parseInt(idLecturer));
        return new Gson().toJson(listFile);
    }
    
    @RequestMapping(value = "/getDetailLectureHistory", method = RequestMethod.GET)
    @ResponseBody
    public String getDetailLectureHistory(String idLecturer){
        List<LectureHistory> listFile = lectureHistoryService.getLectureHistory(Integer.parseInt(idLecturer));
        return new Gson().toJson(listFile);
    }
    
    @RequestMapping(value = "/getDetailStudyHistory", method = RequestMethod.GET)
    @ResponseBody
    public String getDetailStudyHistory(String idLecturer){
        List<StudyHistory> listFile = studyHistoryService.getStudyHistory(Integer.parseInt(idLecturer));
        return new Gson().toJson(listFile);
    }
    
    @RequestMapping(value = "/getDetailFunctionalHistory", method = RequestMethod.GET)
    @ResponseBody
    public String getDetailFunctionalHistory(String idLecturer){
        List<FunctionalHistory> listFile = functionalHistoryService.getFunctionalHistory(Integer.parseInt(idLecturer));
        return new Gson().toJson(listFile);
    }
    
    @RequestMapping(value = "/getDetailSertificationHistory", method = RequestMethod.GET)
    @ResponseBody
    public String getDetailSertificationHistory(String idLecturer){
        List<SertificationHistory> listFile = sertificationHistoryService.getSertificationHistory(Integer.parseInt(idLecturer));
        return new Gson().toJson(listFile);
    }
    
    //==========================================================================
    
    @RequestMapping(value = "/showReportCareer", method = RequestMethod.GET)
    public String showReportCareer(){
        return "report_career";
    }
    
}
