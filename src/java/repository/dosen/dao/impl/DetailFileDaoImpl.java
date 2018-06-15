/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.dao.impl;

import java.util.List;
import org.hibernate.Query;
import org.springframework.stereotype.Repository;
import repository.dosen.dao.DetailFileDao;
import repository.dosen.models.DetailFile;

/**
 *
 * @author Jaret
 */
@Repository
public class DetailFileDaoImpl extends HibernateUtil implements DetailFileDao{

    @Override
    public List<DetailFile> getDetailFileRecruitment() {
        String sql = "select model from DetailFile model where idEvent=1";
        Query query = createQuery(sql);
        return query.list();
    }

    @Override
    public List<DetailFile> getDetailFileNidn() {
        String sql = "select model from DetailFile model where idEvent=6";
        Query query = createQuery(sql);
        return query.list();
    }

    @Override
    public List<DetailFile> getDetailFileAssistant() {
        String sql = "select model from DetailFile model where idEvent=7";
        Query query = createQuery(sql);
        return query.list();
    }

    @Override
    public List<DetailFile> getDetailFileLectors() {
        String sql = "select model from DetailFile model where idEvent=8";
        Query query = createQuery(sql);
        return query.list();
    }

    @Override
    public List<DetailFile> getDetailFileHeadlectors() {
        String sql = "select model from DetailFile model where idEvent=9";
        Query query = createQuery(sql);
        return query.list();
    }

    @Override
    public List<DetailFile> getDetailFileProfessor() {
        String sql = "select model from DetailFile model where idEvent=10";
        Query query = createQuery(sql);
        return query.list();
    }

    @Override
    public List<DetailFile> getDetailFileSertification() {
        String sql = "select model from DetailFile model";
        Query query = createQuery(sql);
        return query.list();
    }

    @Override
    public void saveDetailFile(DetailFile detailFile) {
        getSession().saveOrUpdate(detailFile);
    }

    @Override
    public void deleteDetailFile(DetailFile detailFile) {
        getSession().delete(detailFile);
    }

    @Override
    public List<Object[]> searchDetailFile(String nameDokumen, int idEvent) {
        String sql = "select * from DetailFile where nameDokumen like '%" + nameDokumen + "%'  and idEvent=" + idEvent;
        Query query = createNativeQuery(sql);
        return query.list();
    }

    @Override
    public List<Object[]> searchDetailFile(String nameDokumen) {
        String sql = "select * from DetailFile where nameDokumen like '%" + nameDokumen + "%'";
        Query query = createNativeQuery(sql);
        return query.list();
    }

    @Override
    public DetailFile getDataDetailFile(int idDetail) {
        String sql = "select model from DetailFile model where idDetail=:ids";
        Query query = createQuery(sql).setParameter("ids", idDetail);
        return (DetailFile) query.uniqueResult();
    }

    @Override
    public List<DetailFile> getDetailFileHistoryLecture() {
        String sql = "select model from DetailFile model where idEvent=2";
        Query query = createQuery(sql);
        return query.list();
    }

    @Override
    public List<DetailFile> getDetailFileHistoryStudy() {
        String sql = "select model from DetailFile model where idEvent=3";
        Query query = createQuery(sql);
        return query.list();
    }

    @Override
    public List<DetailFile> getDetailFileHistoryFunctional() {
        String sql = "select model from DetailFile model where idEvent=4";
        Query query = createQuery(sql);
        return query.list();
    }

    @Override
    public List<DetailFile> getDetailFileHistorySertification() {
        String sql = "select model from DetailFile model where idEvent=5";
        Query query = createQuery(sql);
        return query.list();
    }
    
}
