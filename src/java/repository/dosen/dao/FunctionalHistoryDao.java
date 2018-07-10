/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.dao;

import java.util.List;
import repository.dosen.models.TranFunctionalHistory;

/**
 *
 * @author Jaret
 */
public interface FunctionalHistoryDao {
    public void saveFunctionalHistory(TranFunctionalHistory tranFunctionalHistory);
    public void deleteFunctionalHistory(TranFunctionalHistory tranFunctionalHistory);
    public void deleteAllFuntionalHistory(int idLecturer);
    public List<TranFunctionalHistory> getFunctionalHistory(int idLecturer);
    public List<Object[]> serachFunctionalHistory(String nameFunctional);
}
