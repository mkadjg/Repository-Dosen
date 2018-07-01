/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.service;

import java.util.List;
import repository.dosen.dto.LecturerProgressHistoryDto;

/**
 *
 * @author Jaret
 */
public interface LecturerProgressHistoryService {
    public List<LecturerProgressHistoryDto> getLecturerProgressHistory();
    public List<LecturerProgressHistoryDto> getLecturerProgressHistoryByFaculty(String idFaculty);
    public List<LecturerProgressHistoryDto> getLecturerProgressHistoryByMajor(String idMajor);
    public void saveLecturerProgressHistory(LecturerProgressHistoryDto lecturerProgressHistoryDto);
}
