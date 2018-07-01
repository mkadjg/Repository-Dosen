/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.dao.impl;

import java.util.List;
import org.hibernate.Query;
import repository.dosen.dao.TranProgressLecturerDao;
import repository.dosen.models.TranProgressLecturer;

/**
 *
 * @author Jaret
 */
public class TranProgressLecturerDaoImpl extends HibernateUtil implements TranProgressLecturerDao{

    @Override
    public List<TranProgressLecturer> getTranProgressNidn(int idLecturer) {
        String sql = "select model from TranProgressLecturer model where idProgressHistory in ("
                + "select idProgressHistory from LecturerProgressHistory where idLecturer=:ids)";
        Query query = createQuery(sql).setParameter("ids", idLecturer);
        return query.list();
    }

    @Override
    public void saveTranProgressLecturer(TranProgressLecturer tranProgressLecturer) {
        getSession().saveOrUpdate(tranProgressLecturer);
    }
    
}
