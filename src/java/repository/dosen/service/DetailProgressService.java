/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.service;

import java.util.List;
import repository.dosen.dto.DetailProgressDto;

/**
 *
 * @author Jaret
 */
public interface DetailProgressService {
    public List<DetailProgressDto> getDetailProgressNidn();
    public List<DetailProgressDto> getDetailProgressAssistant();
    public List<DetailProgressDto> getDetailProgressLectors();
    public List<DetailProgressDto> getDetailProgressHeadlectors();
    public List<DetailProgressDto> getDetailProgressProfessor();
    public List<DetailProgressDto> getDetailProgressSertification();
    public void saveDetailProgress(DetailProgressDto detailProgressDto);
    public void deleteDetailProgress(int idDetail);
    public List<DetailProgressDto> searchDetailProgress(String description, int idDetail);
}
