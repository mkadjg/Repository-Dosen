/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.dao;

import java.util.List;
import repository.dosen.models.TranStudyHistory;

/**
 *
 * @author Jaret
 */
public interface StudyHistoryDao {
    public void saveStudyHistory(TranStudyHistory tranStudyHistory);
    public void deleteStudyHistory(TranStudyHistory tranStudyHistory);
    public List<TranStudyHistory> getStudyHistory(int idLecturer);
    public List<Object[]> serachStudyHistory(String nameStudy);
}
