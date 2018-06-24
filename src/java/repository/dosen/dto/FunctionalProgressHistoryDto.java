/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.dto;

/*
 *
 * @author Jaret
 */
public class FunctionalProgressHistoryDto {
    int idProgressHistory;
    int idLecturer;
    int idFunctional;
    String nameFunctional;
    String nameMajor;
    String nameFaculty;

    public String getNameMajor() {
        return nameMajor;
    }

    public void setNameMajor(String nameMajor) {
        this.nameMajor = nameMajor;
    }

    public String getNameFaculty() {
        return nameFaculty;
    }

    public void setNameFaculty(String nameFaculty) {
        this.nameFaculty = nameFaculty;
    }

    public int getIdFunctional() {
        return idFunctional;
    }

    public void setIdFunctional(int idFunctional) {
        this.idFunctional = idFunctional;
    }

    public String getNameFunctional() {
        return nameFunctional;
    }

    public void setNameFunctional(String nameFunctional) {
        this.nameFunctional = nameFunctional;
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
    String nameLecturer;
    int state;

    public int getIdProgressHistory() {
        return idProgressHistory;
    }

    public void setIdProgressHistory(int idProgressHistory) {
        this.idProgressHistory = idProgressHistory;
    }

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }
}
