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
import repository.dosen.dto.Faculty;
import repository.dosen.service.FacultyService;

/**
 *
 * @author Jaret
 */
@Controller
public class MasterDataController {
    
    @Autowired
    FacultyService facultyService;
    
    @RequestMapping(value = "/showMasterData", method = RequestMethod.GET)
    public String showMasterData(ModelMap model){
        List<Faculty> listFaculty = facultyService.getFaculty();
        model.addAttribute("dataFaculty", listFaculty);
        return "master_data_page";
    }
}
