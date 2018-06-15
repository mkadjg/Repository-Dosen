/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.service;

import java.util.List;
import repository.dosen.dto.DetailFileDto;

/**
 *
 * @author Jaret
 */
public interface DetailFileService {
    public List<DetailFileDto> getDetailFileRecruitment();
    public List<DetailFileDto> getDetailFileNidn();
    public List<DetailFileDto> getDetailFileHistoryLecture();
    public List<DetailFileDto> getDetailFileHistoryStudy();
    public List<DetailFileDto> getDetailFileHistoryFunctional();
    public List<DetailFileDto> getDetailFileHistorySertification();
    public List<DetailFileDto> getDetailFileAssistant();
    public List<DetailFileDto> getDetailFileLectors();
    public List<DetailFileDto> getDetailFileHeadlectors();
    public List<DetailFileDto> getDetailFileProfessor();
    public List<DetailFileDto> getDetailFileSertification();
    public void saveDetailFile(DetailFileDto detailFileDto);
    public void deleteDetailFile(int idDetail);
    public List<DetailFileDto> searchDetailFile(String nameDokumen, int idEvent);
    public List<DetailFileDto> searchDetailFile(String nameDokumen);
}
