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
    
}
