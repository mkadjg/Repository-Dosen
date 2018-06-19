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
import repository.dosen.dao.LecturerDao;
import repository.dosen.dao.StudyDao;
import repository.dosen.dao.StudyHistoryDao;
import repository.dosen.dto.StudyHistory;
import repository.dosen.models.MasterLecturer;
import repository.dosen.models.MasterStudy;
import repository.dosen.models.TranFile;
import repository.dosen.models.TranStudyHistory;
import repository.dosen.service.StudyHistoryService;

/**
 *
 * @author Jaret
 */
@Transactional
@Service
public class StudyHistoryServiceImplement implements StudyHistoryService{

    @Autowired
    StudyDao studyDao;
    
    @Autowired
    LecturerDao lecturerDao;
    
    @Autowired
    FileDao fileDao;
    
    @Autowired
    DetailFileDao detailFileDao;
    
    @Autowired
    StudyHistoryDao studyHistoryDao;
    
    @Override
    public void saveStudyHistory(StudyHistory studyHistory) {
        TranStudyHistory tranStudyHistory = new TranStudyHistory();
        MasterLecturer masterLecturer = lecturerDao.getDataLecturer(studyHistory.getIdLecturer());
        MasterStudy masterStudy = studyDao.getDataStudy(studyHistory.getIdStudy());
        TranFile tranFile = fileDao.getLastDataFile();
        tranStudyHistory.setIdStudyHistory(studyHistory.getIdStudyHistory());
        tranStudyHistory.setLecturer(masterLecturer);
        tranStudyHistory.setTranFile(tranFile);
        tranStudyHistory.setNameUniversity(studyHistory.getNameUniversity());
        tranStudyHistory.setStudyProgram(studyHistory.getStudyProgram());
        tranStudyHistory.setJoinYear(studyHistory.getJoinYear());
        tranStudyHistory.setGraduateYear(studyHistory.getGraduateYear());
        tranStudyHistory.setDegree(studyHistory.getDegree());
        tranStudyHistory.setStudy(masterStudy);
        studyHistoryDao.saveStudyHistory(tranStudyHistory);
    }

    @Override
    public List<StudyHistory> getStudyHistory(int idLecturer) {
        List<StudyHistory> listStudyHistory = new ArrayList<>();
        List<TranStudyHistory> listTranStudyHistory = studyHistoryDao.getStudyHistory(idLecturer);
        for (TranStudyHistory tranStudyHistory : listTranStudyHistory){
            StudyHistory studyHistory = new StudyHistory();
            studyHistory.setIdStudyHistory(tranStudyHistory.getIdStudyHistory());
            studyHistory.setIdLecturer(tranStudyHistory.getLecturer().getIdLecturer());
            studyHistory.setIdTranFile(tranStudyHistory.getTranFile().getIdTranFile());
            studyHistory.setIdDetail(tranStudyHistory.getTranFile().getDetail().getIdDetail());
            studyHistory.setIdStudy(tranStudyHistory.getStudy().getIdStudy());
            studyHistory.setNameUniversity(tranStudyHistory.getNameUniversity());
            studyHistory.setDegree(tranStudyHistory.getDegree());
            studyHistory.setStudyProgram(tranStudyHistory.getStudyProgram());
            studyHistory.setStudyDescription(tranStudyHistory.getStudy().getStudyDescription());
            studyHistory.setJoinYear(tranStudyHistory.getJoinYear());
            studyHistory.setGraduateYear(tranStudyHistory.getGraduateYear());
            listStudyHistory.add(studyHistory);
        }
        return listStudyHistory;
    }

    @Override
    public void deleteStudyHistory(int idStudyHistory) {
        TranStudyHistory tranStudyHistory = new TranStudyHistory();
        tranStudyHistory.setIdStudyHistory(idStudyHistory);
        studyHistoryDao.deleteStudyHistory(tranStudyHistory);
    }

    @Override
    public List<StudyHistory> searchStudyHistory(String nameStudy) {
        List<StudyHistory> listStudyHistory = new ArrayList<>();
        List<Object[]> listModel = studyHistoryDao.serachStudyHistory(nameStudy);
        for (Object[] tranStudyHistory : listModel){
            StudyHistory studyHistory = new StudyHistory();
            studyHistory.setIdStudyHistory(Integer.parseInt(tranStudyHistory[0].toString()));
            studyHistory.setIdLecturer(Integer.parseInt(tranStudyHistory[6].toString()));
            studyHistory.setIdTranFile(Integer.parseInt(tranStudyHistory[8].toString()));
            studyHistory.setIdStudy(Integer.parseInt(tranStudyHistory[7].toString()));
            MasterStudy masterStudy = studyDao.getDataStudy(Integer.parseInt(tranStudyHistory[7].toString()));
            studyHistory.setStudyDescription(masterStudy.getStudyDescription());
            studyHistory.setNameUniversity(tranStudyHistory[1].toString());
            studyHistory.setDegree(tranStudyHistory[2].toString());
            studyHistory.setStudyProgram(tranStudyHistory[4].toString());
            studyHistory.setJoinYear(Integer.parseInt(tranStudyHistory[3].toString()));
            studyHistory.setGraduateYear(Integer.parseInt(tranStudyHistory[5].toString()));
            listStudyHistory.add(studyHistory);
        }
        return listStudyHistory;
    }
    
}
