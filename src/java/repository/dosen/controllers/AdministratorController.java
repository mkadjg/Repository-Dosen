/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.controllers;

import com.google.gson.Gson;
import java.util.HashMap;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import repository.dosen.dto.UserDto;
import repository.dosen.service.UserService;

/**
 *
 * @author Jaret
 */
@Controller
public class AdministratorController {
 
    @Autowired
    UserService userService;
    
    @RequestMapping(value = "/cekAdministrator", method = RequestMethod.GET)
    @ResponseBody
    public String cekAdministrator(String username, String oldPassword){
        UserDto user = userService.getDataUser(username, oldPassword);
        if (user != null){
            Map map = new HashMap<>();
            map.put("message", "Berhasil login");
            map.put("status", 1);
            return new Gson().toJson(map);
        } else {
            Map map = new HashMap<>();
            map.put("message", "Password lama anda salah !!!");
            map.put("status", 0);
            return new Gson().toJson(map);
        }
    }
    
    @RequestMapping(value = "/updateAdministrator", method = RequestMethod.GET)
    @ResponseBody
    public String updateAdministrator(String idUser, String username, String password){
        int cekData = userService.cekUsername(username);
        if (cekData == 0){
            Map map = new HashMap<>();
            map.put("message", "Username sudah dipakai !!!");
            map.put("status", 0);
            return new Gson().toJson(map);
        } else {
            UserDto userDto = new UserDto();
            userDto.setIdUser(Integer.parseInt(idUser));
            userDto.setUsername(username);
            userDto.setPassword(password);
            userService.saveUser(userDto);
            Map map = new HashMap<>();
            map.put("message", "Berhasil update data !!!");
            map.put("status", 1);
            return new Gson().toJson(map);
        }
        
    }
    
}
