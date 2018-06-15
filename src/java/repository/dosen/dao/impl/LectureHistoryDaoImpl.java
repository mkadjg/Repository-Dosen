/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.dao.impl;

import org.springframework.stereotype.Repository;
import repository.dosen.dao.LectureHistoryDao;
import repository.dosen.models.TranLectureHistory;

/**
 *
 * @author Jaret
 */
@Repository
public class LectureHistoryDaoImpl extends HibernateUtil implements LectureHistoryDao{

    @Override
    public void saveLectureHistory(TranLectureHistory tranLectureHistory) {
        getSession().saveOrUpdate(tranLectureHistory);
    }
    
}
