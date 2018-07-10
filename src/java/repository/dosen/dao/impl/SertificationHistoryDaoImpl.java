/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.dao.impl;

import java.util.List;
import org.hibernate.Query;
import org.springframework.stereotype.Repository;
import repository.dosen.dao.SertificationHistoryDao;
import repository.dosen.models.TranSertificationHistory;

/**
 *
 * @author Jaret
 */
@Repository
public class SertificationHistoryDaoImpl extends HibernateUtil implements SertificationHistoryDao{

    @Override
    public void saveSertificationHistory(TranSertificationHistory tranSertificationHistory) {
        getSession().saveOrUpdate(tranSertificationHistory);
    }

    @Override
    public List<TranSertificationHistory> getSertificationHistory(int idLecturer) {
        String sql = "select model from TranSertificationHistory model where idLecturer=:ids";
        Query query = createQuery(sql).setParameter("ids", idLecturer);
        return query.list();
    }

    @Override
    public void deleteSertificationHistory(TranSertificationHistory tranSertificationHistory) {
        getSession().delete(tranSertificationHistory);
    }

    @Override
    public List<Object[]> serachSertificationHistory(String nameSertification) {
        String sql = "select * from TranSertificationHistory where sertificationPart like '%" + nameSertification + "%'";
        Query query = createNativeQuery(sql);
        return query.list();
    }

    @Override
    public void deleteAllSertificationHistory(int idLecturer) {
        String sql = "delete from TranSertificationHistory where idLecturer=:ids";
        Query query = createQuery(sql).setParameter("ids", idLecturer);
        query.executeUpdate();
    }
    
}
