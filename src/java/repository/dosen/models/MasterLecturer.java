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
public class MasterLecturer implements Serializable {
    int idLecturer;
    
    String nidn;
    String nameLecturer;
    String address;
    String email;
    String numberPhone;
    String birthdate;
    String birthplace;
    
    String username;
    String password;
    
    MasterMajor major;
    MasterGender gender;
    MasterReligion religion;

    public String getNidn() {
        return nidn;
    }

    public void setNidn(String nidn) {
        this.nidn = nidn;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
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

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getNumberPhone() {
        return numberPhone;
    }

    public void setNumberPhone(String numberPhone) {
        this.numberPhone = numberPhone;
    }

    public String getBirthdate() {
        return birthdate;
    }

    public void setBirthdate(String birthdate) {
        this.birthdate = birthdate;
    }

    public String getBirthplace() {
        return birthplace;
    }

    public void setBirthplace(String birthplace) {
        this.birthplace = birthplace;
    }

    public MasterMajor getMajor() {
        return major;
    }

    public void setMajor(MasterMajor major) {
        this.major = major;
    }

    public MasterGender getGender() {
        return gender;
    }

    public void setGender(MasterGender gender) {
        this.gender = gender;
    }

    public MasterReligion getReligion() {
        return religion;
    }

    public void setReligion(MasterReligion religion) {
        this.religion = religion;
    }
    
    
}
