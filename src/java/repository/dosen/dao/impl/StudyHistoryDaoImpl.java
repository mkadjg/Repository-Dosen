/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.dao.impl;

import java.util.List;
import org.hibernate.Query;
import org.springframework.stereotype.Repository;
import repository.dosen.dao.StudyHistoryDao;
import repository.dosen.models.TranStudyHistory;

/**
 *
 * @author Jaret
 */
@Repository
public class StudyHistoryDaoImpl extends HibernateUtil implements StudyHistoryDao{

    @Override
    public void saveStudyHistory(TranStudyHistory tranStudyHistory) {
        getSession().saveOrUpdate(tranStudyHistory);
    }

    @Override
    public List<TranStudyHistory> getStudyHistory(int idLecturer) {
        String sql = "select model from TranStudyHistory model where idLecturer=:ids";
        Query query = createQuery(sql).setParameter("ids", idLecturer);
        return query.list();
    }

    @Override
    public void deleteStudyHistory(TranStudyHistory tranStudyHistory) {
        getSession().delete(tranStudyHistory);
    }

    @Override
    public List<Object[]> serachStudyHistory(String nameStudy) {
        String sql = "select * from TranStudyHistory where idStudy in ("
                + "select idStudy from MasterStudy where studyDescription like '%" + nameStudy + "%')";
        Query query = createNativeQuery(sql);
        return query.list();
    }

    @Override
    public void deleteAllStudyHistory(int idLecturer) {
        String sql = "delete from TranStudyHistory where idLecturer=:ids";
        Query query = createQuery(sql).setParameter("ids", idLecturer);
        query.executeUpdate();
    }
    
}
