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
public class DetailFile implements Serializable {
    int idDetail;
    String nameDokumen;
    int idEvent;

    public int getIdEvent() {
        return idEvent;
    }

    public void setIdEvent(int idEvent) {
        this.idEvent = idEvent;
    }

    public int getIdDetail() {
        return idDetail;
    }

    public void setIdDetail(int idDetail) {
        this.idDetail = idDetail;
    }

    public String getNameDokumen() {
        return nameDokumen;
    }

    public void setNameDokumen(String nameDokumen) {
        this.nameDokumen = nameDokumen;
    }
    
    
}
