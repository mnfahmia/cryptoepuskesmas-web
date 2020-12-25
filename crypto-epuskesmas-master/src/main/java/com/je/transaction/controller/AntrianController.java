/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.je.transaction.controller;

import com.je.transaction.model.AntrianModel;
import com.je.transaction.service.AntrianService;
import com.je.util.Constants;
import java.text.ParseException;
import java.util.HashMap;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author teguh
 */
@Controller
public class AntrianController {
    
    @Autowired
   private AntrianService antrianservice;
    
    
    @RequestMapping(value = "/pasien/noantrian/{id_login}", method = RequestMethod.GET, produces = "application/json")
    public Map<String, Object> GetNoAntrian(@PathVariable("id_login") String id_login) {
    AntrianModel antrian = new AntrianModel();
    Map<String, Object> response = new HashMap<String, Object>();
    
    antrian = antrianservice.getnoantrian(id_login);
    
    int count = antrianservice.countantrian();
    
    
        if(antrian != null){
            response.put("statusCode", "00");
            response.put(Constants.STATUS, "success");
            response.put("noantrian", antrian.getNo_antrian());
            response.put("totalantrian", count);
            
            
            
            
        }else{
            
            response.put("statusCode", "01");
            response.put("noantrian", "");
            response.put(Constants.STATUS, "Tidak Ditemukan");
            response.put("totalantrian", count);
        
        }
    
    
    return response;
    }
    
    
    @RequestMapping(value = "/pasien/noantrian/{id_login}", method = RequestMethod.DELETE, produces = "application/json")
    public Map<String, Object> DeleteAntrian(@PathVariable("id_login") String id_login) {
    
        AntrianModel antri = new AntrianModel();
    Map<String, Object> response = new HashMap<String, Object>();
    
    antri.setId_loginpasien(id_login);
    
    long result = 0;
    
    result = antrianservice.delete(antri);
    
    if(result > 0){
        response.put("statusCode", "00");
        response.put(Constants.STATUS, "success");
    }else{
    
        response.put("statusCode", "01");
        response.put(Constants.STATUS, "Tidak Ditemukan");
    }
    
    return response;
    }
    
     @SuppressWarnings("unchecked")
    @RequestMapping(value = "/pasien/dapatkanantrian", method = RequestMethod.POST, produces = "application/json")
    public Map<String, Object> BuatAntrian(@RequestBody final Map<String, Object> params) throws ParseException {
    
    Map<String, Object> loginMap = (Map<String, Object>) params.get(Constants.data);
    
     Map<String, Object> response = new HashMap<String, Object>();
    AntrianModel antri = new AntrianModel();
    
    String id_login= (String) loginMap.get("id_login");
    
    int count = antrianservice.countantrian();
    int antrian = count+1;
    String insertno = String.valueOf(antrian);
    
    antri.setId_antrianpasien(antrianservice.buatIdKode());
    antri.setId_loginpasien(id_login);
    antri.setNo_antrian(antrianservice.buatIdKode());
    antri.setStatus("open");
    
    long result = 0 ;
    
    result = antrianservice.BuatAntrian(antri);
    
    if(result > 0){
    
        response.put("statusCode", "00");
        response.put(Constants.STATUS, "success");
        
    }else{
        response.put("statusCode", "01");
        response.put(Constants.STATUS, "Gagal Mnedapatkan No Antrian");
    }
    
    return response;
    }
}
