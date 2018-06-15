/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.dao;

import java.util.List;
import repository.dosen.models.DetailFile;

/**
 *
 * @author Jaret
 */
public interface DetailFileDao {
    public List<DetailFile> getDetailFileRecruitment();
    public List<DetailFile> getDetailFileHistoryLecture();
    public List<DetailFile> getDetailFileHistoryStudy();
    public List<DetailFile> getDetailFileHistoryFunctional();
    public List<DetailFile> getDetailFileHistorySertification();
    public List<DetailFile> getDetailFileNidn();
    public List<DetailFile> getDetailFileAssistant();
    public List<DetailFile> getDetailFileLectors();
    public List<DetailFile> getDetailFileHeadlectors();
    public List<DetailFile> getDetailFileProfessor();
    public List<DetailFile> getDetailFileSertification();
    public void saveDetailFile(DetailFile detailFile);
    public void deleteDetailFile(DetailFile detailFile);
    public List<Object[]> searchDetailFile(String nameDokumen, int idEvent);
    public List<Object[]> searchDetailFile(String nameDokumen);
    public DetailFile getDataDetailFile(int idDetail);
}
