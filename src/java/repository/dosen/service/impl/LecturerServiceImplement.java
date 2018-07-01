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
import repository.dosen.dao.GenderDao;
import repository.dosen.dao.LectureHistoryDao;
import repository.dosen.dao.LecturerDao;
import repository.dosen.dao.MajorDao;
import repository.dosen.dao.ReligionDao;
import repository.dosen.dto.Lecturer;
import repository.dosen.models.DetailFile;
import repository.dosen.models.MasterGender;
import repository.dosen.models.MasterLecturer;
import repository.dosen.models.MasterMajor;
import repository.dosen.models.MasterReligion;
import repository.dosen.models.TranFile;
import repository.dosen.models.TranLectureHistory;
import repository.dosen.service.LecturerService;

/**
 *
 * @author Jaret
 */
@Transactional
@Service
public class LecturerServiceImplement implements LecturerService{

    @Autowired
    LecturerDao lecturerDao;
    
    @Autowired
    MajorDao majorDao;
    
    @Autowired
    GenderDao genderDao;
    
    @Autowired
    ReligionDao religionDao;
    
    @Autowired
    LectureHistoryDao lectureHistoryDao;
    
    @Autowired
    FileDao fileDao;
    
    @Autowired
    DetailFileDao detailFileDao;
    
    @Override
    public Lecturer getDataLecturerForLogin(String username, String password) {
        Lecturer lecturer = new Lecturer();
        MasterLecturer masterLecturer = lecturerDao.getDataLecturerForLogin(username, password);
        if (masterLecturer == null){
            return null;
        } else {
            lecturer.setIdLecturer(masterLecturer.getIdLecturer());
            lecturer.setNameLecturer(masterLecturer.getNameLecturer());
            lecturer.setUsername(masterLecturer.getUsername());
            lecturer.setPassword(masterLecturer.getPassword());
            return lecturer;
        }
    }

    @Override
    public List<Lecturer> getLecturer() {
        List<Lecturer> listLecturer = new ArrayList<>();
        List<MasterLecturer> listMasterLecturer = lecturerDao.getLecturer();
        for (MasterLecturer masterLecturer : listMasterLecturer){
            Lecturer lecturer = new Lecturer();
            lecturer.setIdLecturer(masterLecturer.getIdLecturer());
            lecturer.setNameLecturer(masterLecturer.getNameLecturer());
            lecturer.setNameMajor(masterLecturer.getMajor().getNameMajor());
            lecturer.setNameFaculty(masterLecturer.getMajor().getFaculty().getNameFaculty());
            listLecturer.add(lecturer);
        }
        return listLecturer;
    }

    @Override
    public List<Lecturer> getLecturerByMajor(String idMajor) {
        List<Lecturer> listLecturer = new ArrayList<>();
        List<MasterLecturer> listMasterLecturer = lecturerDao.getLecturerByMajor(idMajor);
        for (MasterLecturer masterLecturer : listMasterLecturer){
            Lecturer lecturer = new Lecturer();
            lecturer.setIdLecturer(masterLecturer.getIdLecturer());
            lecturer.setNameLecturer(masterLecturer.getNameLecturer());
            lecturer.setNameMajor(masterLecturer.getMajor().getNameMajor());
            lecturer.setNameFaculty(masterLecturer.getMajor().getFaculty().getNameFaculty());
            listLecturer.add(lecturer);
        }
        return listLecturer;
    }

    @Override
    public List<Lecturer> getLecturerByNameLecturer(String nameLecturer) {
        List<Lecturer> listLecturer = new ArrayList<>();
        List<Object[]> masterLecturer = lecturerDao.getLecturerByNameLecturer(nameLecturer);
        for (Object[] object : masterLecturer){
            Lecturer lecturer = new Lecturer();
            lecturer.setIdLecturer(Integer.parseInt(object[0].toString()));
            lecturer.setNameLecturer(object[1].toString());
            MasterMajor major = majorDao.getDataMajor(object[11].toString());
            lecturer.setNameMajor(major.getNameMajor());
            lecturer.setNameFaculty(major.getFaculty().getNameFaculty());
            listLecturer.add(lecturer);
        }
        return listLecturer;
     }

