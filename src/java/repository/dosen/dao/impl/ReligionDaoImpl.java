/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.dao.impl;

import java.util.List;
import org.hibernate.Query;
import org.springframework.stereotype.Repository;
import repository.dosen.dao.ReligionDao;
import repository.dosen.models.MasterReligion;

/**
 *
 * @author sandi
 */
@Repository
public class ReligionDaoImpl extends HibernateUtil implements ReligionDao{

    @Override
    public MasterReligion getDataReligion(int id) {
        String sql = "select model from MasterReligion model where idReligion=:ids";
        Query query = createQuery(sql).setParameter("ids", id);
        return (MasterReligion) query.uniqueResult();
    }

    @Override
    public List<MasterReligion> getReligion() {
        String sql = "select model from MasterReligion model";
        Query query = createQuery(sql);
        return query.list();
    }
    
}
