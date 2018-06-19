/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.dao.impl;

import java.util.List;
import org.hibernate.Query;
import repository.dosen.dao.FunctionalDao;
import repository.dosen.models.MasterFunctional;

/**
 *
 * @author Jaret
 */
public class FunctionalDaoImpl extends HibernateUtil implements FunctionalDao{

    @Override
    public List<MasterFunctional> getFunctional() {
        String sql = "select model from MasterFunctional model";
        Query query = createQuery(sql);
        return query.list();
    }

    @Override
    public MasterFunctional getDataFunctional(int id) {
        String sql = "select model from MasterFunctional model where id=:ids";
        Query query = createQuery(sql).setParameter("ids", id);
        return (MasterFunctional) query.uniqueResult();
    }
    
}
