/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.dao;

import java.util.List;
import repository.dosen.models.FunctionalProgressHistory;
/**
 *
 * @author Jaret
 */
public interface FunctionalProgressHistoryDao {
   public List<FunctionalProgressHistory> getAssistantProgressHistory();
   public List<FunctionalProgressHistory> getAssistantProgressHistoryByFaculty(String idFaculty);
   public List<FunctionalProgressHistory> getAssistantProgressHistoryByMajor(String idMajor);
}
