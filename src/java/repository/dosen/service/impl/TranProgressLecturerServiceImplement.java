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
import repository.dosen.dto.TranProgressFunctionalDto;
import repository.dosen.dto.TranProgressLecturerDto;
import repository.dosen.models.DetailProgress;
import repository.dosen.models.LecturerProgressHistory;
import repository.dosen.models.TranProgressFunctional;
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
        List<TranProgressLecturerDto> listProgressFunctional = new ArrayList<>();
        List<TranProgressLecturer> listModel = tranProgressLecturerDao.getTranProgressNidn(idLecturer);
        List<DetailProgress> listDetail = detailProgressDao.getDetailProgressNidn();
        LecturerProgressHistory lecturerProgressHistory = lecturerProgressHistoryDao.getDataLecturerProgressHistory(idLecturer);
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
            listProgressFunctional.add(tranProgressLecturerDto);
        }
        
        return listProgressFunctional;
    }
    
}
