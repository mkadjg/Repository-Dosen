/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.dao;

import java.util.List;
import repository.dosen.models.DetailProgress;

/**
 *
 * @author Jaret
 */
public interface DetailProgressDao {
    public List<DetailProgress> getDetailProgressNidn();
    public List<DetailProgress> getDetailProgressAssistant();
    public List<DetailProgress> getDetailProgressLectors();
    public List<DetailProgress> getDetailProgressHeadlectors();
    public List<DetailProgress> getDetailProgressProfessor();
    public List<DetailProgress> getDetailProgressSertification();
    public void saveDetailProgress(DetailProgress detailProgress);
    public void deleteDetailProgress(DetailProgress detailProgress);
    public List<Object[]> searchDetailProgress(String description, int idEvent);
    public DetailProgress getDataDetailProgress(int idDetail);
}
