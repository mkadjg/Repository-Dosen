/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.dao.impl;

import java.util.List;
import org.hibernate.Query;
import org.springframework.stereotype.Repository;
import repository.dosen.dao.LecturerDao;
import repository.dosen.models.MasterLecturer;

/**
 *
 * @author Jaret
 */
@Repository
public class LecturerDaoImpl extends HibernateUtil implements LecturerDao{

    @Override
    public MasterLecturer getDataLecturerForLogin(String username, String password) {
        String sql = "select model from MasterLecturer model where username=:username and password=:password";
        Query query = createQuery(sql).setParameter("username", username).setParameter("password", password);
        return (MasterLecturer) query.uniqueResult();
    }

    @Override
    public List<MasterLecturer> getLecturer() {
        String sql = "select model from MasterLecturer model";
        Query query = createQuery(sql);
        return query.list();
    }

    @Override
    public List<MasterLecturer> getLecturerByMajor(String idMajor) {
        String sql = "select model from MasterLecturer model where idMajor=:idm";
        Query query = createQuery(sql).setParameter("idm", idMajor);
        return query.list();
    }

    @Override
    public List<Object[]> getLecturerByNameLecturer(String nameLecturer) {
        nameLecturer = nameLecturer.toLowerCase();
        String sql = "select * from MasterLecturer where nameLecturer like '%" + nameLecturer + "%'";
        Query query = createNativeQuery(sql);
        return query.list();
    }

    @Override
    public List<Object[]> getLecturerByMajor(String nameLecturer, String idMajor) {
        nameLecturer = nameLecturer.toLowerCase();
        String sql = "select * from MasterLecturer where nameLecturer like '%" + nameLecturer + "%' and idMajor= '" + idMajor + "'";
        Query query = createNativeQuery(sql);
        return query.list();
    }

    @Override
    public void saveLecturer(MasterLecturer masterLecturer) {
        getSession().saveOrUpdate(masterLecturer);
    }

    @Override
    public List<Object[]> getLecturerByFaculty(String idFaculty) {
        String sql = "select * from MasterLecturer where idMajor in ("
                + "select idMajor from MasterMajor where idFaculty='" + idFaculty + "')";
        Query query = createNativeQuery(sql);
        return query.list();
    }

    @Override
    public List<Object[]> getLecturerByFaculty(String nameLecturer, String idFaculty) {
        String sql = "select * from MasterLecturer where nameLecturer like '%" + nameLecturer + "%' and idMajor in ("
                + "select idMajor from MasterMajor where idFaculty='" + idFaculty + "')";
        Query query = createNativeQuery(sql);
        return query.list();
    }

    @Override
    public MasterLecturer getDataLecturer(int idLecturer) {
        String sql = "select model from MasterLecturer model where idLecturer=:ids";
        Query query = createQuery(sql).setParameter("ids", idLecturer);
        return (MasterLecturer) query.uniqueResult();
    }

    @Override
    public MasterLecturer getDataLecturerByUsername(String username) {
        String sql = "select model from MasterLecturer model where username=:username";
        Query query = createQuery(sql).setParameter("username", username);
        return (MasterLecturer) query.uniqueResult();
    }
    
    @Override
    public List<Object[]> getLecturerNidn(String idFaculty, String idMajor) {
        String sql = "select * from MasterLecturer where "
                    + "idLecturer in ("
                    + "select idLecturer from LecturerProgressHistory where state = 1 and "
                    + "idLecturer not in ("
                    + "select idLecturer from FunctionalProgressHistory where idFunctional = 1))";
        if (!(idFaculty.equals("0"))) {
            if (idMajor.equals("0")){
                sql += " and idMajor in (" 
                        + "select idMajor from MasterMajor where "
                        + "idFaculty ='" + idFaculty + "')";
            } else {
                sql += " and idMajor ='" + idMajor + "'";
            }
        }
        Query query = createNativeQuery(sql);
        List<Object[]> listResult = query.list();
        return listResult;
    }

    @Override
    public List<Object[]> getLecturerAssistant(String idFaculty, String idMajor) {
        String sql = "select * from MasterLecturer where "
                    + "idLecturer in ("
                    + "select idLecturer from FunctionalProgressHistory where idFunctional = 1 and state = 1 and "
                    + "idLecturer not in ("
                    + "select idLecturer from FunctionalProgressHistory where idFunctional = 2))";
        if (!(idFaculty.equals("0"))) {
            if (idMajor.equals("0")){
                sql += "AND idMajor IN (" 
                        + "SELECT idMajor FROM MasterMajor WHERE "
                        + "idFaculty ='" + idFaculty + "')";
            } else {
                sql += "AND idMajor ='" + idMajor + "'";
            }
        }
        Query query = createNativeQuery(sql);
        List<Object[]> listResult = query.list();
        return listResult;
    }

