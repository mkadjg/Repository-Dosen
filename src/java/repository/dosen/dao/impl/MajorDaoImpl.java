/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.dao.impl;

import java.util.List;
import org.hibernate.Query;
import org.springframework.stereotype.Repository;
import repository.dosen.dao.MajorDao;
import repository.dosen.models.MasterMajor;

/**
 *
 * @author sandi
 */
@Repository
public class MajorDaoImpl extends HibernateUtil implements MajorDao {

    @Override
    public List<MasterMajor> getMajor() {
        String sql = "select model from MasterMajor model";
        Query query = createQuery(sql);
        List<MasterMajor> listResult = query.list();
        return listResult;
    }

    @Override
    public MasterMajor getDataMajor(String id) {
        String sql = "select model from MasterMajor model where idMajor=:ids";
        Query query = createQuery(sql).setParameter("ids", id);
        return (MasterMajor) query.uniqueResult();
    }

    @Override
    public void saveMajor(MasterMajor masterMajor) {
        getSession().saveOrUpdate(masterMajor);
    }

    @Override
    public void deleteMajor(MasterMajor masterMajor) {
        getSession().delete(masterMajor);
    }

    @Override
    public List<MasterMajor> getDataMajorByFaculty(String idFaculty) {
        String sql = "select model from MasterMajor model where idFaculty=:idf";
        Query query = createQuery(sql).setParameter("idf", idFaculty);
        return query.list();
    }

    @Override
    public List<Object[]> searchMajor(String nameMajor) {
        nameMajor = nameMajor.toLowerCase();
        String sql = "select * from MasterMajor where nameMajor like '%" + nameMajor + "%'";
        Query query = createNativeQuery(sql);
        return query.list();
    }

    @Override
    public MasterMajor getDataFacultyByMajor(String idMajor) {
        String sql = "select model from MasterMajor model where idMajor=:idm";
        Query query = createQuery(sql).setParameter("idm", idMajor);
        return (MasterMajor) query.uniqueResult();
    }
    
}
