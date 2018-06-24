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
public class TranProgressSertificationDto {
    int idTranProgress;
    int state;
    int idDetail;
    int idProgresshistory;

    public int getIdTranProgress() {
        return idTranProgress;
    }

    public void setIdTranProgress(int idTranProgress) {
        this.idTranProgress = idTranProgress;
    }

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }

    public int getIdDetail() {
        return idDetail;
    }

    public void setIdDetail(int idDetail) {
        this.idDetail = idDetail;
    }

    public int getIdProgresshistory() {
        return idProgresshistory;
    }

    public void setIdProgresshistory(int idProgresshistory) {
        this.idProgresshistory = idProgresshistory;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getNumberRequirement() {
        return numberRequirement;
    }

    public void setNumberRequirement(int numberRequirement) {
        this.numberRequirement = numberRequirement;
    }
    String description;
    int numberRequirement;
}