    @Override
    public List<Object[]> getLecturerLectors(String idFaculty, String idMajor) {
        String sql = "select * from MasterLecturer where "
                    + "idLecturer in ("
                    + "select idLecturer from FunctionalProgressHistory where idFunctional = 2 and state = 1 and "
                    + "idLecturer not in ("
                    + "select idLecturer from FunctionalProgressHistory where idFunctional = 3))";
        if (!(idFaculty.equals("0"))) {
            if (idMajor.equals("0")){
                sql += "AND idMajor IN (" 
                        + "SELECT idMajor FROM MasterMajor WHERE "
                        + "idFaculty ='" + idFaculty + "')";
            } else {
                sql += "AND idMajor ='" + idMajor + "'";
            }
        }
        Query query = createNativeQuery(sql);
        List<Object[]> listResult = query.list();
        return listResult;
    }

    @Override
    public List<Object[]> getLecturerHeadlectors(String idFaculty, String idMajor) {
        String sql = "select * from MasterLecturer where "
                    + "idLecturer in ("
                    + "select idLecturer from FunctionalProgressHistory where idFunctional = 3 and state = 1 and "
                    + "idLecturer not in ("
                    + "select idLecturer from FunctionalProgressHistory where idFunctional = 4))";
        if (!(idFaculty.equals("0"))) {
            if (idMajor.equals("0")){
                sql += " AND idMajor IN (" 
                        + "SELECT idMajor FROM MasterMajor WHERE "
                        + "idFaculty ='" + idFaculty + "')";
            } else {
                sql += " AND idMajor ='" + idMajor + "'";
            }
        }
        Query query = createNativeQuery(sql);
        List<Object[]> listResult = query.list();
        return listResult;
    }

    @Override
    public List<Object[]> getLecturerProfessor(String idFaculty, String idMajor) {
        String sql = "select * from MasterLecturer where "
                    + "idLecturer in ("
                    + "select idLecturer from FunctionalProgressHistory where idFunctional = 2 and state = 1";
        if (!(idFaculty.equals("0"))) {
            if (idMajor.equals("0")){
                sql += " AND idMajor IN (" 
                        + "SELECT idMajor FROM MasterMajor WHERE "
                        + "idFaculty ='" + idFaculty + "')";
            } else {
                sql += " AND idMajor ='" + idMajor + "'";
            }
        }
        Query query = createNativeQuery(sql);
        List<Object[]> listResult = query.list();
        return listResult;
    }

    @Override
    public List<Object[]> getLecturerSertification(String idFaculty, String idMajor) {
        String sql = " SELECT * FROM sertificationprogresshistory WHERE state=1";
        if(idMajor.equals("0") && (!(idFaculty.equals("0")))){
            sql += " AND idLecturer IN (SELECT idMajor FROM masterlecturer "
                    + "WHERE idMajor IN (SELECT idFaculty FROM masterfaculty "
                    + "WHERE idFaculty =" + idFaculty +"))";
        }
        if((!idMajor.equals("0")) && (!(idFaculty.equals("0")))){
            sql += "  AND idLecturer IN (SELECT idMajor FROM masterlecturer WHERE idMajor =" +idMajor+ ")";
        }
        Query query = createNativeQuery(sql);
        List<Object[]> listResult = query.list();
        return listResult;
    }

    @Override
    public List<Object[]> getNewLecturer(String idFaculty, String idMajor) {
        String sql = "select * from MasterLecturer where "
                    + "idLecturer not in ("
                    + "select idLecturer from FunctionalProgressHistory where idFunctional in (1,2,3,4))"
                    + " and idLecturer not in ("
                    + "select idLecturer from LecturerProgressHistory)";
        if (!(idFaculty.equals("0"))) {
            if (idMajor.equals("0")){
                sql += " AND idMajor IN (" 
                        + "SELECT idMajor FROM MasterMajor WHERE "
                        + "idFaculty ='" + idFaculty + "')";
            } else {
                sql += " AND idMajor ='" + idMajor + "'";
            }
        }
        Query query = createNativeQuery(sql);
        List<Object[]> listResult = query.list();
        return listResult;
    }

    @Override
    public void deleteLecturer(MasterLecturer masterLecturer) {
        getSession().delete(masterLecturer);
    }
}
