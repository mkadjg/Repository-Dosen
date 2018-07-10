/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.dao;

import java.util.List;
import repository.dosen.models.SertificationProgressHistory;

/**
 *
 * @author Jaret
 */
public interface SertificationProgressHistoryDao {
   public List<SertificationProgressHistory> getSertificationProgressHistory();
   public List<SertificationProgressHistory> getSertificationProgressHistoryByFaculty(String idFaculty);
   public List<SertificationProgressHistory> getSertificationProgressHistoryByMajor(String idMajor);
   public void saveSertificationProgressHistory(SertificationProgressHistory sertificationProgressHistory);
   public void deleteSertificationProgressHistory(SertificationProgressHistory sertificationProgressHistory);
   public SertificationProgressHistory getDataSertificationProgressHistory(int idLecturer);
   public SertificationProgressHistory getDataSertificationProgressHistoryById(int idProgressHistory);
}
