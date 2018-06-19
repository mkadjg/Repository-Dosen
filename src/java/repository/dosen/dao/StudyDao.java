/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.dao;

import java.util.List;
import repository.dosen.models.MasterStudy;

/**
 *
 * @author sandi
 */
public interface StudyDao {
     public MasterStudy getDataStudy(int id);
     public List<MasterStudy> getStudy();
}
