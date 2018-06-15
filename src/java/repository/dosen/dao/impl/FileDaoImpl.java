 /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.dao.impl;

import org.springframework.stereotype.Repository;
import repository.dosen.dao.FileDao;
import repository.dosen.models.TranFile;

/**
 *
 * @author Jaret
 */
@Repository
public class FileDaoImpl extends HibernateUtil implements FileDao{

    @Override
    public void saveFile(TranFile tranFile) {
        getSession().saveOrUpdate(tranFile);
    }
    
}
