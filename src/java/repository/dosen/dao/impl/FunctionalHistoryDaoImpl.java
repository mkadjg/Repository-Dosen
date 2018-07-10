/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.dao.impl;

import java.util.List;
import org.hibernate.Query;
import org.springframework.stereotype.Repository;
import repository.dosen.dao.FunctionalHistoryDao;
import repository.dosen.models.TranFunctionalHistory;

/**
 *
 * @author Jaret
 */
@Repository
public class FunctionalHistoryDaoImpl extends HibernateUtil implements FunctionalHistoryDao{

    @Override
    public void saveFunctionalHistory(TranFunctionalHistory tranFunctionalHistory) {
        getSession().saveOrUpdate(tranFunctionalHistory);
    }

    @Override
    public List<TranFunctionalHistory> getFunctionalHistory(int idLecturer) {
        String sql = "select model from TranFunctionalHistory model where idLecturer=:ids";
        Query query = createQuery(sql).setParameter("ids", idLecturer);
        return query.list();
    }

    @Override
    public void deleteFunctionalHistory(TranFunctionalHistory tranFunctionalHistory) {
        getSession().delete(tranFunctionalHistory);
    }

    @Override
    public List<Object[]> serachFunctionalHistory(String nameFunctional) {
        String sql = "select * from TranFunctionalHistory where idFunctional in ("
                + "select idFunctional from MasterFunctional where nameFunctional like '%" + nameFunctional + "%')";
        Query query = createNativeQuery(sql);
        return query.list();
    }

    @Override
    public void deleteAllFuntionalHistory(int idLecturer) {
        String sql = "delete from TranFunctionalHistory where idLecturer=:ids";
        Query query = createQuery(sql).setParameter("ids", idLecturer);
        query.executeUpdate();
    }
    
}
