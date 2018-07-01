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
import repository.dosen.dao.LecturerProgressHistoryDao;
import repository.dosen.dto.LecturerProgressHistoryDto;
import repository.dosen.models.LecturerProgressHistory;
import repository.dosen.models.MasterLecturer;
import repository.dosen.service.LecturerProgressHistoryService;

/**
 *
 * @author Jaret
 */
@Transactional
@Service
public class LecturerProgressHistoryServiceImplement implements LecturerProgressHistoryService {
    
    @Autowired
    LecturerProgressHistoryDao lecturerProgressHistoryDao;
    
     @Autowired
     LecturerDao lecturerDao;
    
    @Override
    public List<LecturerProgressHistoryDto> getLecturerProgressHistory() {
        List<LecturerProgressHistoryDto> listData = new ArrayList();
        List<LecturerProgressHistory> listModel = lecturerProgressHistoryDao.getLecturerProgressHistory();
        for (LecturerProgressHistory lecturerProgressHistory : listModel){
            LecturerProgressHistoryDto lecturerProgressHistoryDto = new LecturerProgressHistoryDto();
            lecturerProgressHistoryDto.setIdProgressHistory(lecturerProgressHistory.getIdProgressHistory());
            lecturerProgressHistoryDto.setIdLecturer(lecturerProgressHistory.getLecturer().getIdLecturer());
            lecturerProgressHistoryDto.setNameLecturer(lecturerProgressHistory.getLecturer().getNameLecturer());
            lecturerProgressHistoryDto.setNameMajor(lecturerProgressHistory.getLecturer().getMajor().getNameMajor());
            lecturerProgressHistoryDto.setNameFaculty(lecturerProgressHistory.getLecturer().getMajor().getFaculty().getNameFaculty());
            lecturerProgressHistoryDto.setState(lecturerProgressHistory.getState());
            listData.add(lecturerProgressHistoryDto);
        }
        return listData;
    }

    @Override
    public List<LecturerProgressHistoryDto> getLecturerProgressHistoryByFaculty(String idFaculty) {
        List<LecturerProgressHistoryDto> listData = new ArrayList();
        List<LecturerProgressHistory> listModel = lecturerProgressHistoryDao.getLecturerProgressHistoryByFaculty(idFaculty);
        for (LecturerProgressHistory lecturerProgressHistory : listModel){
            LecturerProgressHistoryDto lecturerProgressHistoryDto = new LecturerProgressHistoryDto();
            lecturerProgressHistoryDto.setIdProgressHistory(lecturerProgressHistory.getIdProgressHistory());
            lecturerProgressHistoryDto.setIdLecturer(lecturerProgressHistory.getLecturer().getIdLecturer());
            lecturerProgressHistoryDto.setNameLecturer(lecturerProgressHistory.getLecturer().getNameLecturer());
            lecturerProgressHistoryDto.setNameMajor(lecturerProgressHistory.getLecturer().getMajor().getNameMajor());
            lecturerProgressHistoryDto.setNameFaculty(lecturerProgressHistory.getLecturer().getMajor().getFaculty().getNameFaculty());
            lecturerProgressHistoryDto.setState(lecturerProgressHistory.getState());
            listData.add(lecturerProgressHistoryDto);
        }
        return listData;
    }
    
    @Override
    public List<LecturerProgressHistoryDto> getLecturerProgressHistoryByMajor(String idMajor) {
        List<LecturerProgressHistoryDto> listData = new ArrayList();
        List<LecturerProgressHistory> listModel = lecturerProgressHistoryDao.getLecturerProgressHistoryByMajor(idMajor);
        for (LecturerProgressHistory lecturerProgressHistory : listModel){
            LecturerProgressHistoryDto lecturerProgressHistoryDto = new LecturerProgressHistoryDto();
            lecturerProgressHistoryDto.setIdProgressHistory(lecturerProgressHistory.getIdProgressHistory());
            lecturerProgressHistoryDto.setIdLecturer(lecturerProgressHistory.getLecturer().getIdLecturer());
            lecturerProgressHistoryDto.setNameLecturer(lecturerProgressHistory.getLecturer().getNameLecturer());
            lecturerProgressHistoryDto.setNameMajor(lecturerProgressHistory.getLecturer().getMajor().getNameMajor());
            lecturerProgressHistoryDto.setNameFaculty(lecturerProgressHistory.getLecturer().getMajor().getFaculty().getNameFaculty());
            lecturerProgressHistoryDto.setState(lecturerProgressHistory.getState());
            listData.add(lecturerProgressHistoryDto);
        }
        return listData;
    }

    @Override
    public void saveLecturerProgressHistory(LecturerProgressHistoryDto lecturerProgressHistoryDto) {
        LecturerProgressHistory lecturerProgressHistory = new LecturerProgressHistory();
        lecturerProgressHistory.setIdProgressHistory(lecturerProgressHistoryDto.getIdProgressHistory());
        MasterLecturer lecturer = lecturerDao.getDataLecturer(lecturerProgressHistoryDto.getIdLecturer());
        lecturerProgressHistory.setLecturer(lecturer);
        lecturerProgressHistory.setState(0);
        lecturerProgressHistoryDao.saveLecturerProgressHistory(lecturerProgressHistory);
    }
    
}
