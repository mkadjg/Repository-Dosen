/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.service;

import java.util.List;
import java.util.Map;

/**
 *
 * @author Jaret
 */
public interface ReportService {
    public List<Map> getDataReportResume(String idFaculty, String idMajor); 
}
