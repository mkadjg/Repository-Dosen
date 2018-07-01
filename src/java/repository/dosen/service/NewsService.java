/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.service;

import java.util.List;
import repository.dosen.dto.News;

/**
 *
 * @author ulil
 */
public interface NewsService {
    public List<News> getNews();
    public List<News> getNewsDosen();
    public List<News> getNewsByName(String name);
    public News getDataNews(int id);
    public void saveNews(News news);
    public void doUpdateNews(News news);
    public void deleteNews(int id);
}
