/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.service;

import java.util.List;
import repository.dosen.dto.StudyHistory;

/**
 *
 * @author Jaret
 */
public interface StudyHistoryService {
    public void saveStudyHistory(StudyHistory studyHistory);
    public void deleteStudyHistory(int idStudyHistory);
    public List<StudyHistory> getStudyHistory(int idLecturer);
    public List<StudyHistory> searchStudyHistory(String nameStudy);
}
