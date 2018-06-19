/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.dao.impl;

import java.util.List;
import org.hibernate.Query;
import org.springframework.stereotype.Repository;
import repository.dosen.dao.StudyDao;
import repository.dosen.models.MasterStudy;

/**
 *
 * @author sandi
 */
@Repository
public class StudyDaoImpl extends HibernateUtil implements StudyDao{

    @Override
    public MasterStudy getDataStudy(int id) {
        String sql = "select model from MasterStudy model where idStudy=:ids";
        Query query = createQuery(sql).setParameter("ids", id);
        return (MasterStudy) query.uniqueResult();
    }

    @Override
    public List<MasterStudy> getStudy() {
        String sql = "select model from MasterStudy model";
        Query query = createQuery(sql);
        return query.list();
    }
    
}
