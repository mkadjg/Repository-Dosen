/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.dto;
/**
 *
 * @author sandi
 */
public class LectureHistory {
    int idLectureHistory;
    int year;
    String semester;
    int idLecturer;
    String idLecture;
    String nameLecture;
    int idTranFile;
    int idDetail;
    String nameDokumen;
    String pathFile;

    public String getNameDokumen() {
        return nameDokumen;
    }

    public void setNameDokumen(String nameDokumen) {
        this.nameDokumen = nameDokumen;
    }
    
    public String getPathFile() {
        return pathFile;
    }

    public void setPathFile(String pathFile) {
        this.pathFile = pathFile;
    }
    
    public int getIdDetail() {
        return idDetail;
    }

    public void setIdDetail(int idDetail) {
        this.idDetail = idDetail;
    }

    public int getIdTranFile() {
        return idTranFile;
    }

    public void setIdTranFile(int idTranFile) {
        this.idTranFile = idTranFile;
    }

    public String getNameLecture() {
        return nameLecture;
    }

    public void setNameLecture(String nameLecture) {
        this.nameLecture = nameLecture;
    }
    
    public int getIdLectureHistory() {
        return idLectureHistory;
    }

    public void setIdLectureHistory(int idLectureHistory) {
        this.idLectureHistory = idLectureHistory;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }

    public String getSemester() {
        return semester;
    }

    public void setSemester(String semester) {
        this.semester = semester;
    }

    public int getIdLecturer() {
        return idLecturer;
    }

    public void setIdLecturer(int idLecturer) {
        this.idLecturer = idLecturer;
    }

    public String getIdLecture() {
        return idLecture;
    }

    public void setIdLecture(String idLecture) {
        this.idLecture = idLecture;
    }
    
}
