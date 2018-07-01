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
import repository.dosen.dao.FunctionalProgressHistoryDao;
import repository.dosen.dao.TranProgressFunctionalDao;
import repository.dosen.dao.impl.TranProgressFunctionalDaoImpl;
import repository.dosen.dto.TranProgressFunctionalDto;
import repository.dosen.models.DetailProgress;
import repository.dosen.models.FunctionalProgressHistory;
import repository.dosen.models.TranProgressFunctional;
import repository.dosen.service.TranProgressFunctionalService;

/**
 *
 * @author Jaret
 */
public class TranProgressFunctionalServiceImplement implements TranProgressFunctionalService{
    
    @Autowired
    DetailProgressDao detailProgressDao;
    
    @Autowired
    FunctionalProgressHistoryDao functionalProgressHistoryDao;
    
    @Autowired
    TranProgressFunctionalDao tranProgressFunctionalDao;
    
    @Override
    public List<TranProgressFunctionalDto> getTranProgressAssistant(int idLecturer) {
        List<TranProgressFunctionalDto> listProgressFunctional = new ArrayList<>();
        List<TranProgressFunctional> listModel = tranProgressFunctionalDao.getTranProgressAssistant(idLecturer);
        List<DetailProgress> listDetail = detailProgressDao.getDetailProgressAssistant();
        FunctionalProgressHistory functionalProgressHistory = functionalProgressHistoryDao.getDataAssistantProgressHistory(idLecturer);
        for (int i = 0; i < listDetail.size(); i++){
            TranProgressFunctionalDto tranProgressFunctionalDto = new TranProgressFunctionalDto();
            for(int x = 0; x < listModel.size(); x++){
                if(listDetail.get(i).getIdDetail() == listModel.get(x).getDetail().getIdDetail()){
                    tranProgressFunctionalDto.setIdTranProgress(listModel.get(x).getIdTranProgress());
                    tranProgressFunctionalDto.setState(listModel.get(x).getState());
                    break;
                }else{
                    tranProgressFunctionalDto.setIdTranProgress(0);
                    tranProgressFunctionalDto.setState(0);
                }
            }
            tranProgressFunctionalDto.setIdDetail(listDetail.get(i).getIdDetail());
            tranProgressFunctionalDto.setIdProgressHistory(functionalProgressHistory.getIdProgressHistory());
            tranProgressFunctionalDto.setNumberRequirement(listDetail.get(i).getNumberRequirement());
            tranProgressFunctionalDto.setDescription(listDetail.get(i).getDescription());
            listProgressFunctional.add(tranProgressFunctionalDto);
        }
        
        return listProgressFunctional;
    }

    @Override
    public void saveTranProgressFunctional(TranProgressFunctionalDto tranProgressFunctionalDto) {
        TranProgressFunctional tranProgressFunctional = new TranProgressFunctional();
        tranProgressFunctional.setIdTranProgress(tranProgressFunctionalDto.getIdTranProgress());
        DetailProgress detailProgress = detailProgressDao.getDataDetailProgress(tranProgressFunctionalDto.getIdDetail());
        tranProgressFunctional.setDetail(detailProgress);
        FunctionalProgressHistory functionalProgressHistory = functionalProgressHistoryDao.getDataFunctionalProgressHistory(tranProgressFunctionalDto.getIdProgressHistory());
        tranProgressFunctional.setProgressHistory(functionalProgressHistory);
        tranProgressFunctional.setState(1);
        tranProgressFunctionalDao.saveTranProgressFunctional(tranProgressFunctional);
    }
    
}
