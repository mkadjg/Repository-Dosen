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
import repository.dosen.dao.FileDao;
import repository.dosen.dao.LectureDao;
import repository.dosen.dao.LectureHistoryDao;
import repository.dosen.dto.Lecture;
import repository.dosen.models.MasterLecture;
import repository.dosen.models.TranFile;
import repository.dosen.service.LectureService;

/**
 *
 * @author sandi
 */
@Service
@Transactional
public class LectureServiceImplement implements LectureService {
    
    @Autowired
    LectureDao lectureDao;
    
    @Autowired
    FileDao fileDao;
    
    @Autowired
    LectureHistoryDao lectureHistoryDao;
    
    @Override
    public List<Lecture> getLecture() {
        List<Lecture> listLecture = new ArrayList<>();
        List<MasterLecture> listMasterLecture = lectureDao.getLecture();
        
        for (MasterLecture masterLecture : listMasterLecture){
            Lecture lecture = new Lecture();
            lecture.setIdLecture(masterLecture.getIdLecture());
            lecture.setNameLecture(masterLecture.getNameLecture());
            listLecture.add(lecture);
        }
        return listLecture;
    }

    @Override
    public Lecture getDataLecture(String id) {
        Lecture lecture = new Lecture();
        MasterLecture masterLecture = lectureDao.getDataLecture(id);
        lecture.setIdLecture(masterLecture.getIdLecture());
        lecture.setNameLecture(masterLecture.getNameLecture());
        return lecture;
    }

    @Override
    public void saveLecture(Lecture lecture) {
        MasterLecture masterLecture = new MasterLecture();
        masterLecture.setIdLecture(lecture.getIdLecture());
        masterLecture.setNameLecture(lecture.getNameLecture());
        lectureDao.saveLecture(masterLecture);
    }

    @Override
    public void deleteLecture(String id) {
        MasterLecture masterLecture = lectureDao.getDataLecture(id);
        List<Object[]> listData = fileDao.getFileByLecture(id);
        if (listData != null){
            for (Object[] object : listData){
                TranFile tranFile = new TranFile();
                tranFile.setIdTranFile(Integer.parseInt(object[0].toString()));
                fileDao.deleteFile(tranFile);
            }
            lectureHistoryDao.deleteLectureHistoryById(id);
        }
        lectureDao.deleteLecture(masterLecture);
    }

    @Override
    public List<Lecture> searchLecture(String nameLecture) {
        List<Lecture> listLecture = new ArrayList<>();
        List<Object[]> masterLecture = lectureDao.searchLecture(nameLecture);
        for (Object[] object : masterLecture){
            Lecture lecture = new Lecture();
            lecture.setIdLecture(object[0].toString());
            lecture.setNameLecture(object[1].toString());
            listLecture.add(lecture);
        }
        return listLecture;
    }
}
