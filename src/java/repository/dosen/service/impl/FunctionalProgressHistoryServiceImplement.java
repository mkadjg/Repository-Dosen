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
import repository.dosen.dao.FunctionalProgressHistoryDao;
import repository.dosen.dto.FunctionalProgressHistoryDto;
import repository.dosen.models.FunctionalProgressHistory;
import repository.dosen.service.FunctionalProgressHistoryService;

/**
 *
 * @author Jaret
 */
@Transactional
@Service
public class FunctionalProgressHistoryServiceImplement implements FunctionalProgressHistoryService {
    
    @Autowired
    FunctionalProgressHistoryDao functionalProgressHistoryDao;
    
    @Override
    public List<FunctionalProgressHistoryDto> getAssistantProgressHistory() {
        List<FunctionalProgressHistoryDto> listData = new ArrayList();
        List<FunctionalProgressHistory> listModel = functionalProgressHistoryDao.getAssistantProgressHistory();
        for (FunctionalProgressHistory functionalProgressHistory : listModel){
            FunctionalProgressHistoryDto functionalProgressHistoryDto = new FunctionalProgressHistoryDto();
            functionalProgressHistoryDto.setIdProgressHistory(functionalProgressHistory.getIdProgressHistory());
            functionalProgressHistoryDto.setIdLecturer(functionalProgressHistory.getLecturer().getIdLecturer());
            functionalProgressHistoryDto.setNameLecturer(functionalProgressHistory.getLecturer().getNameLecturer());
            functionalProgressHistoryDto.setNameMajor(functionalProgressHistory.getLecturer().getMajor().getNameMajor());
            functionalProgressHistoryDto.setNameFaculty(functionalProgressHistory.getLecturer().getMajor().getFaculty().getNameFaculty());
            functionalProgressHistoryDto.setState(functionalProgressHistory.getState());
            listData.add(functionalProgressHistoryDto);
        }
        return listData;
    }

    @Override
    public List<FunctionalProgressHistoryDto> getAssistantProgressHistoryByFaculty(String idFaculty) {
        List<FunctionalProgressHistoryDto> listData = new ArrayList();
        List<FunctionalProgressHistory> listModel = functionalProgressHistoryDao.getAssistantProgressHistoryByFaculty(idFaculty);
        for (FunctionalProgressHistory functionalProgressHistory : listModel){
            FunctionalProgressHistoryDto functionalProgressHistoryDto = new FunctionalProgressHistoryDto();
            functionalProgressHistoryDto.setIdProgressHistory(functionalProgressHistory.getIdProgressHistory());
            functionalProgressHistoryDto.setIdLecturer(functionalProgressHistory.getLecturer().getIdLecturer());
            functionalProgressHistoryDto.setNameLecturer(functionalProgressHistory.getLecturer().getNameLecturer());
            functionalProgressHistoryDto.setNameMajor(functionalProgressHistory.getLecturer().getMajor().getNameMajor());
            functionalProgressHistoryDto.setNameFaculty(functionalProgressHistory.getLecturer().getMajor().getFaculty().getNameFaculty());
            functionalProgressHistoryDto.setState(functionalProgressHistory.getState());
            listData.add(functionalProgressHistoryDto);
        }
        return listData;
    }
    
    @Override
    public List<FunctionalProgressHistoryDto> getAssistantProgressHistoryByMajor(String idMajor) {
        List<FunctionalProgressHistoryDto> listData = new ArrayList();
        List<FunctionalProgressHistory> listModel = functionalProgressHistoryDao.getAssistantProgressHistoryByMajor(idMajor);
        for (FunctionalProgressHistory functionalProgressHistory : listModel){
            FunctionalProgressHistoryDto functionalProgressHistoryDto = new FunctionalProgressHistoryDto();
            functionalProgressHistoryDto.setIdProgressHistory(functionalProgressHistory.getIdProgressHistory());
            functionalProgressHistoryDto.setIdLecturer(functionalProgressHistory.getLecturer().getIdLecturer());
            functionalProgressHistoryDto.setNameLecturer(functionalProgressHistory.getLecturer().getNameLecturer());
            functionalProgressHistoryDto.setNameMajor(functionalProgressHistory.getLecturer().getMajor().getNameMajor());
            functionalProgressHistoryDto.setNameFaculty(functionalProgressHistory.getLecturer().getMajor().getFaculty().getNameFaculty());
            functionalProgressHistoryDto.setState(functionalProgressHistory.getState());
            listData.add(functionalProgressHistoryDto);
        }
        return listData;
    }

