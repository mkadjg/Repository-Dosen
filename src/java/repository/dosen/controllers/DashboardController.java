/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Jaret
 */
@Controller
public class DashboardController {
    
    @RequestMapping( value="/dashboard", method = RequestMethod.GET)
    public String showDashboard(){
        return "dashboard";
    }
    
}
