/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.controllers;

import com.google.gson.Gson;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import repository.dosen.dto.Lecturer;
import repository.dosen.dto.UserDto;
import repository.dosen.service.LecturerService;
import repository.dosen.service.UserService;

/**
 *
 * @author Jaret
 */
@Controller
public class LoginController {
    
    @Autowired
    UserService userService;
    
    @Autowired
    LecturerService lecturerService;
    
    @RequestMapping( value = "/index", method = RequestMethod.GET)
    public String showLogin(){
        return "index";
    }
    
    @RequestMapping( value = "/login", method = RequestMethod.POST)
    @ResponseBody
    public String login(UserDto userDto, ModelMap model, HttpServletRequest request, HttpServletResponse response){
        UserDto user = userService.getDataUser(userDto.getUsername(), userDto.getPassword());
        if (user != null){
            HttpSession session = request.getSession(true);
            session.setAttribute("name", user.getUsername());
            session.setAttribute("role", "Administrator");
            session.setAttribute("idUser", user.getIdUser());
            Map map = new HashMap<>();
            map.put("message", "Berhasil login");
            map.put("status", 1);
            map.put("role", 1);
            return new Gson().toJson(map);
        } else {
            Lecturer lecturer = lecturerService.getDataLecturerForLogin(userDto.getUsername(), userDto.getPassword());
            if (lecturer != null){
                HttpSession session = request.getSession(true);
                session.setAttribute("name", lecturer.getUsername());
                session.setAttribute("nameLecturer", lecturer.getNameLecturer());
                session.setAttribute("role", "Dosen Tetap");
                session.setAttribute("idLecturer", lecturer.getIdLecturer());
                Map map = new HashMap<>();
                map.put("message", "Berhasil login");
                map.put("status", 1);
                map.put("role", 2);
                return new Gson().toJson(map);
            } else {
                Map map = new HashMap<>();
                map.put("message", "Username atau Password Salah !!!");
                map.put("status", 0);
                return new Gson().toJson(map);    
            }
        }
    }    
    
    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout(ModelMap model, HttpServletRequest request, HttpServletResponse response){
        HttpSession session = request.getSession(true);
        session.invalidate();
        return "index";
    }
    
}
