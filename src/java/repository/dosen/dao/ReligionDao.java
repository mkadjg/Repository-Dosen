/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.dao;

import java.util.List;
import repository.dosen.models.MasterReligion;

/**
 *
 * @author sandi
 */
public interface ReligionDao {
    public List<MasterReligion> getReligion();
    public MasterReligion getDataReligion(int idReligion);
}