    @Override
    public List<FunctionalProgressHistoryDto> getLectorsProgressHistory() {
        List<FunctionalProgressHistoryDto> listData = new ArrayList();
        List<FunctionalProgressHistory> listModel = functionalProgressHistoryDao.getLectorsProgressHistory();
        for (FunctionalProgressHistory functionalProgressHistory : listModel){
            FunctionalProgressHistoryDto functionalProgressHistoryDto = new FunctionalProgressHistoryDto();
            functionalProgressHistoryDto.setIdProgressHistory(functionalProgressHistory.getIdProgressHistory());
            functionalProgressHistoryDto.setIdLecturer(functionalProgressHistory.getLecturer().getIdLecturer());
            functionalProgressHistoryDto.setNameLecturer(functionalProgressHistory.getLecturer().getNameLecturer());
            functionalProgressHistoryDto.setNameMajor(functionalProgressHistory.getLecturer().getMajor().getNameMajor());
            functionalProgressHistoryDto.setNameFaculty(functionalProgressHistory.getLecturer().getMajor().getFaculty().getNameFaculty());
            functionalProgressHistoryDto.setState(functionalProgressHistory.getState());
            listData.add(functionalProgressHistoryDto);
        }
        return listData;
    }

    @Override
    public List<FunctionalProgressHistoryDto> getLectorsProgressHistoryByFaculty(String idFaculty) {
        List<FunctionalProgressHistoryDto> listData = new ArrayList();
        List<FunctionalProgressHistory> listModel = functionalProgressHistoryDao.getAssistantProgressHistoryByFaculty(idFaculty);
        for (FunctionalProgressHistory functionalProgressHistory : listModel){
            FunctionalProgressHistoryDto functionalProgressHistoryDto = new FunctionalProgressHistoryDto();
            functionalProgressHistoryDto.setIdProgressHistory(functionalProgressHistory.getIdProgressHistory());
            functionalProgressHistoryDto.setIdLecturer(functionalProgressHistory.getLecturer().getIdLecturer());
            functionalProgressHistoryDto.setNameLecturer(functionalProgressHistory.getLecturer().getNameLecturer());
            functionalProgressHistoryDto.setNameMajor(functionalProgressHistory.getLecturer().getMajor().getNameMajor());
            functionalProgressHistoryDto.setNameFaculty(functionalProgressHistory.getLecturer().getMajor().getFaculty().getNameFaculty());
            functionalProgressHistoryDto.setState(functionalProgressHistory.getState());
            listData.add(functionalProgressHistoryDto);
        }
        return listData;
    }

    @Override
    public List<FunctionalProgressHistoryDto> getLectorsProgressHistoryByMajor(String idMajor) {
        List<FunctionalProgressHistoryDto> listData = new ArrayList();
        List<FunctionalProgressHistory> listModel = functionalProgressHistoryDao.getLectorsProgressHistoryByMajor(idMajor);
        for (FunctionalProgressHistory functionalProgressHistory : listModel){
            FunctionalProgressHistoryDto functionalProgressHistoryDto = new FunctionalProgressHistoryDto();
            functionalProgressHistoryDto.setIdProgressHistory(functionalProgressHistory.getIdProgressHistory());
            functionalProgressHistoryDto.setIdLecturer(functionalProgressHistory.getLecturer().getIdLecturer());
            functionalProgressHistoryDto.setNameLecturer(functionalProgressHistory.getLecturer().getNameLecturer());
            functionalProgressHistoryDto.setNameMajor(functionalProgressHistory.getLecturer().getMajor().getNameMajor());
            functionalProgressHistoryDto.setNameFaculty(functionalProgressHistory.getLecturer().getMajor().getFaculty().getNameFaculty());
            functionalProgressHistoryDto.setState(functionalProgressHistory.getState());
            listData.add(functionalProgressHistoryDto);
        }
        return listData;
    }

