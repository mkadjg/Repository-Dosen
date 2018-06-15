/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import repository.dosen.dao.DetailFileDao;
import repository.dosen.dao.FileDao;
import repository.dosen.dao.LecturerDao;
import repository.dosen.dto.FileDto;
import repository.dosen.models.DetailFile;
import repository.dosen.models.MasterLecturer;
import repository.dosen.models.TranFile;
import repository.dosen.service.FileService;


/**
 *
 * @author sandi
 */
@Transactional
@Service
public class FileServiceImplements implements FileService {

    @Autowired
    LecturerDao lecturerDao;
    
    @Autowired
    FileDao fileDao;
    
    @Autowired
    DetailFileDao detailFileDao;
    
    @Override
    public void saveFile(FileDto fileDto) {
        TranFile tranFile = new TranFile();
        MasterLecturer masterLecturer = lecturerDao.getDataLecturer(fileDto.getIdLecturer());
        DetailFile detailFile = detailFileDao.getDataDetailFile(fileDto.getIdDetail());
        tranFile.setIdTranFile(fileDto.getIdTranFile());
        tranFile.setState(fileDto.getState());
        tranFile.setInformation(fileDto.getInformation());
        tranFile.setIdFunctional(fileDto.getIdFunctional());
        tranFile.setNameFile(fileDto.getNameFile());
        tranFile.setLecturer(masterLecturer);
        tranFile.setDetail(detailFile);
        fileDao.saveFile(tranFile);
    }
}
