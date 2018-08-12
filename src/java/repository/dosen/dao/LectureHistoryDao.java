/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.dao;

import java.util.List;
import repository.dosen.models.TranLectureHistory;

/**
 *
 * @author Jaret
 */
public interface LectureHistoryDao {
    public void saveLectureHistory(TranLectureHistory tranLectureHistory);
    public void deleteLectureHistory(TranLectureHistory tranLectureHistory);
    public void deleteLectureHistoryById(String idLecture);
    public void deleteAllLectureHistory(int idLecturer);
    public List<TranLectureHistory> getLectureHistory(int idLecturer);
    public List<Object[]> serachLectureHistory(String nameLecture);
    public TranLectureHistory getMaxLectureHistory(int idLecturer);
    public TranLectureHistory getMinLectureHistory(int idLecturer);
}
