/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.dao.impl;

import java.util.List;
import org.hibernate.Query;
import repository.dosen.dao.TranProgressSertificationDao;
import repository.dosen.models.TranProgressSertification;

/**
 *
 * @author Jaret
 */
public class TranProgressSertificationDaoImpl extends HibernateUtil implements TranProgressSertificationDao{

    @Override
    public List<TranProgressSertification> getTranProgressSertification(int idLecturer) {
        String sql = "select model from TranProgressSertification model where idProgressHistory in ("
                + "select idProgressHistory from SertificationProgressHistory where idLecturer=:ids)";
        Query query = createQuery(sql).setParameter("ids", idLecturer);
        return query.list();
    }

    @Override
    public void saveTranProgressSertification(TranProgressSertification tranProgressSertification) {
        getSession().saveOrUpdate(tranProgressSertification);
    }

    @Override
    public void deleteTranProgressSertification(int idProgressHistory) {
        String sql = "delete from TranProgressSertification where idProgressHistory=:ids";
        Query query = createQuery(sql).setParameter("ids", idProgressHistory);
        query.executeUpdate();
    }

    @Override
    public void deleteTranProgressSertificationById(int idDetail) {
        String sql = "delete from TranProgressSertification where idDetail=:ids";
        Query query = createQuery(sql).setParameter("ids", idDetail);
        query.executeUpdate();
    }
    
}
