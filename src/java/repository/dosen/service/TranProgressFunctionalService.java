/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.service;

import java.util.List;
import repository.dosen.dto.TranProgressFunctionalDto;

/**
 *
 * @author Jaret
 */
public interface TranProgressFunctionalService {
    public List<TranProgressFunctionalDto> getTranProgressAssistant(int idLecturer);
    public List<TranProgressFunctionalDto> getTranProgressLectors(int idLecturer);
    public List<TranProgressFunctionalDto> getTranProgressHeadlectors(int idLecturer);
    public List<TranProgressFunctionalDto> getTranProgressProfessor(int idLecturer);
    public void saveTranProgressFunctional(TranProgressFunctionalDto tranProgressFunctionalDto); 
    public void deleteTranProgressFunctional(int idLecturer);
}
