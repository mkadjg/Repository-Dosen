/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.dao.impl;

import java.util.List;
import org.hibernate.Query;
import org.springframework.stereotype.Repository;
import repository.dosen.dao.NewsDao;
import repository.dosen.models.MasterNews;

/**
 *
 * @author ulil
 */
@Repository
public class NewsDaoImpl extends HibernateUtil implements NewsDao{

    @Override
    public List<MasterNews> getNews() {
        String sql = "select model from MasterNews model order by updateDate desc";
        Query query = createQuery(sql);
        List<MasterNews> listResult = query.list();
        return listResult;
    }

    @Override
    public MasterNews getNews(int id) {
        String sql = "select model from MasterNews model where idNews=:ids";
        Query query = createQuery(sql).setParameter("ids", id);
        return (MasterNews) query.uniqueResult();
    }

    @Override
    public void saveNews(MasterNews masterNews) {
        getSession().save(masterNews);
    }

    @Override
    public void deleteNews(MasterNews masterNews) {
        getSession().delete(masterNews);
    }

    @Override
    public void doUpdateNews(MasterNews masterNews) {
        getSession().saveOrUpdate(masterNews);}

    @Override
    public List<MasterNews> getNewsByName(String name) {
        String sql = "select model from MasterNews model where title like :nm";
        Query query = createQuery(sql).setParameter("nm", '%'+name+'%');
        List<MasterNews> listResult = query.list();
        return listResult;    
    }

    @Override
    public List<Object[]> getNewsDosen() {
        String sql = "SELECT * FROM MasterNews WHERE updateDate BETWEEN DATE_ADD(DATE(NOW()), INTERVAL-7 DAY) AND DATE(NOW()) ORDER BY updateDate DESC";
        Query query = createNativeQuery(sql);
        return query.list();
    }
}
