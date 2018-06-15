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
import repository.dosen.dao.FacultyDao;
import repository.dosen.dao.MajorDao;
import repository.dosen.dto.Major;
import repository.dosen.models.MasterFaculty;
import repository.dosen.models.MasterMajor;
import repository.dosen.service.MajorService;

/**
 *
 * @author sandi
 */
@Service
@Transactional
public class MajorServiceImplement implements MajorService {

    @Autowired
    MajorDao majorDao;
    
    @Autowired
    FacultyDao facultyDao;
    
    @Override
    public List<Major> getMajor() {
        List<Major> listMajor = new ArrayList<>();
        List<MasterMajor> listMasterMajor = majorDao.getMajor();
        
        for (MasterMajor masterMajor : listMasterMajor){
            Major major= new Major();
            major.setIdMajor(masterMajor.getIdMajor());
            major.setNameMajor(masterMajor.getNameMajor());
            major.setIdFaculty(masterMajor.getFaculty().getIdFaculty());
            major.setNameFaculty(masterMajor.getFaculty().getNameFaculty());
            listMajor.add(major);
        }
        return listMajor;
    }

    @Override
    public Major getDataMajor(String id) {
        Major major = new Major();
        MasterMajor masterMajor = majorDao.getDataMajor(id); 
        major.setIdMajor(masterMajor.getIdMajor());
        major.setNameMajor(masterMajor.getNameMajor());
        major.setIdFaculty(masterMajor.getFaculty().getIdFaculty());
        major.setNameFaculty(masterMajor.getFaculty().getNameFaculty());
        return major;
    }

    @Override
    public void saveMajor(Major major) {
        MasterMajor masterMajor = new MasterMajor();
        MasterFaculty masterFaculty = facultyDao.getDataFaculty(major.getIdFaculty());
        masterMajor.setIdMajor(major.getIdMajor());
        masterMajor.setNameMajor(major.getNameMajor());
        masterMajor.setFaculty(masterFaculty);
        majorDao.saveMajor(masterMajor);
    }

    @Override
    public void deleteMajor(String Id) {
        MasterMajor masterMajor = new MasterMajor();
        masterMajor.setIdMajor(Id);
        majorDao.deleteMajor(masterMajor);
    }

    @Override
    public List<Major> getDataMajorByFaculty(String idFaculty) {
        List<Major> listMajor = new ArrayList<>();
        List<MasterMajor> listMasterMajor = majorDao.getDataMajorByFaculty(idFaculty);
        
        for (MasterMajor masterMajor : listMasterMajor){
            Major major= new Major();
            major.setIdMajor(masterMajor.getIdMajor());
            major.setNameMajor(masterMajor.getNameMajor());
            major.setIdFaculty(masterMajor.getFaculty().getIdFaculty());
            major.setNameFaculty(masterMajor.getFaculty().getNameFaculty());
            listMajor.add(major);
        }
        return listMajor;
    }

    @Override
    public List<Major> searchMajor(String nameMajor) {
        List<Major> listMajor = new ArrayList<>();
        List<Object[]> masterMajor = majorDao.searchMajor(nameMajor);
        for (Object[] object : masterMajor){
            Major major = new Major();
            major.setIdMajor(object[0].toString());
            major.setNameMajor(object[1].toString());
            MasterFaculty masterFaculty = facultyDao.getDataFaculty(object[2].toString());
            major.setNameFaculty(masterFaculty.getNameFaculty());
            listMajor.add(major);
        }
        return listMajor;
    }

    @Override
    public Major getDataFacultyByMajor(String idMajor) {
        Major major = new Major();
        MasterMajor masterMajor = majorDao.getDataFacultyByMajor(idMajor); 
        major.setIdMajor(masterMajor.getIdMajor());
        major.setNameMajor(masterMajor.getNameMajor());
        major.setIdFaculty(masterMajor.getFaculty().getIdFaculty());
        major.setNameFaculty(masterMajor.getFaculty().getNameFaculty());
        return major;
    }
    
}
