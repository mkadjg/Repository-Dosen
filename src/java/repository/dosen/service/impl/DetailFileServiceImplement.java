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
import repository.dosen.dto.DetailFileDto;
import repository.dosen.models.DetailFile;
import repository.dosen.service.DetailFileService;

/**
 *
 * @author Jaret
 */
@Transactional
@Service
public class DetailFileServiceImplement implements DetailFileService{
    
    @Autowired
    DetailFileDao detailFileDao;
    
    @Autowired
    FileDao fileDao;
    
    @Override
    public List<DetailFileDto> getDetailFileRecruitment() {
        List<DetailFileDto> listDetailFile = new ArrayList<>();
        List<DetailFile> listDetailModel =  detailFileDao.getDetailFileRecruitment();
        for (DetailFile detailFile : listDetailModel){
            DetailFileDto detailFileDto = new DetailFileDto();
            detailFileDto.setIdDetail(detailFile.getIdDetail());
            detailFileDto.setNameDokumen(detailFile.getNameDokumen());
            listDetailFile.add(detailFileDto);
        }
        return listDetailFile;
    }

    @Override
    public List<DetailFileDto> getDetailFileNidn() {
        List<DetailFileDto> listDetailFile = new ArrayList<>();
        List<DetailFile> listDetailModel =  detailFileDao.getDetailFileNidn();
        for (DetailFile detailFile : listDetailModel){
            DetailFileDto detailFileDto = new DetailFileDto();
            detailFileDto.setIdDetail(detailFile.getIdDetail());
            detailFileDto.setNameDokumen(detailFile.getNameDokumen());
            listDetailFile.add(detailFileDto);
        }
        return listDetailFile;
    }

    @Override
    public List<DetailFileDto> getDetailFileAssistant() {
        List<DetailFileDto> listDetailFile = new ArrayList<>();
        List<DetailFile> listDetailModel =  detailFileDao.getDetailFileAssistant();
        for (DetailFile detailFile : listDetailModel){
            DetailFileDto detailFileDto = new DetailFileDto();
            detailFileDto.setIdDetail(detailFile.getIdDetail());
            detailFileDto.setNameDokumen(detailFile.getNameDokumen());
            listDetailFile.add(detailFileDto);
        }
        return listDetailFile;
    }

    @Override
    public List<DetailFileDto> getDetailFileLectors() {
        List<DetailFileDto> listDetailFile = new ArrayList<>();
        List<DetailFile> listDetailModel =  detailFileDao.getDetailFileLectors();
        for (DetailFile detailFile : listDetailModel){
            DetailFileDto detailFileDto = new DetailFileDto();
            detailFileDto.setIdDetail(detailFile.getIdDetail());
            detailFileDto.setNameDokumen(detailFile.getNameDokumen());
            listDetailFile.add(detailFileDto);
        }
        return listDetailFile;
    }

    @Override
    public List<DetailFileDto> getDetailFileHeadlectors() {
        List<DetailFileDto> listDetailFile = new ArrayList<>();
        List<DetailFile> listDetailModel =  detailFileDao.getDetailFileHeadlectors();
        for (DetailFile detailFile : listDetailModel){
            DetailFileDto detailFileDto = new DetailFileDto();
            detailFileDto.setIdDetail(detailFile.getIdDetail());
            detailFileDto.setNameDokumen(detailFile.getNameDokumen());
            listDetailFile.add(detailFileDto);
        }
        return listDetailFile;
    }

    @Override
    public List<DetailFileDto> getDetailFileProfessor() {
        List<DetailFileDto> listDetailFile = new ArrayList<>();
        List<DetailFile> listDetailModel =  detailFileDao.getDetailFileProfessor();
        for (DetailFile detailFile : listDetailModel){
            DetailFileDto detailFileDto = new DetailFileDto();
            detailFileDto.setIdDetail(detailFile.getIdDetail());
            detailFileDto.setNameDokumen(detailFile.getNameDokumen());
            listDetailFile.add(detailFileDto);
        }
        return listDetailFile;
    }

    @Override
    public List<DetailFileDto> getDetailFileSertification() {
        List<DetailFileDto> listDetailFile = new ArrayList<>();
        List<DetailFile> listDetailModel =  detailFileDao.getDetailFileSertification();
        for (DetailFile detailFile : listDetailModel){
            DetailFileDto detailFileDto = new DetailFileDto();
            detailFileDto.setIdDetail(detailFile.getIdDetail());
            detailFileDto.setNameDokumen(detailFile.getNameDokumen());
            listDetailFile.add(detailFileDto);
        }
        return listDetailFile;
    }

