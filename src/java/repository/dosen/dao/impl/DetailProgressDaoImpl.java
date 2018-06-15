/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.dao.impl;

import java.util.List;
import org.hibernate.Query;
import repository.dosen.dao.DetailProgressDao;
import repository.dosen.models.DetailProgress;

/**
 *
 * @author Jaret
 */
public class DetailProgressDaoImpl extends HibernateUtil implements DetailProgressDao{
    
    @Override
    public List<DetailProgress> getDetailProgressNidn() {
        String sql = "select model from DetailProgress model where idEvent=1 order by numberRequirement";
        Query query = createQuery(sql);
        return query.list();
    }

    @Override
    public List<DetailProgress> getDetailProgressAssistant() {
        String sql = "select model from DetailProgress model where idEvent=2 order by numberRequirement";
        Query query = createQuery(sql);
        return query.list();
    }

    @Override
    public List<DetailProgress> getDetailProgressLectors() {
       String sql = "select model from DetailProgress model where idEvent=3 order by numberRequirement";
       Query query = createQuery(sql);
       return query.list();
    }

    @Override
    public List<DetailProgress> getDetailProgressHeadlectors() {
        String sql = "select model from DetailProgress model where idEvent=4 order by numberRequirement";
        Query query = createQuery(sql);
        return query.list();
    }

    @Override
    public List<DetailProgress> getDetailProgressProfessor() {
        String sql = "select model from DetailProgress model where idEvent=5 order by numberRequirement";
        Query query = createQuery(sql);
        return query.list();
    }

    @Override
    public List<DetailProgress> getDetailProgressSertification() {
        String sql = "select model from DetailProgress model where idEvent=6 order by numberRequirement";
        Query query = createQuery(sql);
        return query.list();
    }

    @Override
    public void saveDetailProgress(DetailProgress detailProgress) {
        getSession().saveOrUpdate(detailProgress);
    }

    @Override
    public void deleteDetailProgress(DetailProgress detailProgress) {
        getSession().delete(detailProgress);
    }

    @Override
    public List<Object[]> searchDetailProgress(String description, int idEvent) {
        description = description.toLowerCase();
        String sql = "select * from DetailProgress where description like '%" + description + "%' and idEvent=" + idEvent + " order by numberRequirement" ;
        Query query = createNativeQuery(sql);
        return query.list();
    }

    
}
