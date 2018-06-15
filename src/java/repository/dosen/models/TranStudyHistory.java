/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.models;

import java.io.Serializable;

/**
 *
 * @author sandi
 */
public class TranStudyHistory implements Serializable {
    int idStudyHistory;
    String nameUniversity;
    int graduateYear;
    int joinYear;
    String studyProgram;
    String degree;
    MasterLecturer lecturer;
    MasterStudy study;
    TranFile tranFile;

    public TranFile getTranFile() {
        return tranFile;
    }

    public void setTranFile(TranFile tranFile) {
        this.tranFile = tranFile;
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

    public MasterLecturer getLecturer() {
        return lecturer;
    }

    public void setLecturer(MasterLecturer lecturer) {
        this.lecturer = lecturer;
    }

    public MasterStudy getStudy() {
        return study;
    }

    public void setStudy(MasterStudy study) {
        this.study = study;
    }
}
