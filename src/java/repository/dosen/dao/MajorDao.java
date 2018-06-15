/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.dao;

import java.util.List;
import repository.dosen.models.MasterMajor;

/**
 *
 * @author sandi
 */
public interface MajorDao {
    public List<MasterMajor> getMajor();
    public MasterMajor getDataMajor(String id);
    public void saveMajor(MasterMajor masterMajor);
    public void deleteMajor(MasterMajor masterMajor);
    public List<MasterMajor> getDataMajorByFaculty(String idFaculty);
    public List<Object[]> searchMajor(String nameMajor);
    public MasterMajor getDataFacultyByMajor(String idMajor);
}
