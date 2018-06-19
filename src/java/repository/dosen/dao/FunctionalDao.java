/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.dao;

import java.util.List;
import repository.dosen.models.MasterFunctional;

/**
 *
 * @author Jaret
 */
public interface FunctionalDao {
    public List<MasterFunctional> getFunctional();
    public MasterFunctional getDataFunctional(int id);
}
