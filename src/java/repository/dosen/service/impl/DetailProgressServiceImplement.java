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
import repository.dosen.dao.DetailProgressDao;
import repository.dosen.dto.DetailProgressDto;
import repository.dosen.models.DetailProgress;
import repository.dosen.service.DetailProgressService;

/**
 *
 * @author Jaret
 */
@Transactional
@Service
public class DetailProgressServiceImplement implements DetailProgressService {
    
    @Autowired
    DetailProgressDao detailProgressDao;
    
    @Override
    public List<DetailProgressDto> getDetailProgressNidn() {
        List<DetailProgressDto> listDetailProgress = new ArrayList<>();
        List<DetailProgress> listDetailModel =  detailProgressDao.getDetailProgressNidn();
        for (DetailProgress detailProgress : listDetailModel){
            DetailProgressDto detailProgressDto = new DetailProgressDto();
            detailProgressDto.setIdDetail(detailProgress.getIdDetail());
            detailProgressDto.setDescription(detailProgress.getDescription());
            detailProgressDto.setNumberRequirement(detailProgress.getNumberRequirement());
            detailProgressDto.setIdEvent(detailProgress.getIdEvent());
            listDetailProgress.add(detailProgressDto);
        }
        return listDetailProgress;
    }

    @Override
    public List<DetailProgressDto> getDetailProgressAssistant() {
        List<DetailProgressDto> listDetailProgress = new ArrayList<>();
        List<DetailProgress> listDetailModel =  detailProgressDao.getDetailProgressAssistant();
        for (DetailProgress detailProgress : listDetailModel){
            DetailProgressDto detailProgressDto = new DetailProgressDto();
            detailProgressDto.setIdDetail(detailProgress.getIdDetail());
            detailProgressDto.setDescription(detailProgress.getDescription());
            detailProgressDto.setNumberRequirement(detailProgress.getNumberRequirement());
            detailProgressDto.setIdEvent(detailProgress.getIdEvent());
            listDetailProgress.add(detailProgressDto);
        }
        return listDetailProgress;
    }

    @Override
    public List<DetailProgressDto> getDetailProgressLectors() {
        List<DetailProgressDto> listDetailProgress = new ArrayList<>();
        List<DetailProgress> listDetailModel =  detailProgressDao.getDetailProgressLectors();
        for (DetailProgress detailProgress : listDetailModel){
            DetailProgressDto detailProgressDto = new DetailProgressDto();
            detailProgressDto.setIdDetail(detailProgress.getIdDetail());
            detailProgressDto.setDescription(detailProgress.getDescription());
            detailProgressDto.setNumberRequirement(detailProgress.getNumberRequirement());
            detailProgressDto.setIdEvent(detailProgress.getIdEvent());
            listDetailProgress.add(detailProgressDto);
        }
        return listDetailProgress;
    }

    @Override
    public List<DetailProgressDto> getDetailProgressHeadlectors() {
        List<DetailProgressDto> listDetailProgress = new ArrayList<>();
        List<DetailProgress> listDetailModel =  detailProgressDao.getDetailProgressHeadlectors();
        for (DetailProgress detailProgress : listDetailModel){
            DetailProgressDto detailProgressDto = new DetailProgressDto();
            detailProgressDto.setIdDetail(detailProgress.getIdDetail());
            detailProgressDto.setDescription(detailProgress.getDescription());
            detailProgressDto.setNumberRequirement(detailProgress.getNumberRequirement());
            detailProgressDto.setIdEvent(detailProgress.getIdEvent());
            listDetailProgress.add(detailProgressDto);
        }
        return listDetailProgress;
    }

    @Override
    public List<DetailProgressDto> getDetailProgressProfessor() {
        List<DetailProgressDto> listDetailProgress = new ArrayList<>();
        List<DetailProgress> listDetailModel =  detailProgressDao.getDetailProgressProfessor();
        for (DetailProgress detailProgress : listDetailModel){
            DetailProgressDto detailProgressDto = new DetailProgressDto();
            detailProgressDto.setIdDetail(detailProgress.getIdDetail());
            detailProgressDto.setDescription(detailProgress.getDescription());
            detailProgressDto.setNumberRequirement(detailProgress.getNumberRequirement());
            detailProgressDto.setIdEvent(detailProgress.getIdEvent());
            listDetailProgress.add(detailProgressDto);
        }
        return listDetailProgress;
    }

    @Override
    public List<DetailProgressDto> getDetailProgressSertification() {
        List<DetailProgressDto> listDetailProgress = new ArrayList<>();
        List<DetailProgress> listDetailModel =  detailProgressDao.getDetailProgressSertification();
        for (DetailProgress detailProgress : listDetailModel){
            DetailProgressDto detailProgressDto = new DetailProgressDto();
            detailProgressDto.setIdDetail(detailProgress.getIdDetail());
            detailProgressDto.setDescription(detailProgress.getDescription());
            detailProgressDto.setNumberRequirement(detailProgress.getNumberRequirement());
            detailProgressDto.setIdEvent(detailProgress.getIdEvent());
            listDetailProgress.add(detailProgressDto);
        }
        return listDetailProgress;
    }

    @Override
    public void saveDetailProgress(DetailProgressDto detailProgressDto) {
        DetailProgress detailProgress = new DetailProgress();
        detailProgress.setIdDetail(detailProgressDto.getIdDetail());
        detailProgress.setNumberRequirement(detailProgressDto.getNumberRequirement());
        detailProgress.setIdEvent(detailProgressDto.getIdEvent());
        detailProgress.setDescription(detailProgressDto.getDescription());
        detailProgressDao.saveDetailProgress(detailProgress);
    }

    @Override
    public void deleteDetailProgress(int idDetail) {
        DetailProgress detailProgress = new DetailProgress();
        detailProgress.setIdDetail(idDetail);
        detailProgressDao.deleteDetailProgress(detailProgress);
    }

    @Override
    public List<DetailProgressDto> searchDetailProgress(String description, int idDetail) {
        List<DetailProgressDto> listDetailProgress = new ArrayList<>();
        List<Object[]> listDetailModel = detailProgressDao.searchDetailProgress(description, idDetail);
        for (Object[] object : listDetailModel){
            DetailProgressDto detailProgressDto = new DetailProgressDto();
            detailProgressDto.setIdDetail(Integer.parseInt(object[0].toString()));
            detailProgressDto.setDescription(object[1].toString());
            detailProgressDto.setNumberRequirement(Integer.parseInt(object[2].toString()));
            detailProgressDto.setIdEvent(Integer.parseInt(object[3].toString()));
            listDetailProgress.add(detailProgressDto);
        }
        return listDetailProgress;
    }
    
}
