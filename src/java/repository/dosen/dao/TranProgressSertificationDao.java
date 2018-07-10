/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.dao;

import java.util.List;
import repository.dosen.models.TranProgressSertification;

/**
 *
 * @author Jaret
 */
public interface TranProgressSertificationDao {
    public List<TranProgressSertification> getTranProgressSertification(int idLecturer);
    public void saveTranProgressSertification(TranProgressSertification tranProgressSertification);
    public void deleteTranProgressSertification(int idLecturer);
}