    @Override
    public List<Lecturer> getLecturerByMajor(String nameLecturer, String idMajor) {
        List<Lecturer> listLecturer = new ArrayList<>();
        List<Object[]> masterLecturer = lecturerDao.getLecturerByMajor(nameLecturer, idMajor);
        for (Object[] object : masterLecturer){
            Lecturer lecturer = new Lecturer();
            lecturer.setIdLecturer(Integer.parseInt(object[0].toString()));
            lecturer.setNameLecturer(object[1].toString());
            MasterMajor major = majorDao.getDataMajor(object[11].toString());
            lecturer.setNameMajor(major.getNameMajor());
            lecturer.setNameFaculty(major.getFaculty().getNameFaculty());
            listLecturer.add(lecturer);
        }
        return listLecturer;
    }
    
    @Override
    public int saveLecturer(Lecturer lecturer) {
        MasterLecturer cekLecturer = lecturerDao.getDataLecturerByUsername(lecturer.getUsername());
        if (cekLecturer != null){
            return 1;
        } else {
            MasterLecturer masterLecturer = new MasterLecturer();
            MasterMajor masterMajor = majorDao.getDataMajor(lecturer.getIdMajor());
            MasterReligion masterReligion = religionDao.getDataReligion(lecturer.getIdReligion());
            MasterGender masterGender = genderDao.getDataGender(lecturer.getIdGender());
            masterLecturer.setIdLecturer(lecturer.getIdLecturer());
            masterLecturer.setNameLecturer(lecturer.getNameLecturer());
            masterLecturer.setAddress(lecturer.getAddress());
            masterLecturer.setBirthdate(lecturer.getBirthdate());
            masterLecturer.setBirthplace(lecturer.getBirthplace());
            masterLecturer.setEmail(lecturer.getEmail());
            masterLecturer.setNumberPhone(lecturer.getNumberPhone());
            masterLecturer.setNidn(lecturer.getNidn());
            masterLecturer.setUsername(lecturer.getUsername());
            masterLecturer.setPassword(lecturer.getPassword());
            masterLecturer.setGender(masterGender);
            masterLecturer.setReligion(masterReligion);
            masterLecturer.setMajor(masterMajor);
            lecturerDao.saveLecturer(masterLecturer);
            return 0;
        }
    }

    @Override
    public List<Lecturer> getLecturerByFaculty(String idFaculty) {
        List<Lecturer> listLecturer = new ArrayList<>();
        List<Object[]> masterLecturer = lecturerDao.getLecturerByFaculty(idFaculty);
        for (Object[] object : masterLecturer){
            Lecturer lecturer = new Lecturer();
            lecturer.setIdLecturer(Integer.parseInt(object[0].toString()));
            lecturer.setNameLecturer(object[1].toString());
            MasterMajor major = majorDao.getDataMajor(object[11].toString());
            lecturer.setNameMajor(major.getNameMajor());
            lecturer.setNameFaculty(major.getFaculty().getNameFaculty());
            listLecturer.add(lecturer);
        }
        return listLecturer;
    }

    @Override
    public List<Lecturer> getLecturerByFaculty(String nameLecturer, String idFaculty) {
        List<Lecturer> listLecturer = new ArrayList<>();
        List<Object[]> masterLecturer = lecturerDao.getLecturerByFaculty(nameLecturer, idFaculty);
        for (Object[] object : masterLecturer){
            Lecturer lecturer = new Lecturer();
            lecturer.setIdLecturer(Integer.parseInt(object[0].toString()));
            lecturer.setNameLecturer(object[1].toString());
            MasterMajor major = majorDao.getDataMajor(object[11].toString());
            lecturer.setNameMajor(major.getNameMajor());
            lecturer.setNameFaculty(major.getFaculty().getNameFaculty());
            listLecturer.add(lecturer);
        }
        return listLecturer;
    }

