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
public class FunctionalProgressHistory implements Serializable {
    int idProgressHistory;
    MasterLecturer lecturer;
    MasterFunctional functional;

    public MasterFunctional getFunctional() {
        return functional;
    }

    public void setFunctional(MasterFunctional functional) {
        this.functional = functional;
    }
    int state;

    public int getIdProgressHistory() {
        return idProgressHistory;
    }

    public void setIdProgressHistory(int idProgressHistory) {
        this.idProgressHistory = idProgressHistory;
    }

    public MasterLecturer getLecturer() {
        return lecturer;
    }

    public void setLecturer(MasterLecturer lecturer) {
        this.lecturer = lecturer;
    }

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }
}
