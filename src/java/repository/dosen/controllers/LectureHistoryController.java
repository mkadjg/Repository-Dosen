/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.controllers;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import repository.dosen.dto.FileDto;
import repository.dosen.dto.LectureHistory;
import repository.dosen.service.FileService;
import repository.dosen.service.LectureHistoryService;

/**
 *
 * @author Jaret
 */
@Controller
public class LectureHistoryController {
    
    @Autowired
    FileService fileService;
    
    @Autowired
    LectureHistoryService lectureHistoryService;
    
    @RequestMapping(value = "/saveLectureHistory", method = RequestMethod.POST)
    @ResponseBody
    public String saveLectureHistory(LectureHistory lectureHistory){
        String path = "";
        try {
            byte[] bytes = lectureHistory.getFile().getBytes();
            String rootPath = "C:\\Users\\Jaret\\Documents\\NetBeansProjects\\Repository-Dosen\\web\\assets\\RiwayatMengajar\\" + lectureHistory.getIdLecturer();
            File dir = new File(rootPath);
            if (!dir.exists()) 
                    dir.mkdirs();

            File serverFile = new File(dir.getAbsolutePath()
                            + File.separator + lectureHistory.getFile().getOriginalFilename());
            BufferedOutputStream stream = new BufferedOutputStream(
                            new FileOutputStream(serverFile));
            stream.write(bytes);
            stream.close(); 
        } catch (Exception e) {
            return "gagal upload " + lectureHistory.getFile().getName() + " => " + e.getMessage();
        }
        path = "assets/RiwayatMengajar/" + lectureHistory.getIdLecturer() + "/" + lectureHistory.getFile().getOriginalFilename();
        FileDto fileDto = new FileDto();
        fileDto.setIdTranFile(0);
        fileDto.setIdLecturer(lectureHistory.getIdLecturer());
        fileDto.setNameFile(path);
        fileDto.setIdDetail(lectureHistory.getIdDetail());
        fileDto.setState(1);
        fileService.saveFile(fileDto);
        lectureHistoryService.saveLectureHistory(lectureHistory);
        
        return null;
    }
}
