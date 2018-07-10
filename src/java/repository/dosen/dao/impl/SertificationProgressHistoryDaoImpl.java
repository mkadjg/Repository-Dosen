/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.dao.impl;

import java.util.List;
import org.hibernate.Query;
import org.springframework.stereotype.Repository;
import repository.dosen.dao.SertificationProgressHistoryDao;
import repository.dosen.models.SertificationProgressHistory;

/**
 *
 * @author Jaret
 */
@Repository
public class SertificationProgressHistoryDaoImpl extends HibernateUtil implements SertificationProgressHistoryDao {

    @Override
    public List<SertificationProgressHistory> getSertificationProgressHistory() {
        String sql = "select model from SertificationProgressHistory model";
        Query query = createQuery(sql);
        return query.list();
    }

    @Override
    public List<SertificationProgressHistory> getSertificationProgressHistoryByFaculty(String idFaculty) {
        String sql = "select model from SertificationProgressHistory model where idLecturer in ("
                + "select idLecturer from MasterLecturer where idMajor in ("
                + "select idMajor from MasterMajor where idFaculty in ("
                + "select idFaculty from MasterFaculty where idFaculty =:idf)))";
        Query query = createQuery(sql).setParameter("idf", idFaculty);
        return query.list();
    }

    @Override
    public List<SertificationProgressHistory> getSertificationProgressHistoryByMajor(String idMajor) {
        String sql = "select model from SertificationProgressHistory model where idLecturer in ("
                + "select idLecturer from MasterLecturer where idMajor in ("
                + "select idMajor from MasterMajor where idMajor =:idm))";
        Query query = createQuery(sql).setParameter("idm", idMajor);
        return query.list();
    }

    @Override
    public void saveSertificationProgressHistory(SertificationProgressHistory sertificationProgressHistory) {
        getSession().saveOrUpdate(sertificationProgressHistory);
    }

    @Override
    public SertificationProgressHistory getDataSertificationProgressHistory(int idLecturer) {
        String sql = "select model from SertificationProgressHistory model where idLecturer=:ids";
        Query query = createQuery(sql).setParameter("ids", idLecturer);
        return (SertificationProgressHistory) query.uniqueResult();
    }

    @Override
    public SertificationProgressHistory getDataSertificationProgressHistoryById(int idProgressHistory) {
        String sql = "select model from SertificationProgressHistory model where idProgressHistory=:ids";
        Query query = createQuery(sql).setParameter("ids", idProgressHistory);
        return (SertificationProgressHistory) query.uniqueResult();
    }

    @Override
    public void deleteSertificationProgressHistory(SertificationProgressHistory sertificationProgressHistory) {
        getSession().delete(sertificationProgressHistory);
    }
    
}
