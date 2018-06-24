/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import repository.dosen.dao.UserDao;
import repository.dosen.dto.UserDto;
import repository.dosen.models.User;
import repository.dosen.service.UserService;

/**
 *
 * @author Jaret
 */
@Transactional
@Service
public class UserServiceImplement implements UserService{

    @Autowired
    UserDao userDao;
    
    @Override
    public UserDto getDataUser(String username, String password) {
        UserDto userDto = new UserDto();
        User user = userDao.getDataUser(username, password);
        if (user == null){
            return null;
        } else {
            userDto.setIdUser(user.getIdUser());
            userDto.setUsername(user.getUsername());
            userDto.setPassword(user.getPassword());
            return userDto;
        }
    }

    @Override
    public void saveUser(UserDto userDto) {
        User user = new User();
        user.setIdUser(userDto.getIdUser());
        user.setPassword(userDto.getPassword());
        user.setUsername(userDto.getUsername());
        userDao.saveUser(user);
    }

    @Override
    public int cekUsername(String username) {
        User user = userDao.getDataUser(username);
        if (user == null){
            return 1;
        } else {
            return 0;
        }
        
    }
        
    
}
