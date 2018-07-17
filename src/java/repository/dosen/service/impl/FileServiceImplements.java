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
            for (int x = 0; x < listFile.size(); x++){
                if(listDetail.get(i).getIdDetail() == Integer.parseInt(listFile.get(x)[6].toString())){
                    fileDto.setIdTranFile(Integer.parseInt(listFile.get(x)[0].toString()));
                    fileDto.setState(Integer.parseInt(listFile.get(x)[1].toString()));
                    break;
                }else{
                    fileDto.setIdTranFile(0);
                    fileDto.setState(0);
                }
            }
            fileDto.setIdDetail(listDetail.get(i).getIdDetail());
            fileDto.setNameDokumen(listDetail.get(i).getNameDokumen());
            listFileRecruitment.add(fileDto);
        }
        return listFileRecruitment;
     }

    @Override
    public List<FileDto> getFileNidn(int idLecturer) {
        List<FileDto> listFileNidn = new ArrayList<>();
        List<DetailFile> listDetail = detailFileDao.getDetailFileNidn();
        List<Object[]> listFile = fileDao.getFileNidn(idLecturer);
        for (int i = 0; i < listDetail.size(); i++){
            FileDto fileDto = new FileDto();
            for (int x = 0; x < listFile.size(); x++){
                if(listDetail.get(i).getIdDetail() == Integer.parseInt(listFile.get(x)[6].toString())){
                    fileDto.setIdTranFile(Integer.parseInt(listFile.get(x)[0].toString()));
                    fileDto.setState(Integer.parseInt(listFile.get(x)[1].toString()));
                    break;
                }else{
                    fileDto.setIdTranFile(0);
                    fileDto.setState(0);
                }
            }
            fileDto.setIdDetail(listDetail.get(i).getIdDetail());
            fileDto.setNameDokumen(listDetail.get(i).getNameDokumen());
            listFileNidn.add(fileDto);
        }
        return listFileNidn;
    }

    @Override
    public List<FileDto> getFileAssistant(int idLecturer) {
        List<FileDto> listFileAssistant = new ArrayList<>();
        List<DetailFile> listDetail = detailFileDao.getDetailFileAssistant();
        List<Object[]> listFile = fileDao.getFileAssistant(idLecturer);
        for (int i = 0; i < listDetail.size(); i++){
            FileDto fileDto = new FileDto();
            for (int x = 0; x < listFile.size(); x++){
                if(listDetail.get(i).getIdDetail() == Integer.parseInt(listFile.get(x)[6].toString())){
                    fileDto.setIdTranFile(Integer.parseInt(listFile.get(x)[0].toString()));
                    fileDto.setState(Integer.parseInt(listFile.get(x)[1].toString()));
                    break;
                }else{
                    fileDto.setIdTranFile(0);
                    fileDto.setState(0);
                }
            }
            fileDto.setIdDetail(listDetail.get(i).getIdDetail());
            fileDto.setNameDokumen(listDetail.get(i).getNameDokumen());
            listFileAssistant.add(fileDto);
        }
        return listFileAssistant;
    }

    @Override
    public List<FileDto> getFileLectors(int idLecturer) {
        List<FileDto> listFileLectors = new ArrayList<>();
        List<DetailFile> listDetail = detailFileDao.getDetailFileLectors();
        List<Object[]> listFile = fileDao.getFileLectors(idLecturer);
        for (int i = 0; i < listDetail.size(); i++){
            FileDto fileDto = new FileDto();
            for (int x = 0; x < listFile.size(); x++){
                if(listDetail.get(i).getIdDetail() == Integer.parseInt(listFile.get(x)[6].toString())){
                    fileDto.setIdTranFile(Integer.parseInt(listFile.get(x)[0].toString()));
                    fileDto.setState(Integer.parseInt(listFile.get(x)[1].toString()));
                    break;
                }else{
                    fileDto.setIdTranFile(0);
                    fileDto.setState(0);
                }
            }
            fileDto.setIdDetail(listDetail.get(i).getIdDetail());
            fileDto.setNameDokumen(listDetail.get(i).getNameDokumen());
            listFileLectors.add(fileDto);
        }
        return listFileLectors;
    }

    @Override
    public List<FileDto> getFileHeadlectors(int idLecturer) {
        List<FileDto> listFileHeadlectors = new ArrayList<>();
        List<DetailFile> listDetail = detailFileDao.getDetailFileHeadlectors();
        List<Object[]> listFile = fileDao.getFileHeadlectors(idLecturer);
        for (int i = 0; i < listDetail.size(); i++){
            FileDto fileDto = new FileDto();
            for (int x = 0; x < listFile.size(); x++){
                if(listDetail.get(i).getIdDetail() == Integer.parseInt(listFile.get(x)[6].toString())){
                    fileDto.setIdTranFile(Integer.parseInt(listFile.get(x)[0].toString()));
                    fileDto.setState(Integer.parseInt(listFile.get(x)[1].toString()));
                    break;
                }else{
                    fileDto.setIdTranFile(0);
                    fileDto.setState(0);
                }
            }
            fileDto.setIdDetail(listDetail.get(i).getIdDetail());
            fileDto.setNameDokumen(listDetail.get(i).getNameDokumen());
            listFileHeadlectors.add(fileDto);
        }
        return listFileHeadlectors;
    }

    @Override
    public List<FileDto> getFileProfessor(int idLecturer) {
        List<FileDto> listFileProfessor = new ArrayList<>();
        List<DetailFile> listDetail = detailFileDao.getDetailFileProfessor();
        List<Object[]> listFile = fileDao.getFileProfessor(idLecturer);
        for (int i = 0; i < listDetail.size(); i++){
            FileDto fileDto = new FileDto();
            for (int x = 0; x < listFile.size(); x++){
                if(listDetail.get(i).getIdDetail() == Integer.parseInt(listFile.get(x)[6].toString())){
                    fileDto.setIdTranFile(Integer.parseInt(listFile.get(x)[0].toString()));
                    fileDto.setState(Integer.parseInt(listFile.get(x)[1].toString()));
                    break;
                }else{
                    fileDto.setIdTranFile(0);
                    fileDto.setState(0);
                }
            }
            fileDto.setIdDetail(listDetail.get(i).getIdDetail());
            fileDto.setNameDokumen(listDetail.get(i).getNameDokumen());
            listFileProfessor.add(fileDto);
        }
        return listFileProfessor;
    }

    @Override
    public void deleteAllFile(int idLecturer) {
        fileDao.deleteAllFile(idLecturer);
    }

    @Override
    public FileDto getPathPhoto(int idLecturer) {
        TranFile tranFile = fileDao.getPathPhoto(idLecturer);
        FileDto fileDto = new FileDto();
        fileDto.setNameFile(tranFile.getNameFile());
        fileDto.setIdTranFile(tranFile.getIdTranFile());
        return fileDto;
    }
}
