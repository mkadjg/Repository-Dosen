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
public class TranProgressLecturer implements Serializable{
    int idTranProgress;
    int state;
    DetailProgress detail;
    LecturerProgressHistory progressHistory;

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

    public LecturerProgressHistory getProgressHistory() {
        return progressHistory;
    }

    public void setProgressHistory(LecturerProgressHistory progressHistory) {
        this.progressHistory = progressHistory;
    }
}
