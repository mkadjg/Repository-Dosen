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
import repository.dosen.dao.LecturerDao;
import repository.dosen.dao.SertificationProgressHistoryDao;
import repository.dosen.dto.SertificationProgressHistoryDto;
import repository.dosen.models.MasterLecturer;
import repository.dosen.models.SertificationProgressHistory;
import repository.dosen.service.SertificationProgressHistoryService;

/**
 *
 * @author Jaret
 */
@Transactional
@Service
public class SertificationProgressHistoryServiceImplement implements SertificationProgressHistoryService {
    
    @Autowired
    LecturerDao lecturerDao;
    
    @Autowired
    SertificationProgressHistoryDao sertificationProgressHistoryDao;
    
    @Override
    public List<SertificationProgressHistoryDto> getSertificationProgressHistory() {
        List<SertificationProgressHistoryDto> listData = new ArrayList();
        List<SertificationProgressHistory> listModel = sertificationProgressHistoryDao.getSertificationProgressHistory();
        for (SertificationProgressHistory sertificationProgressHistory : listModel){
            SertificationProgressHistoryDto sertificationProgressHistoryDto = new SertificationProgressHistoryDto();
            sertificationProgressHistoryDto.setIdProgressHistory(sertificationProgressHistory.getIdProgressHistory());
            sertificationProgressHistoryDto.setIdLecturer(sertificationProgressHistory.getLecturer().getIdLecturer());
            sertificationProgressHistoryDto.setNameLecturer(sertificationProgressHistory.getLecturer().getNameLecturer());
            sertificationProgressHistoryDto.setNameMajor(sertificationProgressHistory.getLecturer().getMajor().getNameMajor());
            sertificationProgressHistoryDto.setNameFaculty(sertificationProgressHistory.getLecturer().getMajor().getFaculty().getNameFaculty());
            sertificationProgressHistoryDto.setState(sertificationProgressHistory.getState());
            listData.add(sertificationProgressHistoryDto);
        }
        return listData;
    }

    @Override
    public List<SertificationProgressHistoryDto> getSertificationProgressHistoryByFaculty(String idFaculty) {
        List<SertificationProgressHistoryDto> listData = new ArrayList();
        List<SertificationProgressHistory> listModel = sertificationProgressHistoryDao.getSertificationProgressHistoryByFaculty(idFaculty);
        for (SertificationProgressHistory sertificationProgressHistory : listModel){
            SertificationProgressHistoryDto sertificationProgressHistoryDto = new SertificationProgressHistoryDto();
            sertificationProgressHistoryDto.setIdProgressHistory(sertificationProgressHistory.getIdProgressHistory());
            sertificationProgressHistoryDto.setIdLecturer(sertificationProgressHistory.getLecturer().getIdLecturer());
            sertificationProgressHistoryDto.setNameLecturer(sertificationProgressHistory.getLecturer().getNameLecturer());
            sertificationProgressHistoryDto.setNameMajor(sertificationProgressHistory.getLecturer().getMajor().getNameMajor());
            sertificationProgressHistoryDto.setNameFaculty(sertificationProgressHistory.getLecturer().getMajor().getFaculty().getNameFaculty());
            sertificationProgressHistoryDto.setState(sertificationProgressHistory.getState());
            listData.add(sertificationProgressHistoryDto);
        }
        return listData;
    }
    
    @Override
    public List<SertificationProgressHistoryDto> getSertificationProgressHistoryByMajor(String idMajor) {
        List<SertificationProgressHistoryDto> listData = new ArrayList();
        List<SertificationProgressHistory> listModel = sertificationProgressHistoryDao.getSertificationProgressHistoryByMajor(idMajor);
        for (SertificationProgressHistory sertificationProgressHistory : listModel){
            SertificationProgressHistoryDto sertificationProgressHistoryDto = new SertificationProgressHistoryDto();
            sertificationProgressHistoryDto.setIdProgressHistory(sertificationProgressHistory.getIdProgressHistory());
            sertificationProgressHistoryDto.setIdLecturer(sertificationProgressHistory.getLecturer().getIdLecturer());
            sertificationProgressHistoryDto.setNameLecturer(sertificationProgressHistory.getLecturer().getNameLecturer());
            sertificationProgressHistoryDto.setNameMajor(sertificationProgressHistory.getLecturer().getMajor().getNameMajor());
            sertificationProgressHistoryDto.setNameFaculty(sertificationProgressHistory.getLecturer().getMajor().getFaculty().getNameFaculty());
            sertificationProgressHistoryDto.setState(sertificationProgressHistory.getState());
            listData.add(sertificationProgressHistoryDto);
        }
        return listData;
    }

    @Override
    public void saveSertificationProgressHistory(SertificationProgressHistoryDto sertificationProgressHistoryDto) {
        SertificationProgressHistory sertificationProgressHistory = new SertificationProgressHistory();
        sertificationProgressHistory.setIdProgressHistory(sertificationProgressHistoryDto.getIdProgressHistory());
        MasterLecturer lecturer = lecturerDao.getDataLecturer(sertificationProgressHistoryDto.getIdLecturer());
        sertificationProgressHistory.setLecturer(lecturer);
        sertificationProgressHistory.setState(sertificationProgressHistoryDto.getState());
        sertificationProgressHistoryDao.saveSertificationProgressHistory(sertificationProgressHistory);
        
    }

    @Override
    public SertificationProgressHistoryDto getDataSertificationProgressHistoryById(int idProgressHistory) {
        SertificationProgressHistoryDto sertificationProgressHistoryDto = new SertificationProgressHistoryDto();
        SertificationProgressHistory sertificationProgressHistory = sertificationProgressHistoryDao.getDataSertificationProgressHistoryById(idProgressHistory);
        sertificationProgressHistoryDto.setIdProgressHistory(sertificationProgressHistory.getIdProgressHistory());
        sertificationProgressHistoryDto.setIdLecturer(sertificationProgressHistory.getLecturer().getIdLecturer());
        sertificationProgressHistoryDto.setState(sertificationProgressHistory.getState());
        return sertificationProgressHistoryDto;
    }   

    @Override
    public void updateSertificationProgressHistory(int idProgressHistory) {
        SertificationProgressHistory sertificationProgressHistory = sertificationProgressHistoryDao.getDataSertificationProgressHistoryById(idProgressHistory);
        sertificationProgressHistory.setState(1);
        sertificationProgressHistoryDao.saveSertificationProgressHistory(sertificationProgressHistory);
    }

    @Override
    public void deleteSertificationProgressHistory(int idLecturer) {
        SertificationProgressHistory sertificationProgressHistory = sertificationProgressHistoryDao.getDataSertificationProgressHistory(idLecturer);
        if (sertificationProgressHistory != null){
            sertificationProgressHistoryDao.deleteSertificationProgressHistory(sertificationProgressHistory);
        }
    }
    
}
