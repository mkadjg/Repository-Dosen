/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.dao;

import java.util.List;
import repository.dosen.models.TranProgressFunctional;

/**
 *
 * @author Jaret
 */
public interface TranProgressFunctionalDao {
    public List<TranProgressFunctional> getTranProgressAssistant(int idLecturer);
    public List<TranProgressFunctional> getTranProgressLectors(int idLecturer);
    public List<TranProgressFunctional> getTranProgressHeadlectors(int idLecturer);
    public List<TranProgressFunctional> getTranProgressProfessor(int idLecturer);
    public void saveTranProgressFunctional(TranProgressFunctional tranProgressFunctional);
    public void deleteTranProgressFunctional(int idLecturer);
    public void deleteTranProgressFunctionalById(int idDetail);
}
