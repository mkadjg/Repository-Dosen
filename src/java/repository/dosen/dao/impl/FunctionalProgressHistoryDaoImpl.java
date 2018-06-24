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
        String sql = "select model from FunctionalProgressHistory model where idEvent = 1";
        Query query = createQuery(sql);
        return query.list();
    }

    @Override
    public List<FunctionalProgressHistory> getAssistantProgressHistoryByFaculty(String idFaculty) {
        String sql = "select model from FunctionalProgressHistory model where idLecturer in ("
                + "select idLecturer from MasterLecturer where idMajor in ("
                + "select idMajor from MasterMajor where idFaculty in ("
                + "select idFaculty from MasterFaculty where idFaculty =:idf))) and idEvent = 1";
        Query query = createQuery(sql).setParameter("idf", idFaculty);
        return query.list();
    }

    @Override
    public List<FunctionalProgressHistory> getAssistantProgressHistoryByMajor(String idMajor) {
        String sql = "select model from FunctionalProgressHistory model where idLecturer in ("
                + "select idLecturer from MasterLecturer where idMajor in ("
                + "select idMajor from MasterMajor where idMajor =:idm)) and idEvent = 1";
        Query query = createQuery(sql).setParameter("idm", idMajor);
        return query.list();
    }
    
}
