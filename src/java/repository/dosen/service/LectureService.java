/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.service;

import java.util.List;
import repository.dosen.dto.Lecture;

/**
 *
 * @author sandi
 */
public interface LectureService {
    public List<Lecture> getLecture();
    public Lecture getDataLecture(String id);
    public void saveLecture(Lecture lecture);
    public void deleteLecture(String id);
    public List<Lecture> searchLecture(String nameLecture);
}
