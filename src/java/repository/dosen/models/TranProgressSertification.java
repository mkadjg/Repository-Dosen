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
public class TranProgressSertification implements Serializable{
    int idTranProgress;
    int state;
    DetailProgress detail;
    SertificationProgressHistory progressHistory;

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

    public DetailProgress getDetail() {
        return detail;
    }

    public void setDetail(DetailProgress detail) {
        this.detail = detail;
    }

    public SertificationProgressHistory getProgressHistory() {
        return progressHistory;
    }

    public void setProgressHistory(SertificationProgressHistory progressHistory) {
        this.progressHistory = progressHistory;
    }
}
