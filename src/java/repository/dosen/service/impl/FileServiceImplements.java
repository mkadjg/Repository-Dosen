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
import repository.dosen.dto.FileDto;
import repository.dosen.models.DetailFile;
import repository.dosen.models.MasterLecturer;
import repository.dosen.models.TranFile;
import repository.dosen.service.FileService;


/**
 *
 * @author sandi
 */
@Transactional
@Service
public class FileServiceImplements implements FileService {

    @Autowired
    LecturerDao lecturerDao;
    
    @Autowired
    FileDao fileDao;
    
    @Autowired
    DetailFileDao detailFileDao;
    
    @Override
    public void saveFile(FileDto fileDto) {
        TranFile tranFile = new TranFile();
        MasterLecturer masterLecturer = lecturerDao.getDataLecturer(fileDto.getIdLecturer());
        DetailFile detailFile = detailFileDao.getDataDetailFile(fileDto.getIdDetail());
        tranFile.setIdTranFile(fileDto.getIdTranFile());
        tranFile.setState(fileDto.getState());
        tranFile.setInformation(fileDto.getInformation());
        tranFile.setIdFunctional(fileDto.getIdFunctional());
        tranFile.setNameFile(fileDto.getNameFile());
        tranFile.setLecturer(masterLecturer);
        tranFile.setDetail(detailFile);
        fileDao.saveFile(tranFile);
    }

    @Override
    public List<FileDto> getFile(int idLecturer) {
        List<FileDto> listFile = new ArrayList<>();
        List<TranFile> listTranFile = fileDao.getFile(idLecturer);
        for (TranFile tranFile : listTranFile){
            FileDto fileDto = new FileDto();
            fileDto.setIdTranFile(tranFile.getIdTranFile());
            fileDto.setNameDokumen(tranFile.getDetail().getNameDokumen());
            fileDto.setNameFile(tranFile.getNameFile());
            listFile.add(fileDto);
        }
        return listFile;
    }

    @Override
    public void deleteFile(int idTranFile) {
        TranFile tranFile = new TranFile();
        tranFile.setIdTranFile(idTranFile);
        fileDao.deleteFile(tranFile);
    }

    @Override
    public List<FileDto> searchFile(String nameDokumen) {
        List<FileDto> listFile = new ArrayList<>();
        List<Object[]> listModel = fileDao.searchFile(nameDokumen);
        for (Object[] tranFile : listModel){
            FileDto fileDto = new FileDto();
            fileDto.setIdTranFile(Integer.parseInt(tranFile[0].toString()));
            DetailFile detailFile = detailFileDao.getDataDetailFile(Integer.parseInt(tranFile[6].toString()));
            fileDto.setNameDokumen(detailFile.getNameDokumen());
            fileDto.setNameFile(tranFile[2].toString());
            listFile.add(fileDto);
        }
        return listFile;
    }

    @Override
    public List<FileDto> getFileRecruitment(int idLecturer) {
        List<FileDto> listFileRecruitment = new ArrayList<>();
        List<DetailFile> listDetail = detailFileDao.getDetailFileRecruitment();
        List<Object[]> listFile = fileDao.getFileRecruitment(idLecturer);
        for (int i = 0; i < listDetail.size(); i++){
            FileDto fileDto = new FileDto();
            if (i > (listFile.size() - 1)){
                fileDto.setIdTranFile(0);
                fileDto.setState(0);
            } else {
                fileDto.setIdTranFile(Integer.parseInt(listFile.get(i)[0].toString()));
                fileDto.setState(Integer.parseInt(listFile.get(i)[1].toString()));
            }
            fileDto.setIdDetail(listDetail.get(i).getIdDetail());
            fileDto.setNameDokumen(listDetail.get(i).getNameDokumen());
            listFileRecruitment.add(fileDto);
        }
        return listFileRecruitment;
     }
}
