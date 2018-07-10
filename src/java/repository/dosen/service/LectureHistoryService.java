/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.service;

import java.util.List;
import repository.dosen.dto.LectureHistory;

/**
 *
 * @author Jaret
 */
public interface LectureHistoryService {
    public void saveLectureHistory(LectureHistory lectureHistory);
    public void deleteLectureHistory(int idLectureHistory);
    public void deleteAllLectureHistory(int idLecturer);
    public List<LectureHistory> getLectureHistory(int idLecturer);
    public List<LectureHistory> searchLectureHistory(String nameLecture);
}
