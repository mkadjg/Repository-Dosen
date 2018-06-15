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
import repository.dosen.dto.Faculty;
import repository.dosen.models.MasterFaculty;
import repository.dosen.service.FacultyService;

/**
 *
 * @author sandi
 */
@Service
@Transactional
public class FacultyServiceImplement implements FacultyService {
    
    @Autowired
    FacultyDao facultyDao;
    
    @Override
    public List<Faculty> getFaculty() {
        List<Faculty> listFaculty = new ArrayList<>();
        List<MasterFaculty> listMasterFaculty = facultyDao.getFaculty();
        
        for (MasterFaculty masterFaculty : listMasterFaculty){
            Faculty faculty = new Faculty();
            faculty.setIdFaculty(masterFaculty.getIdFaculty());
            faculty.setNameFaculty(masterFaculty.getNameFaculty());
            listFaculty.add(faculty);
        }
        return listFaculty;
    }

    @Override
    public Faculty getDataFaculty(String id) {
        Faculty faculty = new Faculty();
        MasterFaculty masterFaculty = facultyDao.getDataFaculty(id);
        faculty.setIdFaculty(masterFaculty.getIdFaculty());
        faculty.setNameFaculty(masterFaculty.getNameFaculty());
        return faculty;
    }

    @Override
    public void saveFaculty(Faculty faculty) {
        MasterFaculty masterFaculty = new MasterFaculty();
        masterFaculty.setIdFaculty(faculty.getIdFaculty());
        masterFaculty.setNameFaculty(faculty.getNameFaculty());
        facultyDao.saveFaculty(masterFaculty);
    }

    @Override
    public void deleteFaculty(String id) {
        MasterFaculty masterFaculty = new MasterFaculty();
        masterFaculty.setIdFaculty(id);
        facultyDao.deleteFaculty(masterFaculty);
    }

    @Override
    public List<Faculty> searchFaculty(String nameFaculty) {
        List<Faculty> listFaculty = new ArrayList<>();
        List<Object[]> masterFaculty = facultyDao.searchFaculty(nameFaculty);
        for (Object[] object : masterFaculty){
            Faculty faculty = new Faculty();
            faculty.setIdFaculty(object[0].toString());
            faculty.setNameFaculty(object[1].toString());
            listFaculty.add(faculty);
        }
        return listFaculty;
    }
}
