/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.service.impl;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import repository.dosen.dao.DetailProgressDao;
import repository.dosen.dao.SertificationProgressHistoryDao;
import repository.dosen.dao.TranProgressSertificationDao;
import repository.dosen.dto.TranProgressSertificationDto;
import repository.dosen.models.DetailProgress;
import repository.dosen.models.SertificationProgressHistory;
import repository.dosen.models.TranProgressSertification;
import repository.dosen.service.TranProgressSertificationService;

/**
 *
 * @author Jaret
 */
public class TranProgressSertificationServiceImplement implements TranProgressSertificationService{
    
    @Autowired
    DetailProgressDao detailProgressDao;
    
    @Autowired
    TranProgressSertificationDao tranProgressSertificationDao;
    
    @Autowired
    SertificationProgressHistoryDao sertificationProgressHistoryDao;
 
    @Override
    public List<TranProgressSertificationDto> getTranProgressSertification(int idLecturer) {
        List<TranProgressSertificationDto> listProgressSertification = new ArrayList<>();
        List<TranProgressSertification> listModel = tranProgressSertificationDao.getTranProgressSertification(idLecturer);
        List<DetailProgress> listDetail = detailProgressDao.getDetailProgressSertification();
        SertificationProgressHistory sertificationProgressHistory = sertificationProgressHistoryDao.getDataSertificationProgressHistory(idLecturer);
        if (sertificationProgressHistory == null){
            return listProgressSertification;
        } else {
            for (int i = 0; i < listDetail.size(); i++){
                TranProgressSertificationDto tranProgressSertificationDto = new TranProgressSertificationDto();
                for(int x = 0; x < listModel.size(); x++){
                    if(listDetail.get(i).getIdDetail() == listModel.get(x).getDetail().getIdDetail()){
                        tranProgressSertificationDto.setIdTranProgress(listModel.get(x).getIdTranProgress());
                        tranProgressSertificationDto.setState(listModel.get(x).getState());
                        break;
                    }else{
                        tranProgressSertificationDto.setIdTranProgress(0);
                        tranProgressSertificationDto.setState(0);
                    }
                }
                tranProgressSertificationDto.setIdDetail(listDetail.get(i).getIdDetail());
                tranProgressSertificationDto.setIdProgressHistory(sertificationProgressHistory.getIdProgressHistory());
                tranProgressSertificationDto.setNumberRequirement(listDetail.get(i).getNumberRequirement());
                tranProgressSertificationDto.setDescription(listDetail.get(i).getDescription());
                listProgressSertification.add(tranProgressSertificationDto);
            }
            return listProgressSertification;
        }
    }

    @Override
    public void saveTranProgressSertification(TranProgressSertificationDto tranProgressSertificationDto) {
        TranProgressSertification tranProgressSertification = new TranProgressSertification();
        tranProgressSertification.setIdTranProgress(tranProgressSertificationDto.getIdTranProgress());
        DetailProgress detailProgress = detailProgressDao.getDataDetailProgress(tranProgressSertificationDto.getIdDetail());
        tranProgressSertification.setDetail(detailProgress);
        SertificationProgressHistory sertificationProgressHistory = sertificationProgressHistoryDao.getDataSertificationProgressHistoryById(tranProgressSertificationDto.getIdProgressHistory());
        tranProgressSertification.setProgressHistory(sertificationProgressHistory);
        tranProgressSertification.setState(1);
        tranProgressSertificationDao.saveTranProgressSertification(tranProgressSertification);
        
    }

    @Override
    public void deleteTranProgressSertification(int idLecturer) {
        SertificationProgressHistory sertificationProgressHistory = sertificationProgressHistoryDao.getDataSertificationProgressHistory(idLecturer);
        if (sertificationProgressHistory != null){
            tranProgressSertificationDao.deleteTranProgressSertification(sertificationProgressHistory.getIdProgressHistory());
        }
    }
    
}
