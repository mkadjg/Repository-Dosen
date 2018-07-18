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
import repository.dosen.dto.News;
import repository.dosen.service.NewsService;

/**
 *
 * @author Jaret
 */
@Controller
public class MasterNewsController {
    
    @Autowired
    NewsService newsService;
    
    @RequestMapping(value = "/detilNews", method = RequestMethod.GET)
    public String detilNews(int idNews, ModelMap model){
        News news = newsService.getDataNews(idNews);
        model.addAttribute("data", news);
        return "detil_news_admin";
    }
    
    @RequestMapping( value = "/getNewsAdmin", method = RequestMethod.GET)
    @ResponseBody
    public String getFileNewsAdmin(){
        List<News> listNews = newsService.getNews();
        return new Gson().toJson(listNews);
    }
    
    @RequestMapping( value="/showMasterNews", method = RequestMethod.GET)
    public String showMasterNews(){
        return "master_news_page";
    }
    
    @RequestMapping(value = "/addNews", method = RequestMethod.GET)
    public String addNews(ModelMap model){
        News news = new News();
        model.addAttribute("data", news);
        return "insert_news_page";
    }
    
    @RequestMapping(value = "/updateNews", method = RequestMethod.GET)
    public String updateNews(int idNews, ModelMap model){
        News news = newsService.getDataNews(idNews);
        model.addAttribute("data", news);
        return "update_news_page";
    }
    
    @RequestMapping(value = "/detilNewsDosen", method = RequestMethod.GET)
    public String detilNewsDosen(int idNews, ModelMap model){
        News news = newsService.getDataNews(idNews);
        model.addAttribute("data", news);
        return "detil_news_dosen";
    }
    
    @RequestMapping(value = "/detilNewsAdmin", method = RequestMethod.GET)
    public String detilNewsAdmin(int idNews, ModelMap model){
        News news = newsService.getDataNews(idNews);
        model.addAttribute("data", news);
        return "detil_news_admin";
    }
    
    @RequestMapping(value = "/doUpdateNews", method = RequestMethod.POST)
    public String doUpdateNews(News news, ModelMap model){
        newsService.doUpdateNews(news);
        return "redirect:dashboard.htm";
    }
    
    @RequestMapping(value = "/saveNews", method = RequestMethod.POST)
    public String saveNews(News news, ModelMap model){
        newsService.saveNews(news);
        return "redirect:dashboard.htm";
    }
    
    @RequestMapping(value = "/deleteNews", method = RequestMethod.GET)
    public String deleteNews(int idNews){
        newsService.deleteNews(idNews);
        return "redirect:dashboard.htm";
    }
    
}
