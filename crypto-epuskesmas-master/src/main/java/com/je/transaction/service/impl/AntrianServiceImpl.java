/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.je.transaction.service.impl;

import com.je.transaction.model.AntrianModel;
import com.je.transaction.dao.AntrianDao;
import com.je.transaction.service.AntrianService;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author teguh
 */

@Service("antrianService")
public class AntrianServiceImpl implements AntrianService{
    @Autowired
    private AntrianDao antriandao;
    

    public List<AntrianModel> getAll(int start, int limit, String order, Map<String, String> params) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public AntrianModel getBy(String id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public long BuatAntrian(AntrianModel antrianmodel) {
        long result = 0;
        result = antriandao.BuatAntrian(antrianmodel);
        return result;
    }

    public long update(AntrianModel antrianmodel) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public String buatIdKode() {
         String urutan = "";
        urutan = antriandao.buatIdKode();
        return urutan;
    }

    public int countantrian() {
        int count = 0;
        count = antriandao.countantrian();
        return count;
    }

    public AntrianModel getnoantrian(String idlogin) {
        AntrianModel antrian = new AntrianModel();
        antrian = antriandao.getnoantrian(idlogin);
        return antrian;
    }

    public long delete(AntrianModel antrianmodel) {
        long result = 0;
        
        result = antriandao.delete(antrianmodel);
        
        return result;
    }
    
}