    @Override
    public List<FunctionalProgressHistoryDto> getHeadlectorsProgressHistory() {
        List<FunctionalProgressHistoryDto> listData = new ArrayList();
        List<FunctionalProgressHistory> listModel = functionalProgressHistoryDao.getHeadlectorsProgressHistory();
        for (FunctionalProgressHistory functionalProgressHistory : listModel){
            FunctionalProgressHistoryDto functionalProgressHistoryDto = new FunctionalProgressHistoryDto();
            functionalProgressHistoryDto.setIdProgressHistory(functionalProgressHistory.getIdProgressHistory());
            functionalProgressHistoryDto.setIdLecturer(functionalProgressHistory.getLecturer().getIdLecturer());
            functionalProgressHistoryDto.setNameLecturer(functionalProgressHistory.getLecturer().getNameLecturer());
            functionalProgressHistoryDto.setNameMajor(functionalProgressHistory.getLecturer().getMajor().getNameMajor());
            functionalProgressHistoryDto.setNameFaculty(functionalProgressHistory.getLecturer().getMajor().getFaculty().getNameFaculty());
            functionalProgressHistoryDto.setState(functionalProgressHistory.getState());
            listData.add(functionalProgressHistoryDto);
        }
        return listData;
    }

    @Override
    public List<FunctionalProgressHistoryDto> getHeadlectorsProgressHistoryByFaculty(String idFaculty) {
        List<FunctionalProgressHistoryDto> listData = new ArrayList();
        List<FunctionalProgressHistory> listModel = functionalProgressHistoryDao.getHeadlectorsProgressHistoryByFaculty(idFaculty);
        for (FunctionalProgressHistory functionalProgressHistory : listModel){
            FunctionalProgressHistoryDto functionalProgressHistoryDto = new FunctionalProgressHistoryDto();
            functionalProgressHistoryDto.setIdProgressHistory(functionalProgressHistory.getIdProgressHistory());
            functionalProgressHistoryDto.setIdLecturer(functionalProgressHistory.getLecturer().getIdLecturer());
            functionalProgressHistoryDto.setNameLecturer(functionalProgressHistory.getLecturer().getNameLecturer());
            functionalProgressHistoryDto.setNameMajor(functionalProgressHistory.getLecturer().getMajor().getNameMajor());
            functionalProgressHistoryDto.setNameFaculty(functionalProgressHistory.getLecturer().getMajor().getFaculty().getNameFaculty());
            functionalProgressHistoryDto.setState(functionalProgressHistory.getState());
            listData.add(functionalProgressHistoryDto);
        }
        return listData;
    }

    @Override
    public List<FunctionalProgressHistoryDto> getHeadlectorsProgressHistoryByMajor(String idMajor) {
        List<FunctionalProgressHistoryDto> listData = new ArrayList();
        List<FunctionalProgressHistory> listModel = functionalProgressHistoryDao.getHeadlectorsProgressHistoryByMajor(idMajor);
        for (FunctionalProgressHistory functionalProgressHistory : listModel){
            FunctionalProgressHistoryDto functionalProgressHistoryDto = new FunctionalProgressHistoryDto();
            functionalProgressHistoryDto.setIdProgressHistory(functionalProgressHistory.getIdProgressHistory());
            functionalProgressHistoryDto.setIdLecturer(functionalProgressHistory.getLecturer().getIdLecturer());
            functionalProgressHistoryDto.setNameLecturer(functionalProgressHistory.getLecturer().getNameLecturer());
            functionalProgressHistoryDto.setNameMajor(functionalProgressHistory.getLecturer().getMajor().getNameMajor());
            functionalProgressHistoryDto.setNameFaculty(functionalProgressHistory.getLecturer().getMajor().getFaculty().getNameFaculty());
            functionalProgressHistoryDto.setState(functionalProgressHistory.getState());
            listData.add(functionalProgressHistoryDto);
        }
        return listData;
    }

