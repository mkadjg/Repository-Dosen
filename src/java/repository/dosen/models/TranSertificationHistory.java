/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.models;

import java.io.Serializable;

/**
 *
 * @author Jaret
 */
public class TranSertificationHistory implements Serializable {
    int idSertificationHistory;
    String sertificationPart;
    String studyPart;
    String ptpsNumber;
    String registrationNumber;
    MasterLecturer lecturer;
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

    public int getIdSertificationHistory() {
        return idSertificationHistory;
    }

    public void setIdSertificationHistory(int idSertificationHistory) {
        this.idSertificationHistory = idSertificationHistory;
    }

    public String getSertificationPart() {
        return sertificationPart;
    }

    public void setSertificationPart(String sertificationPart) {
        this.sertificationPart = sertificationPart;
    }

    public String getStudyPart() {
        return studyPart;
    }

    public void setStudyPart(String studyPart) {
        this.studyPart = studyPart;
    }

    public String getPtpsNumber() {
        return ptpsNumber;
    }

    public void setPtpsNumber(String PtpsNumber) {
        this.ptpsNumber = PtpsNumber;
    }

    public String getRegistrationNumber() {
        return registrationNumber;
    }

    public void setRegistrationNumber(String registrationNumber) {
        this.registrationNumber = registrationNumber;
    }
    
    
    
}
