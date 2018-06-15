/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import repository.dosen.dao.LectureDao;
import repository.dosen.dao.LecturerDao;
import repository.dosen.dto.LectureHistory;
import repository.dosen.models.MasterLecture;
import repository.dosen.models.MasterLecturer;
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
    
    @Override
    public void saveLectureHistory(LectureHistory lectureHistory) {
        TranLectureHistory tranLectureHistory = new TranLectureHistory();
        MasterLecture masterLecture = lectureDao.getDataLectureByName(lectureHistory.getNameLecture());
        MasterLecturer masterLecturer = lecturerDao.getDataLecturer(lectureHistory.getIdLecturer());
        tranLectureHistory.setIdLectureHistory(lectureHistory.getIdLectureHistory());
        tranLectureHistory.setYear(lectureHistory.getYear());
        tranLectureHistory.setIdLectureHistory(lectureHistory.getIdLectureHistory());
    }
    
}
