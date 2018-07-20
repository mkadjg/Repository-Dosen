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
import repository.dosen.dao.DetailFileDao;
import repository.dosen.dao.FileDao;
import repository.dosen.dao.SertificationHistoryDao;
import repository.dosen.dao.LecturerDao;
import repository.dosen.dto.SertificationHistory;
import repository.dosen.models.MasterLecturer;
import repository.dosen.models.TranFile;
import repository.dosen.models.TranSertificationHistory;
import repository.dosen.service.SertificationHistoryService;

/**
 *
 * @author Jaret
 */
@Transactional
@Service
public class SertificationHistoryServiceImplement implements SertificationHistoryService{
    
    @Autowired
    LecturerDao lecturerDao;
    
    @Autowired
    FileDao fileDao;
    
    @Autowired
    DetailFileDao detailFileDao;
    
    @Autowired
    SertificationHistoryDao sertificationHistoryDao;
    
    @Override
    public void saveSertificationHistory(SertificationHistory sertificationHistory) {
        TranSertificationHistory tranSertificationHistory = new TranSertificationHistory();
        tranSertificationHistory.setIdSertificationHistory(sertificationHistory.getIdSertificationHistory());
        tranSertificationHistory.setSertificationPart(sertificationHistory.getSertificationPart());
        tranSertificationHistory.setPtpsNumber(sertificationHistory.getPtpsNumber());
        tranSertificationHistory.setRegistrationNumber(sertificationHistory.getRegistrationNumber());
        tranSertificationHistory.setStudyPart(sertificationHistory.getStudyPart());
        MasterLecturer masterLecturer = lecturerDao.getDataLecturer(sertificationHistory.getIdLecturer());
        tranSertificationHistory.setLecturer(masterLecturer);
        TranFile tranFile = fileDao.getLastDataFile();
        tranSertificationHistory.setTranFile(tranFile);
        sertificationHistoryDao.saveSertificationHistory(tranSertificationHistory);
    }

    @Override
    public List<SertificationHistory> getSertificationHistory(int idLecturer) {
        List<SertificationHistory> listSertificationHistory = new ArrayList<>();
        List<TranSertificationHistory> listTranSertificationHistory = sertificationHistoryDao.getSertificationHistory(idLecturer);
        for (TranSertificationHistory tranSertificationHistory : listTranSertificationHistory){
            SertificationHistory sertificationHistory = new SertificationHistory();
            sertificationHistory.setIdSertificationHistory(tranSertificationHistory.getIdSertificationHistory());
            sertificationHistory.setSertificationPart(tranSertificationHistory.getSertificationPart());
            sertificationHistory.setStudyPart(tranSertificationHistory.getStudyPart());
            sertificationHistory.setPtpsNumber(tranSertificationHistory.getPtpsNumber());
            sertificationHistory.setRegistrationNumber(tranSertificationHistory.getRegistrationNumber());
            sertificationHistory.setIdLecturer(tranSertificationHistory.getLecturer().getIdLecturer());
            sertificationHistory.setIdTranFile(tranSertificationHistory.getTranFile().getIdTranFile());
            sertificationHistory.setIdDetail(tranSertificationHistory.getTranFile().getDetail().getIdDetail());
            sertificationHistory.setNameDokumen(tranSertificationHistory.getTranFile().getDetail().getNameDokumen());
            listSertificationHistory.add(sertificationHistory);
        }
        return listSertificationHistory;
    }

    @Override
    public void deleteSertificationHistory(int idSertificationHistory) {
        TranSertificationHistory tranSertificationHistory = new TranSertificationHistory();
        tranSertificationHistory.setIdSertificationHistory(idSertificationHistory);
        sertificationHistoryDao.deleteSertificationHistory(tranSertificationHistory);
    }

    @Override
    public List<SertificationHistory> searchSertificationHistory(String nameSertification) {
        List<SertificationHistory> listSertificationHistory = new ArrayList<>();
        List<Object[]> listModel = sertificationHistoryDao.serachSertificationHistory(nameSertification);
        for (Object[] tranSertificationHistory : listModel){
            SertificationHistory sertificationHistory  = new SertificationHistory();
            sertificationHistory.setIdSertificationHistory(Integer.parseInt(tranSertificationHistory[0].toString()));
            sertificationHistory.setSertificationPart(tranSertificationHistory[1].toString());
            sertificationHistory.setStudyPart(tranSertificationHistory[2].toString());
            sertificationHistory.setPtpsNumber(tranSertificationHistory[4].toString());
            sertificationHistory.setRegistrationNumber(tranSertificationHistory[3].toString());
            MasterLecturer masterLecturer = lecturerDao.getDataLecturer(Integer.parseInt(tranSertificationHistory[5].toString()));
            sertificationHistory.setIdLecturer(masterLecturer.getIdLecturer());
            TranFile tranFile = fileDao.getDataFile(Integer.parseInt(tranSertificationHistory[6].toString()));
            sertificationHistory.setIdTranFile(tranFile.getIdTranFile());
            sertificationHistory.setIdDetail(tranFile.getDetail().getIdDetail());
            listSertificationHistory.add(sertificationHistory);
        }
        return listSertificationHistory;
    }

    @Override
    public void deleteAllSertificationHistory(int idLecturer) {
        sertificationHistoryDao.deleteAllSertificationHistory(idLecturer);
    }
    
}
