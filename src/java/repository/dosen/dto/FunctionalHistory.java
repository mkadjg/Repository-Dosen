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
public class FunctionalHistory {
     int idFunctionalHistory;
    String skNumber;
    String skDate;
    int idLecturer;
    int idFunctional;
    String nameFunctional;
    int idTranFile;
    int idDetail;
    String pathFile;

    public String getPathFile() {
        return pathFile;
    }

    public void setPathFile(String pathFile) {
        this.pathFile = pathFile;
    }
    
    public void setIdDetail(int idDetail) {
        this.idDetail = idDetail;
    }
    
     public int getIdDetail() {
        return idDetail;
    }
    
    public int getIdTranFile() {
        return idTranFile;
    }

    public void setIdTranFile(int idTranFile) {
        this.idTranFile = idTranFile;
    }
    
    public String getNameFunctional() {
        return nameFunctional;
    }

    public void setNameFunctional(String nameFunctional) {
        this.nameFunctional = nameFunctional;
    }

    public int getIdLecturer() {
        return idLecturer;
    }

    public void setIdLecturer(int idLecturer) {
        this.idLecturer = idLecturer;
    }

    public int getIdFunctional() {
        return idFunctional;
    }

    public void setIdFunctional(int idFunctional) {
        this.idFunctional = idFunctional;
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

    public void setSkNumber(String skNumber) {
        this.skNumber = skNumber;
    }

    public String getSkDate() {
        return skDate;
    }

    public void setSkDate(String skDate) {
        this.skDate = skDate;
    }
    
}
