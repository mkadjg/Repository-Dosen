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
import repository.dosen.dao.LectureDao;
import repository.dosen.dao.LectureHistoryDao;
import repository.dosen.dao.LecturerDao;
import repository.dosen.dto.LectureHistory;
import repository.dosen.models.MasterLecture;
import repository.dosen.models.MasterLecturer;
import repository.dosen.models.TranFile;
import repository.dosen.models.TranLectureHistory;
import repository.dosen.service.LectureHistoryService;

/**
 *
 * @author Jaret
 */
@Transactional
@Service
public class LectureHistoryServiceImplement implements LectureHistoryService{

    @Autowired
    LectureDao lectureDao;
    
    @Autowired
    LecturerDao lecturerDao;
    
    @Autowired
    FileDao fileDao;
    
    @Autowired
    DetailFileDao detailFileDao;
    
    @Autowired
    LectureHistoryDao lectureHistoryDao;
    
    @Override
    public void saveLectureHistory(LectureHistory lectureHistory) {
        TranLectureHistory tranLectureHistory = new TranLectureHistory();
        MasterLecture masterLecture = lectureDao.getDataLectureByName(lectureHistory.getNameLecture());
        MasterLecturer masterLecturer = lecturerDao.getDataLecturer(lectureHistory.getIdLecturer());
        TranFile tranFile = fileDao.getLastDataFile();
        tranLectureHistory.setIdLectureHistory(lectureHistory.getIdLectureHistory());
        tranLectureHistory.setYear(lectureHistory.getYear());
        tranLectureHistory.setSemester(lectureHistory.getSemester());
        tranLectureHistory.setLecturer(masterLecturer);
        tranLectureHistory.setTranFile(tranFile);
        tranLectureHistory.setLecture(masterLecture);
        lectureHistoryDao.saveLectureHistory(tranLectureHistory);
    }

    @Override
    public List<LectureHistory> getLectureHistory(int idLecturer) {
        List<LectureHistory> listLectureHistory = new ArrayList<>();
        List<TranLectureHistory> listTranLectureHistory = lectureHistoryDao.getLectureHistory(idLecturer);
        for (TranLectureHistory tranLectureHistory : listTranLectureHistory){
            LectureHistory lectureHistory = new LectureHistory();
            lectureHistory.setIdLectureHistory(tranLectureHistory.getIdLectureHistory());
            lectureHistory.setIdTranFile(tranLectureHistory.getTranFile().getIdTranFile());
            lectureHistory.setIdDetail(tranLectureHistory.getTranFile().getDetail().getIdDetail());
            lectureHistory.setNameDokumen(tranLectureHistory.getTranFile().getDetail().getNameDokumen());
            lectureHistory.setNameLecture(tranLectureHistory.getLecture().getNameLecture());
            lectureHistory.setIdLecturer(tranLectureHistory.getLecturer().getIdLecturer());
            lectureHistory.setPathFile(tranLectureHistory.getTranFile().getNameFile());
            lectureHistory.setSemester(tranLectureHistory.getSemester());
            lectureHistory.setYear(tranLectureHistory.getYear());
            listLectureHistory.add(lectureHistory);
        }
        return listLectureHistory;
    }

    @Override
    public void deleteLectureHistory(int idLectureHistory) {
        TranLectureHistory tranLectureHistory = new TranLectureHistory();
        tranLectureHistory.setIdLectureHistory(idLectureHistory);
        lectureHistoryDao.deleteLectureHistory(tranLectureHistory);
    }

    @Override
    public List<LectureHistory> searchLectureHistory(String nameLecture) {
        List<LectureHistory> listLectureHistory = new ArrayList<>();
        List<Object[]> listModel = lectureHistoryDao.serachLectureHistory(nameLecture);
        for (Object[] tranLectureHistory : listModel){
            LectureHistory lectureHistory = new LectureHistory();
            lectureHistory.setIdLectureHistory(Integer.parseInt(tranLectureHistory[0].toString()));
            lectureHistory.setIdTranFile(Integer.parseInt(tranLectureHistory[4].toString()));
            TranFile tranFile = fileDao.getDataFile(Integer.parseInt(tranLectureHistory[4].toString()));
            lectureHistory.setIdDetail(tranFile.getDetail().getIdDetail());
            MasterLecture masterLecture = lectureDao.getDataLecture(tranLectureHistory[5].toString());
            lectureHistory.setNameLecture(masterLecture.getNameLecture());
            lectureHistory.setIdLecturer(Integer.parseInt(tranLectureHistory[3].toString()));
            lectureHistory.setPathFile(tranFile.getNameFile());
            lectureHistory.setSemester(tranLectureHistory[1].toString());
            lectureHistory.setYear(Integer.parseInt(tranLectureHistory[2].toString()));
            listLectureHistory.add(lectureHistory);
        }
        return listLectureHistory;
    }

    @Override
    public void deleteAllLectureHistory(int idLecturer) {
        lectureHistoryDao.deleteAllLectureHistory(idLecturer);
    }
    
}
