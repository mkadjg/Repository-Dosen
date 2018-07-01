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
import repository.dosen.dao.SertificationProgressHistoryDao;
import repository.dosen.dto.SertificationProgressHistoryDto;
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
    
}
