/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.dao;

import repository.dosen.models.TranLectureHistory;

/**
 *
 * @author Jaret
 */
public interface LectureHistoryDao {
    public void saveLectureHistory(TranLectureHistory tranLectureHistory);
}
