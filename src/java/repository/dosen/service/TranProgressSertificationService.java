/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.service;

import java.util.List;
import repository.dosen.dto.TranProgressSertificationDto;

/**
 *
 * @author Jaret
 */
public interface TranProgressSertificationService {
    public List<TranProgressSertificationDto> getTranProgressSertification(int idLecturer);
    public void saveTranProgressSertification(TranProgressSertificationDto tranProgressSertificationDto);
    public void deleteTranProgressSertification(int idLecturer);
}
