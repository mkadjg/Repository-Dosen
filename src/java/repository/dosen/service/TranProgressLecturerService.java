/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.service;

import java.util.List;
import repository.dosen.dto.TranProgressLecturerDto;

/**
 *
 * @author Jaret
 */
public interface TranProgressLecturerService {
    public List<TranProgressLecturerDto> getTranProgressNidn(int idLecturer);
    public void saveTranProgressLecturer(TranProgressLecturerDto tranProgressLecturerDto);
    public void deleteTranProgressLecturer (int idLecturer);
}
