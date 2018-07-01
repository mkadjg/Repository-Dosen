/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.dao;

import java.util.List;
import repository.dosen.models.TranFile;

/**
 *
 * @author Jaret
 */
public interface FileDao {
    public void saveFile(TranFile tranFile);
    public void deleteFile(TranFile tranFile);
    public TranFile getDataFile(int idTranFile);
    public TranFile getLastDataFile();
    public List<TranFile> getFile(int idLecturer);
    public List<Object[]> getFileRecruitment(int idLecturer);
    public List<Object[]> getFileNidn(int idLecturer);
    public List<Object[]> getFileAssistant(int idLecturer);
    public List<Object[]> getFileLectors(int idLecturer);
    public List<Object[]> getFileHeadlectors(int idLecturer);
    public List<Object[]> getFileProfessor(int idLecturer);
    public List<Object[]> searchFile(String nameDetail);
}
