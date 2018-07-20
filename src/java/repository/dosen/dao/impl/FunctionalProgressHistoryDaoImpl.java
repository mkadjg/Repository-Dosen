/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.dao.impl;

import java.util.List;
import org.hibernate.Query;
import org.springframework.stereotype.Repository;
import repository.dosen.dao.FunctionalProgressHistoryDao;
import repository.dosen.models.FunctionalProgressHistory;

/**
 *
 * @author Jaret
 */
@Repository
public class FunctionalProgressHistoryDaoImpl extends HibernateUtil implements FunctionalProgressHistoryDao {

    @Override
    public List<FunctionalProgressHistory> getAssistantProgressHistory() {
        String sql = "select model from FunctionalProgressHistory model where idFunctional = 1";
        Query query = createQuery(sql);
        return query.list();
    }

    @Override
    public List<FunctionalProgressHistory> getAssistantProgressHistoryByFaculty(String idFaculty) {
        String sql = "select model from FunctionalProgressHistory model where idLecturer in ("
                + "select idLecturer from MasterLecturer where idMajor in ("
                + "select idMajor from MasterMajor where idFaculty in ("
                + "select idFaculty from MasterFaculty where idFaculty =:idf))) and idFunctional = 1";
        Query query = createQuery(sql).setParameter("idf", idFaculty);
        return query.list();
    }

    @Override
    public List<FunctionalProgressHistory> getAssistantProgressHistoryByMajor(String idMajor) {
        String sql = "select model from FunctionalProgressHistory model where idLecturer in ("
                + "select idLecturer from MasterLecturer where idMajor in ("
                + "select idMajor from MasterMajor where idMajor =:idm)) and idFunctional = 1";
        Query query = createQuery(sql).setParameter("idm", idMajor);
        return query.list();
    }

    @Override
    public List<FunctionalProgressHistory> getLectorsProgressHistory() {
        String sql = "select model from FunctionalProgressHistory model where idFunctional = 2";
        Query query = createQuery(sql);
        return query.list();
    }

    @Override
    public List<FunctionalProgressHistory> getLectorsProgressHistoryByFaculty(String idFaculty) {
        String sql = "select model from FunctionalProgressHistory model where idLecturer in ("
                + "select idLecturer from MasterLecturer where idMajor in ("
                + "select idMajor from MasterMajor where idFaculty in ("
                + "select idFaculty from MasterFaculty where idFaculty =:idf))) and idFunctional = 2";
        Query query = createQuery(sql).setParameter("idf", idFaculty);
        return query.list();
    }

    @Override
    public List<FunctionalProgressHistory> getLectorsProgressHistoryByMajor(String idMajor) {
        String sql = "select model from FunctionalProgressHistory model where idLecturer in ("
                + "select idLecturer from MasterLecturer where idMajor in ("
                + "select idMajor from MasterMajor where idMajor =:idm)) and idFunctional = 2";
        Query query = createQuery(sql).setParameter("idm", idMajor);
        return query.list();
    }

    @Override
    public List<FunctionalProgressHistory> getHeadlectorsProgressHistory() {
        String sql = "select model from FunctionalProgressHistory model where idFunctional = 3";
        Query query = createQuery(sql);
        return query.list();
    }

    @Override
    public List<FunctionalProgressHistory> getHeadlectorsProgressHistoryByFaculty(String idFaculty) {
        String sql = "select model from FunctionalProgressHistory model where idLecturer in ("
                + "select idLecturer from MasterLecturer where idMajor in ("
                + "select idMajor from MasterMajor where idFaculty in ("
                + "select idFaculty from MasterFaculty where idFaculty =:idf))) and idFunctional = 3";
        Query query = createQuery(sql).setParameter("idf", idFaculty);
        return query.list();
    }

    @Override
    public List<FunctionalProgressHistory> getHeadlectorsProgressHistoryByMajor(String idMajor) {
        String sql = "select model from FunctionalProgressHistory model where idLecturer in ("
                + "select idLecturer from MasterLecturer where idMajor in ("
                + "select idMajor from MasterMajor where idMajor =:idm)) and idFunctional = 3";
        Query query = createQuery(sql).setParameter("idm", idMajor);
        return query.list();
    }

