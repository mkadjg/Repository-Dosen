/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.service;

import java.util.List;
import repository.dosen.dto.Major;

/**
 *
 * @author sandi
 */
public interface MajorService {
    public List<Major> getMajor();
    public Major getDataMajor(String idMajor);
    public void saveMajor(Major major);
    public void deleteMajor(String IdMajor);
    public List<Major> getDataMajorByFaculty(String idFaculty);
    public Major getDataFacultyByMajor(String idMajor);
    public List<Major> searchMajor(String nameMajor);
}
