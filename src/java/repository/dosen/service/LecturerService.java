/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.service;

import java.util.List;
import repository.dosen.dto.Lecturer;

/**
 *
 * @author Jaret
 */
public interface LecturerService {
    public Lecturer getDataLecturerForLogin(String username, String password);
    public Lecturer getDataLecturer(int idLecturer);
    public List<Lecturer> getLecturer();
    public List<Lecturer> getLecturerByMajor(String idMajor);
    public List<Lecturer> getLecturerByFaculty(String idFaculty);
    public List<Lecturer> getLecturerByNameLecturer(String nameLecturer);
    public List<Lecturer> getLecturerByMajor(String nameLecturer, String idMajor);
    public List<Lecturer> getLecturerByFaculty(String nameLecturer, String idFaculty);
    public void saveLecturer(Lecturer lecturer);
}