    @Override
    public List<FunctionalProgressHistoryDto> getProfessorProgressHistory() {
        List<FunctionalProgressHistoryDto> listData = new ArrayList();
        List<FunctionalProgressHistory> listModel = functionalProgressHistoryDao.getProfessorProgressHistory();
        for (FunctionalProgressHistory functionalProgressHistory : listModel){
            FunctionalProgressHistoryDto functionalProgressHistoryDto = new FunctionalProgressHistoryDto();
            functionalProgressHistoryDto.setIdProgressHistory(functionalProgressHistory.getIdProgressHistory());
            functionalProgressHistoryDto.setIdLecturer(functionalProgressHistory.getLecturer().getIdLecturer());
            functionalProgressHistoryDto.setNameLecturer(functionalProgressHistory.getLecturer().getNameLecturer());
            functionalProgressHistoryDto.setNameMajor(functionalProgressHistory.getLecturer().getMajor().getNameMajor());
            functionalProgressHistoryDto.setNameFaculty(functionalProgressHistory.getLecturer().getMajor().getFaculty().getNameFaculty());
            functionalProgressHistoryDto.setState(functionalProgressHistory.getState());
            listData.add(functionalProgressHistoryDto);
        }
        return listData;
    }

    @Override
    public List<FunctionalProgressHistoryDto> getProfessorProgressHistoryByFaculty(String idFaculty) {
        List<FunctionalProgressHistoryDto> listData = new ArrayList();
        List<FunctionalProgressHistory> listModel = functionalProgressHistoryDao.getProfessorProgressHistoryByFaculty(idFaculty);
        for (FunctionalProgressHistory functionalProgressHistory : listModel){
            FunctionalProgressHistoryDto functionalProgressHistoryDto = new FunctionalProgressHistoryDto();
            functionalProgressHistoryDto.setIdProgressHistory(functionalProgressHistory.getIdProgressHistory());
            functionalProgressHistoryDto.setIdLecturer(functionalProgressHistory.getLecturer().getIdLecturer());
            functionalProgressHistoryDto.setNameLecturer(functionalProgressHistory.getLecturer().getNameLecturer());
            functionalProgressHistoryDto.setNameMajor(functionalProgressHistory.getLecturer().getMajor().getNameMajor());
            functionalProgressHistoryDto.setNameFaculty(functionalProgressHistory.getLecturer().getMajor().getFaculty().getNameFaculty());
            functionalProgressHistoryDto.setState(functionalProgressHistory.getState());
            listData.add(functionalProgressHistoryDto);
        }
        return listData;
    }

    @Override
    public List<FunctionalProgressHistoryDto> getProfessorProgressHistoryByMajor(String idMajor) {
        List<FunctionalProgressHistoryDto> listData = new ArrayList();
        List<FunctionalProgressHistory> listModel = functionalProgressHistoryDao.getProfessorProgressHistoryByMajor(idMajor);
        for (FunctionalProgressHistory functionalProgressHistory : listModel){
            FunctionalProgressHistoryDto functionalProgressHistoryDto = new FunctionalProgressHistoryDto();
            functionalProgressHistoryDto.setIdProgressHistory(functionalProgressHistory.getIdProgressHistory());
            functionalProgressHistoryDto.setIdLecturer(functionalProgressHistory.getLecturer().getIdLecturer());
            functionalProgressHistoryDto.setNameLecturer(functionalProgressHistory.getLecturer().getNameLecturer());
            functionalProgressHistoryDto.setNameMajor(functionalProgressHistory.getLecturer().getMajor().getNameMajor());
            functionalProgressHistoryDto.setNameFaculty(functionalProgressHistory.getLecturer().getMajor().getFaculty().getNameFaculty());
            functionalProgressHistoryDto.setState(functionalProgressHistory.getState());
            listData.add(functionalProgressHistoryDto);
        }
        return listData;
    }
    
}
