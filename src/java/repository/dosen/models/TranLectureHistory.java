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
public class TranLectureHistory implements Serializable {
    int idLectureHistory;
    int year;
    String semester;
    MasterLecture lecture;
    MasterLecturer lecturer;
    TranFile tranFile;

    public TranFile getTranFile() {
        return tranFile;
    }

    public void setTranFile(TranFile tranFile) {
        this.tranFile = tranFile;
    }
    
    public MasterLecturer getLecturer() {
        return lecturer;
    }

    public void setLecturer(MasterLecturer lecturer) {
        this.lecturer = lecturer;
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

    public MasterLecture getLecture() {
        return lecture;
    }

    public void setLecture(MasterLecture lecture) {
        this.lecture = lecture;
    }
    
}
