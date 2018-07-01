/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.service.impl;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import repository.dosen.dao.NewsDao;
import repository.dosen.dto.News;
import repository.dosen.models.MasterNews;
import repository.dosen.service.NewsService;

/**
 *
 * @author ulil
 */
@Service
@Transactional
public class NewsServiceImplement implements NewsService{
    
    @Autowired
    NewsDao newsDao;

    @Override
    public List<News> getNews() {
        List<News> listNews = new ArrayList<>();
        List<MasterNews> listMasterNews = newsDao.getNews();
        for (MasterNews masterNews : listMasterNews){
            News news = new News();
            news.setIdNews(masterNews.getIdNews());
            news.setTitle(masterNews.getTitle());
            news.setDescription(masterNews.getDescription());
            news.setUpdateDate(masterNews.getUpdateDate());
            listNews.add(news);
        }
        return listNews;
    }
    
    @Override
    public List<News> getNewsDosen() {
        List<News> listNews = new ArrayList<>();
        List<Object[]> listMasterNews = newsDao.getNewsDosen();
        for (Object[] master : listMasterNews){
            News news = new News();
            news.setIdNews(Integer.parseInt(master[0].toString()));
            news.setTitle(master[1].toString());
            news.setDescription(master[2].toString());
            String day = master[3].toString().substring(8,10);
            String month = master[3].toString().substring(5, 7);
            String year = master[3].toString().substring(0,4);
            String newDate = "";
            switch (month) {
                case "01" :  newDate = day + " Januari " + year;
                             break;
                case "02" :  newDate = day + " Februari " + year;
                             break;
                case "03" :  newDate = day + " Maret " + year;
                             break;
                case "04" :  newDate = day + " April " + year;
                             break;
                case "05" :  newDate = day + " Mei " + year;
                             break;
                case "06" :  newDate = day + " Juni " + year;
                             break;
                case "07" :  newDate = day + " Juli " + year;
                             break;
                case "08" :  newDate = day + " Agustus " + year;
                             break;
                case "09" :  newDate = day + " September " + year;
                             break;
                case "10" :  newDate = day + " Oktober " + year;
                             break;
                case "11" :  newDate = day + " November " + year;
                             break;
                case "12" :  newDate = day + " Desember " + year;
                             break;
            }
            news.setUpdateDate(newDate);
            listNews.add(news);
        }
        return listNews;
    }

    @Override
    public News getDataNews(int id) {
        News news = new News();
        MasterNews masterLecture = newsDao.getNews(id);
        news.setIdNews(masterLecture.getIdNews());
        news.setTitle(masterLecture.getTitle());
        news.setDescription(masterLecture.getDescription());
        news.setUpdateDate(masterLecture.getUpdateDate());
        return news;
    }

    @Override
    public void saveNews(News news) {
        MasterNews addnews = new MasterNews();
        addnews.setIdNews(news.getIdNews());
        addnews.setTitle(news.getTitle());
        addnews.setDescription(news.getDescription());
        addnews.setUpdateDate(news.getUpdateDate());
        newsDao.saveNews(addnews);
    }

    @Override
    public void deleteNews(int id) {
        MasterNews news = new MasterNews();
        news.setIdNews(id);
        newsDao.deleteNews(news);
    }

    @Override
    public void doUpdateNews(News news) {
        MasterNews addnews = new MasterNews();
        addnews.setIdNews(news.getIdNews());
        addnews.setTitle(news.getTitle());
        addnews.setDescription(news.getDescription());
        addnews.setUpdateDate(news.getUpdateDate());
        newsDao.doUpdateNews(addnews);
    }

    @Override
    public List<News> getNewsByName(String name) {
        List<News> listLecture = new ArrayList<>();
        List<MasterNews> listMasterNews = newsDao.getNewsByName(name);
        for (MasterNews masterLecture : listMasterNews){
            News news = new News();
            news.setIdNews(masterLecture.getIdNews());
            news.setTitle(masterLecture.getTitle());
            news.setDescription(masterLecture.getDescription());
            news.setUpdateDate(masterLecture.getUpdateDate());
            listLecture.add(news);
        }
        return listLecture;}
    
}
