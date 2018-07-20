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
    public int saveLecturer(Lecturer lecturer);
    public void editLecturer(Lecturer lecturer);
    public void updateLoginLecturer(Lecturer lecturer);
    public void deleteLecturer(int idLecturer);
    public List<Lecturer> getNewLecturer(String idFaculty, String idMajor);
    public List<Lecturer> getLecturerNIDN(String idFaculty, String idMajor);
    public List<Lecturer> getLecturerAssistant(String idFaculty, String idMajor);
    public List<Lecturer> getLecturerLectors(String idFaculty, String idMajor);
    public List<Lecturer> getLecturerHeadLectors(String idFaculty, String idMajor);
    public List<Lecturer> getLecturerProfessor(String idFaculty, String idMajor);
    public List<Lecturer> getLecturerSertification(String idFaculty, String idMajor);
    
    public List<Lecturer> getLecturerHasNidn(String idFaculty, String idMajor);
    public List<Lecturer> getLecturerHasAssistant(String idFaculty, String idMajor);
    public List<Lecturer> getLecturerHasLectors(String idFaculty, String idMajor);
    public List<Lecturer> getLecturerHasHeadlectors(String idFaculty, String idMajor);
    public List<Lecturer> getLecturerHasProfessor(String idFaculty, String idMajor);
    public List<Lecturer> getLecturerHasSertification(String idFaculty, String idMajor);
}
