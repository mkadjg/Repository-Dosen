/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.service;

import java.util.List;
import repository.dosen.dto.Faculty;

/**
 *
 * @author sandi
 */
public interface FacultyService {
    public List<Faculty> getFaculty();
    public Faculty getDataFaculty(String id);
    public void saveFaculty(Faculty faculty);
    public void deleteFaculty(String id);
    public List<Faculty> searchFaculty(String nameFaculty);
}
