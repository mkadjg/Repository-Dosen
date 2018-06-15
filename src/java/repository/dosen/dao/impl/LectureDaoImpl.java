/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.dao.impl;

import java.util.List;
import org.hibernate.Query;
import org.springframework.stereotype.Repository;
import repository.dosen.dao.LectureDao;
import repository.dosen.models.MasterLecture;

/**
 *
 * @author sandi
 */
@Repository
public class LectureDaoImpl extends HibernateUtil implements LectureDao{

    @Override
    public List<MasterLecture> getLecture() {
        String sql = "select model from MasterLecture model";
        Query query = createQuery(sql);
        List<MasterLecture> listResult = query.list();
        return listResult;
    }

    @Override
    public MasterLecture getDataLecture(String idLecture) {
        String sql = "select model from MasterLecture model where idLecture=:ids";
        Query query = createQuery(sql).setParameter("ids", idLecture);
        return (MasterLecture) query.uniqueResult();
    }

    @Override
    public void saveLecture(MasterLecture masterLecture) {
        getSession().saveOrUpdate(masterLecture);
    }

    @Override
    public void deleteLecture(MasterLecture masterLecture) {
        getSession().delete(masterLecture);
    }

    @Override
    public List<Object[]> searchLecture(String nameLecture) {
        nameLecture = nameLecture.toLowerCase();
        String sql = "select * from MasterLecture where nameLecture like '%" + nameLecture + "%'";
        Query query = createNativeQuery(sql);
        return  query.list();
    }

    @Override
    public MasterLecture getDataLectureByName(String nameLecture) {
        String sql = "select model from MasterLecture model where nameLecture=:name";
        Query query = createQuery(sql).setParameter("name", nameLecture);
        return (MasterLecture) query.uniqueResult();
    }
}
