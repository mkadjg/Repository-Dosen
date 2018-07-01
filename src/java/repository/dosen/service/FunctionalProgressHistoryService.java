/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.service;

import java.util.List;
import repository.dosen.dto.FunctionalProgressHistoryDto;

/**
 *
 * @author Jaret
 */
public interface FunctionalProgressHistoryService {
    public List<FunctionalProgressHistoryDto> getAssistantProgressHistory();
    public List<FunctionalProgressHistoryDto> getAssistantProgressHistoryByFaculty(String idFaculty);
    public List<FunctionalProgressHistoryDto> getAssistantProgressHistoryByMajor(String idMajor);
    
    public List<FunctionalProgressHistoryDto> getLectorsProgressHistory();
    public List<FunctionalProgressHistoryDto> getLectorsProgressHistoryByFaculty(String idFaculty);
    public List<FunctionalProgressHistoryDto> getLectorsProgressHistoryByMajor(String idMajor);
    
    public List<FunctionalProgressHistoryDto> getHeadlectorsProgressHistory();
    public List<FunctionalProgressHistoryDto> getHeadlectorsProgressHistoryByFaculty(String idFaculty);
    public List<FunctionalProgressHistoryDto> getHeadlectorsProgressHistoryByMajor(String idMajor);
    
    public List<FunctionalProgressHistoryDto> getProfessorProgressHistory();
    public List<FunctionalProgressHistoryDto> getProfessorProgressHistoryByFaculty(String idFaculty);
    public List<FunctionalProgressHistoryDto> getProfessorProgressHistoryByMajor(String idMajor);
}
