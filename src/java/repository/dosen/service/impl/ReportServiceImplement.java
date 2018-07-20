/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import repository.dosen.dao.FunctionalProgressHistoryDao;
import repository.dosen.dao.LecturerProgressHistoryDao;
import repository.dosen.dao.SertificationProgressHistoryDao;
import repository.dosen.service.ReportService;

/**
 *
 * @author Jaret
 */
public class ReportServiceImplement implements ReportService{

    @Autowired
    LecturerProgressHistoryDao lecturerProgressHistoryDao;
    
    @Autowired
    FunctionalProgressHistoryDao functionalProgressHistoryDao;
    
    @Autowired
    SertificationProgressHistoryDao sertificationProgressHistoryDao;
    
    @Override
    public List<Map> getDataReportResume(String idFaculty, String idMajor) {
        List<Map> listResult = new ArrayList<>();
        
        List<Object[]> listLecturerNidn = lecturerProgressHistoryDao.getLecturerProgressHistory(idFaculty, idMajor);
        Map nidnMap = new HashMap();
        nidnMap.put("event", "Nomor Induk Dosen Nasional");
        nidnMap.put("total", listLecturerNidn.size());
        listResult.add(nidnMap);
        
        List<Object[]> listLecturerAssistant = functionalProgressHistoryDao.getAssistantProgressHistory(idFaculty, idMajor);
        Map assistantMap = new HashMap();
        assistantMap.put("event", "Asisten Ahli");
        assistantMap.put("total", listLecturerAssistant.size());
        listResult.add(assistantMap);
        
        List<Object[]> listLecturerLectors = functionalProgressHistoryDao.getLectorsProgressHistory(idFaculty, idMajor);
        Map lectorsMap = new HashMap();
        lectorsMap.put("event", "Lektor");
        lectorsMap.put("total", listLecturerLectors.size());
        listResult.add(lectorsMap);
        
        List<Object[]> listLecturerHeadlectors = functionalProgressHistoryDao.getHeadlectorsProgressHistory(idFaculty, idMajor);
        Map headlectorsMap = new HashMap();
        headlectorsMap.put("event", "Lektor Kepala");
        headlectorsMap.put("total", listLecturerHeadlectors.size());
        listResult.add(headlectorsMap);
        
        List<Object[]> listLecturerProfessor = functionalProgressHistoryDao.getProfessorProgressHistory(idFaculty, idMajor);
        Map professorMap = new HashMap();
        professorMap.put("event", "Guru Besar");
        professorMap.put("total", listLecturerProfessor.size());
        listResult.add(professorMap);
        
        List<Object[]> listLecturerSertification = sertificationProgressHistoryDao.getSertificationProgressHistory(idFaculty, idMajor);
        Map sertificationMap = new HashMap();
        sertificationMap.put("event", "Sertifikasi Dosen");
        sertificationMap.put("total", listLecturerSertification.size());
        listResult.add(sertificationMap);
        
        return listResult;
    }
    
}
