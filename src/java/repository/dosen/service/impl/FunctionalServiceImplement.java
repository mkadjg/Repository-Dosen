/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.service.impl;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import repository.dosen.dao.FunctionalDao;
import repository.dosen.dto.Functional;
import repository.dosen.models.MasterFunctional;
import repository.dosen.service.FunctionalService;

/**
 *
 * @author Jaret
 */
public class FunctionalServiceImplement implements FunctionalService{
    
    @Autowired
    FunctionalDao functionalDao;

    @Override
    public List<Functional> getFunctional() {
       List<Functional> listFunctional = new ArrayList<>();
        List<MasterFunctional> listMasterFunctional = functionalDao.getFunctional();
        for (MasterFunctional masterFunctional : listMasterFunctional) {
            Functional functional = new Functional();
            functional.setIdFunctional(masterFunctional.getIdFunctional());
            functional.setNameFunctional(masterFunctional.getNameFunctional());
            listFunctional.add(functional);
        }
        return listFunctional;
    }

    @Override
    public Functional getDataFunctional(int idFunctional) {
        MasterFunctional masterFunctional = functionalDao.getDataFunctional(idFunctional);
        Functional functional = new Functional();
        functional.setIdFunctional(masterFunctional.getIdFunctional());
        functional.setNameFunctional(masterFunctional.getNameFunctional());
        return functional;
    }
    
}
