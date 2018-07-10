/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.service;

import java.util.List;
import repository.dosen.dto.FunctionalHistory;

/**
 *
 * @author Jaret
 */
public interface FunctionalHistoryService {
    public void saveFunctionalHistory(FunctionalHistory functionalHistory);
    public void deleteFunctionalHistory(int idFunctionalHistory);
    public void deleteAllFunctionalHistory(int idLecturer);
    public List<FunctionalHistory> getFunctionalHistory(int idLecturer);
    public List<FunctionalHistory> searchFunctionalHistory(String nameFunctional);
}