    @Override
    public List<FunctionalProgressHistory> getProfessorProgressHistory() {
        String sql = "select model from FunctionalProgressHistory model where idFunctional = 4";
        Query query = createQuery(sql);
        return query.list();
    }

    @Override
    public List<FunctionalProgressHistory> getProfessorProgressHistoryByFaculty(String idFaculty) {
        String sql = "select model from FunctionalProgressHistory model where idLecturer in ("
                + "select idLecturer from MasterLecturer where idMajor in ("
                + "select idMajor from MasterMajor where idFaculty in ("
                + "select idFaculty from MasterFaculty where idFaculty =:idf))) and idFunctional = 4";
        Query query = createQuery(sql).setParameter("idf", idFaculty);
        return query.list();
    }

    @Override
    public List<FunctionalProgressHistory> getProfessorProgressHistoryByMajor(String idMajor) {
        String sql = "select model from FunctionalProgressHistory model where idFunctional = 4";
        Query query = createQuery(sql);
        return query.list();
    }

    @Override
    public void saveFunctionalProgressHistory(FunctionalProgressHistory functionalProgressHistory) {
        getSession().saveOrUpdate(functionalProgressHistory);
    }

    @Override
    public FunctionalProgressHistory getDataAssistantProgressHistory(int idLecturer) {
        String sql = "select model from FunctionalProgressHistory model where idFunctional = 1 and idLecturer=:ids";
        Query query = createQuery(sql).setParameter("ids", idLecturer);
        return (FunctionalProgressHistory) query.uniqueResult();
    }

    @Override
    public FunctionalProgressHistory getDataFunctionalProgressHistory(int idProgressHistory) {
        String sql = "select model from FunctionalProgressHistory model where idProgressHistory=:ids";
        Query query = createQuery(sql).setParameter("ids", idProgressHistory);
        return (FunctionalProgressHistory) query.uniqueResult();
    }

    @Override
    public FunctionalProgressHistory getDataLectorsProgressHistory(int idLecturer) {
        String sql = "select model from FunctionalProgressHistory model where idFunctional = 2 and idLecturer=:ids";
        Query query = createQuery(sql).setParameter("ids", idLecturer);
        return (FunctionalProgressHistory) query.uniqueResult();
    }

    @Override
    public FunctionalProgressHistory getDataHeadlectorsProgressHistory(int idLecturer) {
        String sql = "select model from FunctionalProgressHistory model where idFunctional = 3 and idLecturer=:ids";
        Query query = createQuery(sql).setParameter("ids", idLecturer);
        return (FunctionalProgressHistory) query.uniqueResult();
    }

    @Override
    public FunctionalProgressHistory getDataProfessorProgressHistory(int idLecturer) {
        String sql = "select model from FunctionalProgressHistory model where idFunctional = 4 and idLecturer=:ids";
        Query query = createQuery(sql).setParameter("ids", idLecturer);
        return (FunctionalProgressHistory) query.uniqueResult();
    }

    @Override
    public void deleteFunctionalProgressHistory(FunctionalProgressHistory functionalProgressHistory) {
        getSession().delete(functionalProgressHistory);
    }

    @Override
    public List<Object[]> getAssistantProgressHistory(String idFaculty, String idMajor) {
        String sql = "select * from FunctionalProgressHistory where idFunctional = 1 and state =1 ";
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

    @Override
    public List<Object[]> getLectorsProgressHistory(String idFaculty, String idMajor) {
        String sql = "select * from FunctionalProgressHistory where idFunctional = 2 and state =1 ";
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

    @Override
    public List<Object[]> getHeadlectorsProgressHistory(String idFaculty, String idMajor) {
        String sql = "select * from FunctionalProgressHistory where idFunctional = 3 and state =1 ";
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

    @Override
    public List<Object[]> getProfessorProgressHistory(String idFaculty, String idMajor) {
        String sql = "select * from FunctionalProgressHistory where idFunctional = 4 and state =1 ";
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
