/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.service;

import java.util.List;
import repository.dosen.dto.SertificationProgressHistoryDto;

/**
 *
 * @author Jaret
 */
public interface SertificationProgressHistoryService {
    public List<SertificationProgressHistoryDto> getSertificationProgressHistory();
    public List<SertificationProgressHistoryDto> getSertificationProgressHistoryByFaculty(String idFaculty);
    public List<SertificationProgressHistoryDto> getSertificationProgressHistoryByMajor(String idMajor);
}
