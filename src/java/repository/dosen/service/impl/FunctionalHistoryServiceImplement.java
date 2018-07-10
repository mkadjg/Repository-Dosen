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
import repository.dosen.dao.FunctionalDao;
import repository.dosen.dao.FunctionalHistoryDao;
import repository.dosen.dao.LecturerDao;
import repository.dosen.dto.FunctionalHistory;
import repository.dosen.models.MasterFunctional;
import repository.dosen.models.MasterLecturer;
import repository.dosen.models.TranFile;
import repository.dosen.models.TranFunctionalHistory;
import repository.dosen.service.FunctionalHistoryService;

/**
 *
 * @author Jaret
 */
@Transactional
@Service
public class FunctionalHistoryServiceImplement implements FunctionalHistoryService{

    @Autowired
    FunctionalDao functionalDao;
    
    @Autowired
    LecturerDao lecturerDao;
    
    @Autowired
    FileDao fileDao;
    
    @Autowired
    DetailFileDao detailFileDao;
    
    @Autowired
    FunctionalHistoryDao functionalHistoryDao;
    
    @Override
    public void saveFunctionalHistory(FunctionalHistory functionalHistory) {
        TranFunctionalHistory tranFunctionalHistory = new TranFunctionalHistory();
        tranFunctionalHistory.setIdFunctionalHistory(functionalHistory.getIdFunctionalHistory());
        tranFunctionalHistory.setSkDate(functionalHistory.getSkDate());
        tranFunctionalHistory.setSkNumber(functionalHistory.getSkNumber());
        MasterLecturer masterLecturer = lecturerDao.getDataLecturer(functionalHistory.getIdLecturer());
        MasterFunctional masterFunctional = functionalDao.getDataFunctional(functionalHistory.getIdFunctional());
        TranFile tranFile = fileDao.getLastDataFile();
        tranFunctionalHistory.setLecturer(masterLecturer);
        tranFunctionalHistory.setFunctional(masterFunctional);
        tranFunctionalHistory.setTranFile(tranFile);
        functionalHistoryDao.saveFunctionalHistory(tranFunctionalHistory);
    }

    @Override
    public void deleteFunctionalHistory(int idFunctionalHistory) {
        TranFunctionalHistory tranFunctionalHistory = new TranFunctionalHistory();
        tranFunctionalHistory.setIdFunctionalHistory(idFunctionalHistory);
        functionalHistoryDao.deleteFunctionalHistory(tranFunctionalHistory);
    }

    @Override
    public List<FunctionalHistory> getFunctionalHistory(int idLecturer) {
        List<FunctionalHistory> listFunctionalHistory = new ArrayList<>();
        List<TranFunctionalHistory> listModel = functionalHistoryDao.getFunctionalHistory(idLecturer);
        for (TranFunctionalHistory tranFunctionalHistory : listModel){
            FunctionalHistory functionalHistory = new FunctionalHistory();
            functionalHistory.setIdFunctionalHistory(tranFunctionalHistory.getIdFunctionalHistory());
            functionalHistory.setIdLecturer(tranFunctionalHistory.getLecturer().getIdLecturer());
            functionalHistory.setIdTranFile(tranFunctionalHistory.getTranFile().getIdTranFile());
            functionalHistory.setIdDetail(tranFunctionalHistory.getTranFile().getDetail().getIdDetail());
            functionalHistory.setSkDate(tranFunctionalHistory.getSkDate());
            functionalHistory.setSkNumber(tranFunctionalHistory.getSkNumber());
            functionalHistory.setIdFunctional(tranFunctionalHistory.getFunctional().getIdFunctional());
            functionalHistory.setNameFunctional(tranFunctionalHistory.getFunctional().getNameFunctional());
            listFunctionalHistory.add(functionalHistory);
        }
        return listFunctionalHistory;
    }

    @Override
    public List<FunctionalHistory> searchFunctionalHistory(String nameFunctional) {
        List<FunctionalHistory> listFunctionalHistory = new ArrayList<>();
        List<Object[]> listModel = functionalHistoryDao.serachFunctionalHistory(nameFunctional);
        for (Object[] tranFunctionalHistory : listModel){
            FunctionalHistory functionalHistory = new FunctionalHistory();
            functionalHistory.setIdFunctionalHistory(Integer.parseInt(tranFunctionalHistory[0].toString()));
            functionalHistory.setIdLecturer(Integer.parseInt(tranFunctionalHistory[3].toString()));
            functionalHistory.setIdTranFile(Integer.parseInt(tranFunctionalHistory[5].toString()));
            TranFile tranFile = fileDao.getDataFile(Integer.parseInt(tranFunctionalHistory[5].toString()));
            functionalHistory.setIdDetail(tranFile.getDetail().getIdDetail());
            functionalHistory.setSkDate(tranFunctionalHistory[1].toString());
            functionalHistory.setSkNumber(tranFunctionalHistory[2].toString());
            functionalHistory.setIdFunctional(Integer.parseInt(tranFunctionalHistory[4].toString()));
            MasterFunctional masterFunctional = functionalDao.getDataFunctional(Integer.parseInt(tranFunctionalHistory[4].toString()));
            functionalHistory.setNameFunctional(masterFunctional.getNameFunctional());
            listFunctionalHistory.add(functionalHistory);
        }
        return listFunctionalHistory;
    }

    @Override
    public void deleteAllFunctionalHistory(int idLecturer) {
        functionalHistoryDao.deleteAllFuntionalHistory(idLecturer);
    }
    
}