    @Override
    public Lecturer getDataLecturer(int idLecturer) {
        Lecturer lecturer = new Lecturer();
        MasterLecturer masterLecturer = lecturerDao.getDataLecturer(idLecturer);
        lecturer.setIdLecturer(masterLecturer.getIdLecturer());
        lecturer.setNameLecturer(masterLecturer.getNameLecturer());
        lecturer.setAddress(masterLecturer.getAddress());
        lecturer.setBirthdate(masterLecturer.getBirthdate());
        lecturer.setBirthplace(masterLecturer.getBirthplace());
        lecturer.setEmail(masterLecturer.getEmail());
        lecturer.setNumberPhone(masterLecturer.getNumberPhone());
        lecturer.setIdGender(masterLecturer.getGender().getIdGender());
        lecturer.setIdReligion(masterLecturer.getReligion().getIdReligion());
        lecturer.setNameGender(masterLecturer.getGender().getNameGender());
        lecturer.setNameReligion(masterLecturer.getReligion().getNameReligion());
        lecturer.setIdMajor(masterLecturer.getMajor().getIdMajor());
        lecturer.setNameMajor(masterLecturer.getMajor().getNameMajor());
        lecturer.setIdFaculty(masterLecturer.getMajor().getFaculty().getIdFaculty());
        lecturer.setNameFaculty(masterLecturer.getMajor().getFaculty().getNameFaculty());
        return lecturer;
    }
    
    @Override
    public List<Lecturer> getLecturerNIDN(String idFaculty, String idMajor) {
        List<Lecturer> listLecturerNidn = new ArrayList<>();
        List<Object[]> listDetail = lecturerDao.getLecturerNidn(idFaculty, idMajor);
        List<DetailFile> listDetailFile = detailFileDao.getDetailFileAssistant();
        for(Object[] object : listDetail){
            Lecturer lecturer = new Lecturer();
            List<Object[]> listFile = fileDao.getFileAssistant(Integer.parseInt(object[0].toString()));
            if (listDetailFile.size() == listFile.size()){
                lecturer.setState(1);
            } else {
                lecturer.setState(0);
            }
            lecturer.setIdLecturer(Integer.parseInt(object[0].toString()));
            lecturer.setNameLecturer(object[1].toString());
            MasterMajor major = majorDao.getDataMajor(object[11].toString());
            lecturer.setNameMajor(major.getNameMajor());
            lecturer.setNameFaculty(major.getFaculty().getNameFaculty());
            listLecturerNidn.add(lecturer);
        }
        return listLecturerNidn;
    }

    @Override
    public List<Lecturer> getLecturerAssistant(String idFaculty, String idMajor) {
        List<Lecturer> listLecturerAssistant = new ArrayList<>();
        List<Object[]> listDetail = lecturerDao.getLecturerAssistant(idFaculty, idMajor);
        List<DetailFile> listDetailFile = detailFileDao.getDetailFileLectors();
        for(Object[] object : listDetail){
            Lecturer lecturer = new Lecturer();
            List<Object[]> listFile = fileDao.getFileLectors(Integer.parseInt(object[0].toString()));
            if (listDetailFile.size() == listFile.size()){
                lecturer.setState(1);
            } else {
                lecturer.setState(0);
            }
            lecturer.setIdLecturer(Integer.parseInt(object[0].toString()));
            lecturer.setNameLecturer(object[1].toString());
            MasterMajor major = majorDao.getDataMajor(object[11].toString());
            lecturer.setNameMajor(major.getNameMajor());
            lecturer.setNameFaculty(major.getFaculty().getNameFaculty());
            listLecturerAssistant.add(lecturer);
        }
        return listLecturerAssistant;
    }

    @Override
    public List<Lecturer> getLecturerLectors(String idFaculty, String idMajor) {
        List<Lecturer> listLecturerLectors = new ArrayList<>();
        List<Object[]> listDetail = lecturerDao.getLecturerLectors(idFaculty, idMajor);
        List<DetailFile> listDetailFile = detailFileDao.getDetailFileHeadlectors();
        for(Object[] object : listDetail){
            Lecturer lecturer = new Lecturer();
            List<Object[]> listFile = fileDao.getFileHeadlectors(Integer.parseInt(object[0].toString()));
            if (listDetailFile.size() == listFile.size()){
                lecturer.setState(1);
            } else {
                lecturer.setState(0);
            }
            lecturer.setIdLecturer(Integer.parseInt(object[0].toString()));
            lecturer.setNameLecturer(object[1].toString());
            MasterMajor major = majorDao.getDataMajor(object[11].toString());
            lecturer.setNameMajor(major.getNameMajor());
            lecturer.setNameFaculty(major.getFaculty().getNameFaculty());
            listLecturerLectors.add(lecturer);
        }
        return listLecturerLectors;
    }

