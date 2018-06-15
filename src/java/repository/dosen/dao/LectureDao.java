/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.dao;

import java.util.List;
import repository.dosen.models.MasterLecture;

/**
 *
 * @author sandi
 */
public interface LectureDao {
    public List<MasterLecture> getLecture();
    public MasterLecture getDataLecture(String idLecture);
    public MasterLecture getDataLectureByName(String nameLecture);
    public void saveLecture(MasterLecture masterLecture);
    public void deleteLecture(MasterLecture masterLecture);
    public List<Object[]> searchLecture(String nameLecture);
}
