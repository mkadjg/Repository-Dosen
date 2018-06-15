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
public class TranFunctionalHistory implements Serializable{
    int idFunctionalHistory;
    String skNumber;
    String skDate;
    MasterLecturer lecturer;
    MasterFunctional functional;
    TranFile tranFile;

    public TranFile getTranFile() {
        return tranFile;
    }

    public void setTranFile(TranFile tranFile) {
        this.tranFile = tranFile;
    }

    public MasterLecturer getLecturer() {
        return lecturer;
    }

    public void setLecturer(MasterLecturer lecturer) {
        this.lecturer = lecturer;
    }

    public MasterFunctional getFunctional() {
        return functional;
    }

    public void setFunctional(MasterFunctional functional) {
        this.functional = functional;
    }
    
    public int getIdFunctionalHistory() {
        return idFunctionalHistory;
    }

    public void setIdFunctionalHistory(int idFunctionalHistory) {
        this.idFunctionalHistory = idFunctionalHistory;
    }

    public String getSkNumber() {
        return skNumber;
    }

    public void setSkNumber(String SkNumber) {
        this.skNumber = SkNumber;
    }

    public String getSkDate() {
        return skDate;
    }

    public void setSkDate(String SkDate) {
        this.skDate = SkDate;
    }
    
    
}