    @Override
    public List<Lecturer> getLecturerHeadLectors(String idFaculty, String idMajor) {
        List<Lecturer> listLecturerHeadLectors = new ArrayList<>();
        List<Object[]> listDetail = lecturerDao.getLecturerHeadlectors(idFaculty, idMajor);
        List<DetailFile> listDetailFile = detailFileDao.getDetailFileProfessor();
        for(Object[] object : listDetail){
            Lecturer lecturer = new Lecturer();
            List<Object[]> listFile = fileDao.getFileProfessor(Integer.parseInt(object[0].toString()));
            if (listDetailFile.size() == listFile.size()){
                lecturer.setState(1);
            } else {
                lecturer.setState(0);
            }
            lecturer.setIdLecturer(Integer.parseInt(object[0].toString()));
            lecturer.setNameLecturer(object[1].toString());
            MasterMajor major = majorDao.getDataMajor(object[11].toString());
            lecturer.setNameMajor(major.getNameMajor());
            lecturer.setNameFaculty(major.getFaculty().getNameFaculty());
            listLecturerHeadLectors.add(lecturer);
        }
        return listLecturerHeadLectors;
    }

    @Override
    public List<Lecturer> getLecturerProfessor(String idFaculty, String idMajor) {
        List<Lecturer> listLecturerProfessor = new ArrayList<>();
        List<Object[]> listDetail = lecturerDao.getLecturerProfessor(idFaculty, idMajor);
        for(Object[] list : listDetail){
            Lecturer Dto = new Lecturer();
            Dto.setIdLecturer(Integer.parseInt(list[0].toString()));
            Dto.setNameLecturer(list[1].toString());
            Dto.setIdGender(Integer.parseInt(list[10].toString()));
            listLecturerProfessor.add(Dto);
        }
        return listLecturerProfessor;
    }

    @Override
    public List<Lecturer> getLecturerSertification(String idFaculty, String idMajor) {
        List<Lecturer> listLecturerSertification = new ArrayList<>();
        List<Object[]> listDetail = lecturerDao.getLecturerSertification(idFaculty, idMajor);
        for(Object[] list : listDetail){
            Lecturer Dto = new Lecturer();
            Dto.setIdLecturer(Integer.parseInt(list[0].toString()));
            Dto.setNameLecturer(list[1].toString());
            Dto.setIdGender(Integer.parseInt(list[10].toString()));
            listLecturerSertification.add(Dto);
        }
        return listLecturerSertification;
    }

    @Override
    public List<Lecturer> getNewLecturer(String idFaculty, String idMajor) {
        List<Lecturer> listNewLeturer = new ArrayList<>();
        List<Object[]> listDetail = lecturerDao.getNewLecturer(idFaculty, idMajor);
        List<DetailFile> listDetailFile = detailFileDao.getDetailFileNidn();
        for(Object[] object : listDetail){
            Lecturer lecturer = new Lecturer();
            TranLectureHistory tranLectureHistoryMax = lectureHistoryDao.getMaxLectureHistory(Integer.parseInt(object[0].toString()));
            TranLectureHistory tranLectureHistoryMin = lectureHistoryDao.getMinLectureHistory(Integer.parseInt(object[0].toString()));
            if (tranLectureHistoryMax == null || tranLectureHistoryMin == null){
                lecturer.setState(0);
            } else {
                if ((tranLectureHistoryMax.getYear() - tranLectureHistoryMin.getYear()) >= 2){
                    List<Object[]> listFile = fileDao.getFileNidn(Integer.parseInt(object[0].toString()));
                    if (listFile == null) {
                        lecturer.setState(1);
                    } else {
                        if (listDetailFile.size() == listFile.size()){
                            lecturer.setState(2);
                        } else {
                            lecturer.setState(1);
                        }
                    }
                } else {
                    lecturer.setState(0);
                }
            }
            lecturer.setIdLecturer(Integer.parseInt(object[0].toString()));
            lecturer.setNameLecturer(object[1].toString());
            MasterMajor major = majorDao.getDataMajor(object[11].toString());
            lecturer.setNameMajor(major.getNameMajor());
            lecturer.setNameFaculty(major.getFaculty().getNameFaculty());
            listNewLeturer.add(lecturer);
        }
        return listNewLeturer;
    }
    
}
