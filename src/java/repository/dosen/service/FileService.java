/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.service;

import java.util.List;
import repository.dosen.dto.FileDto;

/**
 *
 * @author sandi
 */
public interface FileService {
    public void saveFile(FileDto fileDto);
    public void deleteFile(int idTranFile);
    public void deleteAllFile(int idLecturer);
    public FileDto getPathPhoto(int idLecturer);
    public List<FileDto> getFile(int idLecturer);
    public List<FileDto> searchFile(String nameDokumen);
    public List<FileDto> getFileRecruitment(int idLecturer);
    public List<FileDto> getFileNidn(int idLecturer);
    public List<FileDto> getFileAssistant(int idLecturer);
    public List<FileDto> getFileLectors(int idLecturer);
    public List<FileDto> getFileHeadlectors(int idLecturer);
    public List<FileDto> getFileProfessor(int idLecturer);
}
