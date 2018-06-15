/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.dao;

import java.util.List;
import repository.dosen.models.MasterFaculty;

/**
 *
 * @author sandi
 */
public interface FacultyDao {
    public List<MasterFaculty> getFaculty();
    public MasterFaculty getDataFaculty(String id);
    public void saveFaculty(MasterFaculty masterFaculty);
    public void deleteFaculty(MasterFaculty masterFaculty);
    public List<Object[]> searchFaculty(String nameFaculty);
}
