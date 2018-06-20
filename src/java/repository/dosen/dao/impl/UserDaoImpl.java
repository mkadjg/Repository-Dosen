/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.dao.impl;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;
import repository.dosen.dao.UserDao;
import repository.dosen.models.User;

/**
 *
 * @author Jaret
 */
@Repository
public class UserDaoImpl extends HibernateUtil implements UserDao {

    @Override
    public User getDataUser(String username, String password) {
        String sql = "select model from User model where username=:username and password=:password";
        Query query = createQuery(sql).setParameter("username", username).setParameter("password", password);
        User user = (User) query.uniqueResult();
        return user;
    }

    @Override
    public void saveUser(User user) {
        getSession().saveOrUpdate(user);
    }
    
}
