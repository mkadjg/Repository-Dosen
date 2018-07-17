 /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.dao.impl;

import java.util.List;
import org.hibernate.Query;
import org.springframework.stereotype.Repository;
import repository.dosen.dao.FileDao;
import repository.dosen.models.TranFile;

/**
 *
 * @author Jaret
 */
@Repository
public class FileDaoImpl extends HibernateUtil implements FileDao{

    @Override
    public void saveFile(TranFile tranFile) {
        getSession().saveOrUpdate(tranFile);
    }
    
    @Override
    public TranFile getLastDataFile() {
        String sql = "select max(model) from TranFile model";
        Query query = createQuery(sql);
        return (TranFile) query.uniqueResult();
    }

    @Override
    public List<TranFile> getFile(int idLecturer) {
        String sql = "select model from TranFile model where idLecturer=:ids";
        Query query = createQuery(sql).setParameter("ids", idLecturer);
        return query.list();
    }

    @Override
    public void deleteFile(TranFile tranFile) {
        getSession().delete(tranFile);
    }

    @Override
    public TranFile getDataFile(int idTranFile) {
        String sql = "select model from TranFile model where idTranFile=:ids";
        Query query = createQuery(sql).setParameter("ids", idTranFile);
        return (TranFile) query.uniqueResult();
    }

    @Override
    public List<Object[]> searchFile(String nameDetail) {
        nameDetail = nameDetail.toLowerCase();
        String sql = "select * from TranFile where idDetail in ("
                + "select idDetail from DetailFile where nameDokumen like '%" + nameDetail + "%')";
        Query query = createNativeQuery(sql);
        return query.list();
    }

    @Override
    public List<Object[]> getFileRecruitment(int idLecturer) {
        String sql = "select * from TranFile where idLecturer = " + idLecturer + " and idDetail in ("
                + "select idDetail from DetailFile where idEvent = 1) order by idDetail";
        Query query = createNativeQuery(sql);
        return query.list();
    }

    @Override
    public List<Object[]> getFileNidn(int idLecturer) {
        String sql = "select * from TranFile where idLecturer = " + idLecturer + " and idDetail in ("
                + "select idDetail from DetailFile where idEvent = 6) order by idDetail";
        Query query = createNativeQuery(sql);
        return query.list();
    }

    @Override
    public List<Object[]> getFileAssistant(int idLecturer) {
        String sql = "select * from TranFile where idLecturer = " + idLecturer + " and idDetail in ("
                + "select idDetail from DetailFile where idEvent = 7) order by idDetail";
        Query query = createNativeQuery(sql);
        return query.list();
    }

    @Override
    public List<Object[]> getFileLectors(int idLecturer) {
        String sql = "select * from TranFile where idLecturer = " + idLecturer + " and idDetail in ("
                + "select idDetail from DetailFile where idEvent = 8) order by idDetail";
        Query query = createNativeQuery(sql);
        return query.list();
    }

    @Override
    public List<Object[]> getFileHeadlectors(int idLecturer) {
        String sql = "select * from TranFile where idLecturer = " + idLecturer + " and idDetail in ("
                + "select idDetail from DetailFile where idEvent = 9) order by idDetail";
        Query query = createNativeQuery(sql);
        return query.list();
    }

    @Override
    public List<Object[]> getFileProfessor(int idLecturer) {
        String sql = "select * from TranFile where idLecturer = " + idLecturer + " and idDetail in ("
                + "select idDetail from DetailFile where idEvent = 10) order by idDetail";
        Query query = createNativeQuery(sql);
        return query.list();
    }

    @Override
    public void deleteAllFile(int idLecturer) {
        String sql = "delete from TranFile where idLecturer=:ids";
        Query query = createQuery(sql).setParameter("ids", idLecturer);
        query.executeUpdate();
    }

    @Override
    public TranFile getPathPhoto(int idLecturer) {
        String sql = "select model from TranFile model where idLecturer=:ids and idDetail=2";
        Query query = createQuery(sql).setParameter("ids", idLecturer);
        return (TranFile) query.uniqueResult();
    }
}
