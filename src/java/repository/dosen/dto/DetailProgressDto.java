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
public class DetailProgressDto {
    int idDetail;
    String description;
    int numberRequirement;
    int idEvent;

    public int getIdDetail() {
        return idDetail;
    }

    public void setIdDetail(int idDetail) {
        this.idDetail = idDetail;
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

    public int getIdEvent() {
        return idEvent;
    }

    public void setIdEvent(int idEvent) {
        this.idEvent = idEvent;
    }
    
    
}
