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
import repository.dosen.dto.News;
import repository.dosen.service.NewsService;

/**
 *
 * @author Jaret
 */
@Controller
public class DashboardController {
    
    @Autowired
    NewsService newsService;
    
    @RequestMapping( value="/dashboard", method = RequestMethod.GET)
    public String showDashboard(ModelMap model){
        List<News> listNews = newsService.getNews();
        model.addAttribute("data", listNews);
        return "dashboard";
    }
    
    @RequestMapping(value = "/dashboard_dosen", method = RequestMethod.GET)
    public String onShowDashboradDosen(ModelMap model){
        List<News> listNews = newsService.getNews();
        model.addAttribute("data", listNews);
        return "dashboard_dosen";
    }
    
}
