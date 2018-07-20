/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.dao.impl;

import java.util.List;
import org.hibernate.Query;
import org.springframework.stereotype.Repository;
import repository.dosen.dao.LecturerProgressHistoryDao;
import repository.dosen.models.LecturerProgressHistory;

/**
 *
 * @author Jaret
 */
@Repository
public class LecturerProgressHistoryDaoImpl extends HibernateUtil implements LecturerProgressHistoryDao {

    @Override
    public List<LecturerProgressHistory> getLecturerProgressHistory() {
        String sql = "select model from LecturerProgressHistory model";
        Query query = createQuery(sql);
        return query.list();
    }

    @Override
    public List<LecturerProgressHistory> getLecturerProgressHistoryByFaculty(String idFaculty) {
        String sql = "select model from LecturerProgressHistory model where idLecturer in ("
                + "select idLecturer from MasterLecturer where idMajor in ("
                + "select idMajor from MasterMajor where idFaculty in ("
                + "select idFaculty from MasterFaculty where idFaculty =:idf)))";
        Query query = createQuery(sql).setParameter("idf", idFaculty);
        return query.list();
    }

    @Override
    public List<LecturerProgressHistory> getLecturerProgressHistoryByMajor(String idMajor) {
        String sql = "select model from LecturerProgressHistory model where idLecturer in ("
                + "select idLecturer from MasterLecturer where idMajor in ("
                + "select idMajor from MasterMajor where idMajor =:idm))";
        Query query = createQuery(sql).setParameter("idm", idMajor);
        return query.list();
    }

    @Override
    public void saveLecturerProgressHistory(LecturerProgressHistory lecturerProgressHistory) {
        getSession().saveOrUpdate(lecturerProgressHistory);
    }

    @Override
    public LecturerProgressHistory getDataLecturerProgressHistory(int idLecturer) {
        String sql = "select model from LecturerProgressHistory model where idLecturer=:ids";
        Query query = createQuery(sql).setParameter("ids", idLecturer);
        return (LecturerProgressHistory) query.uniqueResult();
    }

    @Override
    public LecturerProgressHistory getDataLecturerProgressHistoryById(int idProgressHistory) {
        String sql = "select model from LecturerProgressHistory model where idProgressHistory=:ids";
        Query query = createQuery(sql).setParameter("ids", idProgressHistory);
        return (LecturerProgressHistory) query.uniqueResult();
    }

    @Override
    public void deleteLecturerProgressHistory(LecturerProgressHistory lecturerProgressHistory) {
        getSession().delete(lecturerProgressHistory);
    }

    @Override
    public List<Object[]> getLecturerProgressHistory(String idFaculty, String idMajor) {
        String sql = "select * from LecturerProgressHistory where state = 1 ";
        if (!(idFaculty.equals("0"))) {
            if (idMajor.equals("0")){
                sql += "and idLecturer in ("
                + "select idLecturer from MasterLecturer where idMajor in ("
                + "select idMajor from MasterMajor where idFaculty in ("
                + "select idFaculty from MasterFaculty where idFaculty ='"+ idFaculty +"')))";
            } else {
                sql += "and idLecturer in ("
                + "select idLecturer from MasterLecturer where idMajor in ("
                + "select idMajor from MasterMajor where idMajor ='" + idMajor + "'))";
            }
        }
        Query query = createNativeQuery(sql);
        return query.list();
    }
    
}
