/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.dao.impl;

import java.util.List;
import org.hibernate.Query;
import org.springframework.stereotype.Repository;
import repository.dosen.dao.GenderDao;
import repository.dosen.models.MasterGender;

/**
 *
 * @author sandi
 */
@Repository
public class GenderDaoImpl extends HibernateUtil implements GenderDao{

    @Override
    public MasterGender getDataGender(int id) {
        String sql = "select model from MasterGender model where idGender=:ids";
        Query query = createQuery(sql).setParameter("ids", id);
        return (MasterGender) query.uniqueResult();
    }

    @Override
    public List<MasterGender> getGender() {
        String sql = "select model from MasterGender model";
        Query query = createQuery(sql);
        return query.list();
    }
    
}
