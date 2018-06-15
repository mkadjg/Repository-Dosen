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
public class MasterReligion implements Serializable {
    int idReligion;
    String nameReligion;

    public int getIdReligion() {
        return idReligion;
    }

    public void setIdReligion(int idReligion) {
        this.idReligion = idReligion;
    }

    public String getNameReligion() {
        return nameReligion;
    }

    public void setNameReligion(String nameReligion) {
        this.nameReligion = nameReligion;
    }
}
