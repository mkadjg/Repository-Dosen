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
public class TranFile implements Serializable{
    int idTranFile;
    int state;
    String nameFile;
    MasterLecturer lecturer;
    DetailFile detail;
    String information;
    int idFunctional;

    public String getInformation() {
        return information;
    }

    public void setInformation(String information) {
        this.information = information;
    }

    public int getIdFunctional() {
        return idFunctional;
    }

    public void setIdFunctional(int idFunctional) {
        this.idFunctional = idFunctional;
    }

    public int getIdTranFile() {
        return idTranFile;
    }

    public void setIdTranFile(int idTranFile) {
        this.idTranFile = idTranFile;
    }

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }

    public String getNameFile() {
        return nameFile;
    }

    public void setNameFile(String nameFile) {
        this.nameFile = nameFile;
    }

    public MasterLecturer getLecturer() {
        return lecturer;
    }

    public void setLecturer(MasterLecturer lecturer) {
        this.lecturer = lecturer;
    }

    public DetailFile getDetail() {
        return detail;
    }

    public void setDetail(DetailFile detail) {
        this.detail = detail;
    }
    
    
}
