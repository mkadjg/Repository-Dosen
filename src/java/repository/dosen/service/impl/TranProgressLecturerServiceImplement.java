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
import repository.dosen.dao.LecturerProgressHistoryDao;
import repository.dosen.dao.TranProgressLecturerDao;
import repository.dosen.dto.TranProgressLecturerDto;
import repository.dosen.models.DetailProgress;
import repository.dosen.models.LecturerProgressHistory;
import repository.dosen.models.TranProgressLecturer;
import repository.dosen.service.TranProgressLecturerService;

/**
 *
 * @author Jaret
 */
public class TranProgressLecturerServiceImplement implements TranProgressLecturerService{
    
    @Autowired
    DetailProgressDao detailProgressDao;
    
    @Autowired
    TranProgressLecturerDao tranProgressLecturerDao;
    
    @Autowired
    LecturerProgressHistoryDao lecturerProgressHistoryDao;
 
    @Override
    public List<TranProgressLecturerDto> getTranProgressNidn(int idLecturer) {
        List<TranProgressLecturerDto> listProgressNidn = new ArrayList<>();
        List<TranProgressLecturer> listModel = tranProgressLecturerDao.getTranProgressNidn(idLecturer);
        List<DetailProgress> listDetail = detailProgressDao.getDetailProgressNidn();
        LecturerProgressHistory lecturerProgressHistory = lecturerProgressHistoryDao.getDataLecturerProgressHistory(idLecturer);
        if (lecturerProgressHistory == null){
            return listProgressNidn;
        } else {
            for (int i = 0; i < listDetail.size(); i++){
                TranProgressLecturerDto tranProgressLecturerDto = new TranProgressLecturerDto();
                for(int x = 0; x < listModel.size(); x++){
                    if(listDetail.get(i).getIdDetail() == listModel.get(x).getDetail().getIdDetail()){
                        tranProgressLecturerDto.setIdTranProgress(listModel.get(x).getIdTranProgress());
                        tranProgressLecturerDto.setState(listModel.get(x).getState());
                        break;
                    }else{
                        tranProgressLecturerDto.setIdTranProgress(0);
                        tranProgressLecturerDto.setState(0);
                    }
                }
                tranProgressLecturerDto.setIdDetail(listDetail.get(i).getIdDetail());
                tranProgressLecturerDto.setIdProgressHistory(lecturerProgressHistory.getIdProgressHistory());
                tranProgressLecturerDto.setNumberRequirement(listDetail.get(i).getNumberRequirement());
                tranProgressLecturerDto.setDescription(listDetail.get(i).getDescription());
                listProgressNidn.add(tranProgressLecturerDto);
            }
            return listProgressNidn;
        }
    }

    @Override
    public void saveTranProgressLecturer(TranProgressLecturerDto tranProgressLecturerDto) {
        TranProgressLecturer tranProgressLecturer = new TranProgressLecturer();
        tranProgressLecturer.setIdTranProgress(tranProgressLecturerDto.getIdTranProgress());
        DetailProgress detailProgress = detailProgressDao.getDataDetailProgress(tranProgressLecturerDto.getIdDetail());
        tranProgressLecturer.setDetail(detailProgress);
        LecturerProgressHistory lecturerProgressHistory = lecturerProgressHistoryDao.getDataLecturerProgressHistoryById(tranProgressLecturerDto.getIdProgressHistory());
        tranProgressLecturer.setProgressHistory(lecturerProgressHistory);
        tranProgressLecturer.setState(1);
        tranProgressLecturerDao.saveTranProgressLecturer(tranProgressLecturer);
        
    }

    @Override
    public void deleteTranProgressLecturer(int idLecturer) {
        tranProgressLecturerDao.deleteTranProgresslecturer(idLecturer);
    }
    
}
