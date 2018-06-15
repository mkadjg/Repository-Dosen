/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.dto;

import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author sandi
 */
public class FileDto {
    int idTranFile;
    int state;
    String nameFile;
    int idLecturer;
    String nameLecturer;
    int idDetail;
    String nameDokumen;
    MultipartFile file;
    String information;
    int idFunctional;

    public String getInformation() {
        return information;
    }

    public void setInformation(String information) {
        this.information = information;
    }

    public int getIdFunctional() {
        return idFunctional;
    }

    public void setIdFunctional(int idFunctional) {
        this.idFunctional = idFunctional;
    }

    public MultipartFile getFile() {
        return file;
    }

    public void setFile(MultipartFile file) {
        this.file = file;
    }

    public int getIdTranFile() {
        return idTranFile;
    }

    public void setIdTranFile(int idTranFile) {
        this.idTranFile = idTranFile;
    }

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }

    public String getNameFile() {
        return nameFile;
    }

    public void setNameFile(String nameFile) {
        this.nameFile = nameFile;
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

    public int getIdDetail() {
        return idDetail;
    }

    public void setIdDetail(int idDetail) {
        this.idDetail = idDetail;
    }

    public String getNameDokumen() {
        return nameDokumen;
    }

    public void setNameDokumen(String nameDokumen) {
        this.nameDokumen = nameDokumen;
    }
}
