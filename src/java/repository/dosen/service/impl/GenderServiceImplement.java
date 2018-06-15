/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.service.impl;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import repository.dosen.dao.GenderDao;
import repository.dosen.dto.Gender;
import repository.dosen.models.MasterGender;
import repository.dosen.service.GenderService;


/**
 *
 * @author sandi
 */
@Transactional
@Service
public class GenderServiceImplement implements GenderService{
    
    @Autowired
    GenderDao genderDao;

    @Override
    public List<Gender> getGender() {
        List<Gender> listGender = new ArrayList<>();
        List<MasterGender> listMasterGender = genderDao.getGender();
        for (MasterGender masterGender : listMasterGender) {
            Gender gender = new Gender();
            gender.setIdGender(String.valueOf(masterGender.getIdGender()));
            gender.setNameGender(masterGender.getNameGender());
            listGender.add(gender);
        }
        return listGender;
    }
}
