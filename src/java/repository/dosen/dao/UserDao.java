/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.dao;

import repository.dosen.models.User;

/**
 *
 * @author Jaret
 */
public interface UserDao {
    
    public User getDataUser(String username, String password);
    
}