    @Override
    public void saveDetailFile(DetailFileDto detailFileDto) {
        DetailFile detailFile = new DetailFile();
        detailFile.setIdDetail(detailFileDto.getIdDetail());
        detailFile.setNameDokumen(detailFileDto.getNameDokumen());
        detailFile.setIdEvent(detailFileDto.getIdEvent());
        detailFileDao.saveDetailFile(detailFile);
    }

    @Override
    public void deleteDetailFile(int idDetail) {
        DetailFile detailFile = new DetailFile();
        detailFile.setIdDetail(idDetail);
        fileDao.deleteFileById(idDetail);
        detailFileDao.deleteDetailFile(detailFile);
    }

    @Override
    public List<DetailFileDto> searchDetailFile(String nameDokumen, int idEvent) {
        List<DetailFileDto> listDetail = new ArrayList<>();
        List<Object[]> listDetailModel = detailFileDao.searchDetailFile(nameDokumen, idEvent);
        for (Object[] object : listDetailModel){
            DetailFileDto detailFileDto = new DetailFileDto();
            detailFileDto.setIdDetail(Integer.parseInt(object[0].toString()));
            detailFileDto.setNameDokumen(object[1].toString());
            detailFileDto.setIdEvent(Integer.parseInt(object[2].toString()));
            listDetail.add(detailFileDto);
        }
        return listDetail;
    }

    @Override
    public List<DetailFileDto> searchDetailFile(String nameDokumen) {
        List<DetailFileDto> listDetail = new ArrayList<>();
        List<Object[]> listDetailModel = detailFileDao.searchDetailFile(nameDokumen);
        for (Object[] object : listDetailModel){
            DetailFileDto detailFileDto = new DetailFileDto();
            detailFileDto.setIdDetail(Integer.parseInt(object[0].toString()));
            detailFileDto.setNameDokumen(object[1].toString());
            detailFileDto.setIdEvent(Integer.parseInt(object[2].toString()));
            listDetail.add(detailFileDto);
        }
        return listDetail;
    }

    @Override
    public List<DetailFileDto> getDetailFileHistoryLecture() {
        List<DetailFileDto> listDetailFile = new ArrayList<>();
        List<DetailFile> listDetailModel =  detailFileDao.getDetailFileHistoryLecture();
        for (DetailFile detailFile : listDetailModel){
            DetailFileDto detailFileDto = new DetailFileDto();
            detailFileDto.setIdDetail(detailFile.getIdDetail());
            detailFileDto.setNameDokumen(detailFile.getNameDokumen());
            listDetailFile.add(detailFileDto);
        }
        return listDetailFile;
    }

    @Override
    public List<DetailFileDto> getDetailFileHistoryStudy() {
        List<DetailFileDto> listDetailFile = new ArrayList<>();
        List<DetailFile> listDetailModel =  detailFileDao.getDetailFileHistoryStudy();
        for (DetailFile detailFile : listDetailModel){
            DetailFileDto detailFileDto = new DetailFileDto();
            detailFileDto.setIdDetail(detailFile.getIdDetail());
            detailFileDto.setNameDokumen(detailFile.getNameDokumen());
            listDetailFile.add(detailFileDto);
        }
        return listDetailFile;
    }

    @Override
    public List<DetailFileDto> getDetailFileHistoryFunctional() {
        List<DetailFileDto> listDetailFile = new ArrayList<>();
        List<DetailFile> listDetailModel =  detailFileDao.getDetailFileHistoryFunctional();
        for (DetailFile detailFile : listDetailModel){
            DetailFileDto detailFileDto = new DetailFileDto();
            detailFileDto.setIdDetail(detailFile.getIdDetail());
            detailFileDto.setNameDokumen(detailFile.getNameDokumen());
            listDetailFile.add(detailFileDto);
        }
        return listDetailFile;
    }

    @Override
    public List<DetailFileDto> getDetailFileHistorySertification() {
        List<DetailFileDto> listDetailFile = new ArrayList<>();
        List<DetailFile> listDetailModel =  detailFileDao.getDetailFileHistorySertification();
        for (DetailFile detailFile : listDetailModel){
            DetailFileDto detailFileDto = new DetailFileDto();
            detailFileDto.setIdDetail(detailFile.getIdDetail());
            detailFileDto.setNameDokumen(detailFile.getNameDokumen());
            listDetailFile.add(detailFileDto);
        }
        return listDetailFile;
    }
    
}
