/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.controllers;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import repository.dosen.dto.DetailFileDto;
import repository.dosen.dto.Functional;
import repository.dosen.dto.Lecturer;
import repository.dosen.dto.Study;
import repository.dosen.service.DetailFileService;
import repository.dosen.service.FunctionalService;
import repository.dosen.service.LecturerService;
import repository.dosen.service.StudyService;

/**
 *
 * @author Jaret
 */
@Controller
public class PortofolioController {
    
    @Autowired
    LecturerService lecturerService;
    
    @Autowired
    DetailFileService detailFileService;
    
    @Autowired
    StudyService studyService;
    
    @Autowired
    FunctionalService functionalService;
    
    @RequestMapping( value = "/portofolio", method = RequestMethod.GET)
    public String showPortofolio(int idLecturer, ModelMap model){
        Lecturer lecturer = lecturerService.getDataLecturer(idLecturer);
        List<DetailFileDto> listDetailHistoryLecture = detailFileService.getDetailFileHistoryLecture();
        List<DetailFileDto> listDetailHistoryStudy = detailFileService.getDetailFileHistoryStudy();
        List<DetailFileDto> listDetailHistoryFunctional = detailFileService.getDetailFileHistoryFunctional();
        List<DetailFileDto> listDetailHistorySertification = detailFileService.getDetailFileHistorySertification();
        List<Study> listStudy = studyService.getStudy();
        List<Functional> listFunctional = functionalService.getFunctional();
        model.addAttribute("fileHistoryLecture", listDetailHistoryLecture);
        model.addAttribute("fileHistoryStudy", listDetailHistoryStudy);
        model.addAttribute("fileHistoryFunctional", listDetailHistoryFunctional);
        model.addAttribute("fileHistorySertification", listDetailHistorySertification);
        model.addAttribute("listBiodata", lecturer);
        model.addAttribute("dataStudy", listStudy);
        model.addAttribute("dataFunctional", listFunctional);
        return "portofolio_page";
    }
    
}
