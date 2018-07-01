/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.dao;

import java.util.List;
import repository.dosen.models.TranProgressLecturer;

/**
 *
 * @author Jaret
 */
public interface TranProgressLecturerDao {
    public List<TranProgressLecturer> getTranProgressNidn(int idLecturer);
    public void saveTranProgressLecturer(TranProgressLecturer tranProgressLecturer);
}
