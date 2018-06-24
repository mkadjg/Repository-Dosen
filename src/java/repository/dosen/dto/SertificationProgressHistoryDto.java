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
public class SertificationProgressHistoryDto {
    int idProgressHistory;
    String idLecturer;

    public String getIdLecturer() {
        return idLecturer;
    }

    public void setIdLecturer(String idLecturer) {
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
