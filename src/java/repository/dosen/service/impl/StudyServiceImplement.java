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
import repository.dosen.dao.StudyDao;
import repository.dosen.dto.Study;
import repository.dosen.models.MasterStudy;
import repository.dosen.service.StudyService;

/**
 *
 * @author Jaret
 */
@Service
@Transactional
public class StudyServiceImplement implements StudyService{
    
    @Autowired
    StudyDao studyDao;

    @Override
    public List<Study> getStudy() {
        List<Study> listStudy = new ArrayList<>();
        List<MasterStudy> listMasterStudy = studyDao.getStudy();
        for (MasterStudy masterStudy : listMasterStudy){
            Study study = new Study();
            study.setIdStudy(masterStudy.getIdStudy());
            study.setStudyDescription(masterStudy.getStudyDescription());
            listStudy.add(study);
        }
        return listStudy;
    }
    
}
