/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.dao;

import java.util.List;
import repository.dosen.models.MasterLecturer;


/**
 *
 * @author Jaret
 */
public interface LecturerDao {
    public MasterLecturer getDataLecturerForLogin(String username, String password);
    public MasterLecturer getDataLecturerByUsername(String username);
    public MasterLecturer getDataLecturer(int idLecturer);
    public List<MasterLecturer> getLecturer();
    public List<MasterLecturer> getLecturerByMajor(String idMajor);
    public List<Object[]> getLecturerByFaculty(String idFaculty);
    public List<Object[]> getLecturerByNameLecturer(String nameLecturer);
    public List<Object[]> getLecturerByFaculty(String nameLecturer,String idFaculty);
    public List<Object[]> getLecturerByMajor(String nameLecturer, String idMajor);
    public void saveLecturer(MasterLecturer masterLecturer);
    public void deleteLecturer(MasterLecturer masterLecturer);
    public List<Object[]> getNewLecturer(String idFaculty, String idMajor);
    public List<Object[]> getLecturerNidn(String idFaculty, String idMajor);
    public List<Object[]> getLecturerAssistant(String idFaculty, String idMajor);
    public List<Object[]> getLecturerLectors(String idFaculty, String idMajor);
    public List<Object[]> getLecturerHeadlectors(String idFaculty, String idMajor);
    public List<Object[]> getLecturerProfessor(String idFaculty, String idMajor);
    public List<Object[]> getLecturerSertification(String idFaculty, String idMajor);
}
