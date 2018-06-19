/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.dao;

import java.util.List;
import repository.dosen.models.TranSertificationHistory;

/**
 *
 * @author Jaret
 */
public interface SertificationHistoryDao {
    public void saveSertificationHistory(TranSertificationHistory tranSertificationHistory);
    public void deleteSertificationHistory(TranSertificationHistory tranSertificationHistory);
    public List<TranSertificationHistory> getSertificationHistory(int idLecturer);
    public List<Object[]> serachSertificationHistory(String nameSertification);
}
