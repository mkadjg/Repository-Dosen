/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.service;

import repository.dosen.dto.UserDto;

/**
 *
 * @author Jaret
 */
public interface UserService {
    public int cekUsername(String username);
    public UserDto getDataUser(String username, String password);
    public void saveUser(UserDto userDto);
}
