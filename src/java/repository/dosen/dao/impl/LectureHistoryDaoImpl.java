/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.dao.impl;

import java.util.List;
import org.hibernate.Query;
import org.springframework.stereotype.Repository;
import repository.dosen.dao.LectureHistoryDao;
import repository.dosen.models.TranLectureHistory;

/**
 *
 * @author Jaret
 */
@Repository
public class LectureHistoryDaoImpl extends HibernateUtil implements LectureHistoryDao{

    @Override
    public void saveLectureHistory(TranLectureHistory tranLectureHistory) {
        getSession().saveOrUpdate(tranLectureHistory);
    }

    @Override
    public List<TranLectureHistory> getLectureHistory(int idLecturer) {
        String sql = "select model from TranLectureHistory model where idLecturer=:ids";
        Query query = createQuery(sql).setParameter("ids", idLecturer);
        return query.list();
    }

    @Override
    public void deleteLectureHistory(TranLectureHistory tranLectureHistory) {
        getSession().delete(tranLectureHistory);
    }

    @Override
    public List<Object[]> serachLectureHistory(String nameLecture) {
        String sql = "select * from TranLectureHistory where idLecture in ("
                + "select idLecture from MasterLecture where nameLecture like '%" + nameLecture + "%')";
        Query query = createNativeQuery(sql);
        return query.list();
    }

    @Override
    public TranLectureHistory getMaxLectureHistory(int idLecturer) {
        String sql = "select max(model) from TranLectureHistory model where idLecturer=:ids order by year desc";
        Query query = createQuery(sql).setParameter("ids", idLecturer);
        return (TranLectureHistory) query.uniqueResult();
    }

    @Override
    public TranLectureHistory getMinLectureHistory(int idLecturer) {
        String sql = "select min(model) from TranLectureHistory model where idLecturer=:ids order by year desc";
        Query query = createQuery(sql).setParameter("ids", idLecturer);
        return (TranLectureHistory) query.uniqueResult();
    }
    
}
