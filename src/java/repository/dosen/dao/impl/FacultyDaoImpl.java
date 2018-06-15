/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.dao.impl;

import java.util.List;
import org.hibernate.Query;
import org.springframework.stereotype.Repository;
import repository.dosen.dao.FacultyDao;
import repository.dosen.models.MasterFaculty;

/**
 *
 * @author sandi
 */
@Repository
public class FacultyDaoImpl extends HibernateUtil implements FacultyDao{

    @Override
    public List<MasterFaculty> getFaculty() {
        String sql = "select model from MasterFaculty model";
        Query query = createQuery(sql);
        List<MasterFaculty> listResult = query.list();
        return listResult;
    }

    @Override
    public MasterFaculty getDataFaculty(String id) {
        String sql = "select model from MasterFaculty model where idFaculty=:ids";
        Query query = createQuery(sql).setParameter("ids", id);
        return (MasterFaculty) query.uniqueResult();
    }

    @Override
    public void saveFaculty(MasterFaculty masterFaculty) {
        getSession().saveOrUpdate(masterFaculty);
    }

    @Override
    public void deleteFaculty(MasterFaculty masterFaculty) {
        getSession().delete(masterFaculty);
    }

    @Override
    public List<Object[]> searchFaculty(String nameFaculty) {
        nameFaculty = nameFaculty.toLowerCase();
        String sql = "select * from MasterFaculty where nameFaculty like '%" + nameFaculty + "%'";
        Query query = createNativeQuery(sql);
        return  query.list();
    }
}
