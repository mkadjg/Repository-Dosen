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
}
