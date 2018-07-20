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
public class StudyHistory {
    int idStudyHistory;
    String nameUniversity;
    String studyProgram;
    int graduateYear;
    int joinYear;
    String degree;
    int idLecturer;
    String nameLecturer;
    int idStudy;
    String studyDescription;
    int idDetail;
    String nameDokumen;
    int idTranFile;
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

    public int getJoinYear() {
        return joinYear;
    }

    public void setJoinYear(int joinYear) {
        this.joinYear = joinYear;
    }
    
    public String getStudyProgram() {
        return studyProgram;
    }

    public void setStudyProgram(String studyProgram) {
        this.studyProgram = studyProgram;
    }
    
    public String getStudyDescription() {
        return studyDescription;
    }

    public void setStudyDescription(String studyDescription) {
        this.studyDescription = studyDescription;
    }

    public int getIdStudyHistory() {
        return idStudyHistory;
    }

    public void setIdStudyHistory(int idStudyHistory) {
        this.idStudyHistory = idStudyHistory;
    }

    public String getNameUniversity() {
        return nameUniversity;
    }

    public void setNameUniversity(String nameUniversity) {
        this.nameUniversity = nameUniversity;
    }

    public int getGraduateYear() {
        return graduateYear;
    }

    public void setGraduateYear(int graduateYear) {
        this.graduateYear = graduateYear;
    }

    public String getDegree() {
        return degree;
    }

    public void setDegree(String degree) {
        this.degree = degree;
    }

    public int getIdLecturer() {
        return idLecturer;
    }

    public void setIdLecturer(int idLecturer) {
        this.idLecturer = idLecturer;
    }

    public String getNameLecturer() {
        return nameLecturer;
    }

    public void setNameLecturer(String nameLecturer) {
        this.nameLecturer = nameLecturer;
    }

    public int getIdStudy() {
        return idStudy;
    }

    public void setIdStudy(int idStudy) {
        this.idStudy = idStudy;
    }
}
