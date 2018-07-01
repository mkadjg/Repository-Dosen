/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.dao;

import java.util.List;
import repository.dosen.models.MasterNews;

/**
 *
 * @author ulil
 */
public interface NewsDao {
    public List<MasterNews> getNews();
    public List<Object[]> getNewsDosen();
    public MasterNews getNews(int id);
    public List<MasterNews> getNewsByName(String name);
    public void saveNews(MasterNews masterNews);
    public void doUpdateNews(MasterNews masterNews);
    public void deleteNews(MasterNews masterNews);
}
