/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.dao.impl;

import java.util.List;
import org.hibernate.Query;
import repository.dosen.dao.TranProgressFunctionalDao;
import repository.dosen.models.TranProgressFunctional;

/**
 *
 * @author Jaret
 */
public class TranProgressFunctionalDaoImpl extends HibernateUtil implements TranProgressFunctionalDao{

    @Override
    public List<TranProgressFunctional> getTranProgressAssistant(int idLecturer) {
        String sql = "select model from TranProgressFunctional model where idProgressHistory in ("
                + "select idProgressHistory from FunctionalProgressHistory where idLecturer=:ids and idFunctional = 1)";
        Query query = createQuery(sql).setParameter("ids", idLecturer);
        return query.list();
    }
    
}
