/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.dao;

import java.util.List;
import repository.dosen.models.TranProgressFunctional;

/**
 *
 * @author Jaret
 */
public interface TranProgressFunctionalDao {
    public List<TranProgressFunctional> getTranProgressAssistant(int idLecturer);
    public void saveTranProgressFunctional(TranProgressFunctional tranProgressFunctional);
}
