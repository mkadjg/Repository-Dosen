/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.service;

import java.util.List;
import repository.dosen.dto.SertificationHistory;

/**
 *
 * @author Jaret
 */
public interface SertificationHistoryService {
    public void saveSertificationHistory(SertificationHistory lectureHistory);
    public void deleteSertificationHistory(int idSertificationHistory);
    public List<SertificationHistory> getSertificationHistory(int idLecturer);
    public List<SertificationHistory> searchSertificationHistory(String nameSertification);
}
