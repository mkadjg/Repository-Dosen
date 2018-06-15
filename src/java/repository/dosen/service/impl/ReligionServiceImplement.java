/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.service.impl;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import repository.dosen.dao.ReligionDao;
import repository.dosen.dto.Religion;
import repository.dosen.models.MasterReligion;
import repository.dosen.service.ReligionService;

/**
 *
 * @author sandi
 */
public class ReligionServiceImplement implements ReligionService {
    
    @Autowired
    ReligionDao religionDao;
    
    @Override
    public List<Religion> getReligion() {
        List<Religion> listReligion = new ArrayList<>();
        List<MasterReligion> listMasterReligion = religionDao.getReligion();
        
        for (MasterReligion masterReligion : listMasterReligion){
            Religion religion = new Religion();
            religion.setIdReligion(String.valueOf(masterReligion.getIdReligion()));
            religion.setNameReligion(masterReligion.getNameReligion());
            listReligion.add(religion);
        }
        return listReligion;
    }
    
}
