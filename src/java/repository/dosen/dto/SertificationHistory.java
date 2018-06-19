/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.dto;



/**
 *
 * @author Jaret
 */
public class SertificationHistory {
    int idSertificationHistory;
    String sertificationPart;
    String studyPart;
    String ptpsNumber;
    String registrationNumber;
    String pathFile;
    int idLecturer;
    int idTranFile;
    int idDetail;

    public String getPathFile() {
        return pathFile;
    }

    public void setPathFile(String pathFile) {
        this.pathFile = pathFile;
    }

    public int getIdLecturer() {
        return idLecturer;
    }

    public void setIdLecturer(int idLecturer) {
        this.idLecturer = idLecturer;
    }
    
    public int getIdDetail() {
        return idDetail;
    }

    public void setIdDetail(int idDetail) {
        this.idDetail = idDetail;
    }
    
    public int getIdTranFile() {
        return idTranFile;
    }

    public void setIdTranFile(int idTranFile) {
        this.idTranFile = idTranFile;
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

    public void setPtpsNumber(String ptpsNumber) {
        this.ptpsNumber = ptpsNumber;
    }

    public String getRegistrationNumber() {
        return registrationNumber;
    }

    public void setRegistrationNumber(String RegistrationNumber) {
        this.registrationNumber = RegistrationNumber;
    }
}
