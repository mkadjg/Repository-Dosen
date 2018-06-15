/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.models;

import java.io.Serializable;

/**
 *
 * @author sandi
 */
public class MasterMajor implements Serializable{
    String idMajor;
    String nameMajor;
    MasterFaculty faculty;

    public String getIdMajor() {
        return idMajor;
    }

    public void setIdMajor(String idMajor) {
        this.idMajor = idMajor;
    }

    public String getNameMajor() {
        return nameMajor;
    }

    public void setNameMajor(String nameMajor) {
        this.nameMajor = nameMajor;
    }

    public MasterFaculty getFaculty() {
        return faculty;
    }

    public void setFaculty(MasterFaculty faculty) {
        this.faculty = faculty;
    }
    
    
}
