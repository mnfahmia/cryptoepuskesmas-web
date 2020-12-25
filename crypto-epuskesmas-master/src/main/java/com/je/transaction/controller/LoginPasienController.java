/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.je.transaction.controller;

import com.api.nexmedia.util.AES256;
import com.google.gson.Gson;
import com.je.master.model.Pasien;
import com.je.master.service.PasienService;
import com.je.transaction.model.LoginPasien;
import com.je.transaction.service.LoginPasienService;
import com.je.util.Constants;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author teguh
 */
@Controller
public class LoginPasienController {
      @Autowired
    private PasienService pasienService;
      
      @Autowired
      private LoginPasienService loginpasService;
      
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
    
    @SuppressWarnings("unchecked")
    @RequestMapping(value = "/pasien/daftar", method = RequestMethod.POST, produces = "application/json")
    public Map<String, Object> insert(@RequestBody final Map<String, Object> params) throws ParseException {
    
    Map<String, Object> loginMap = (Map<String, Object>) params.get(Constants.data);
    
    Map<String, Object> response = new HashMap<String, Object>();
    Pasien pasien = new Pasien();
    LoginPasien logpasien = new LoginPasien();
    
          Date pasien_tgllahir = null;
        if(loginMap.get("pasien_tgllahir") instanceof String){
        	 String pasien_tgllahirString = (String)loginMap.get("pasien_tgllahir");
        	 pasien_tgllahir = formatter.parse(pasien_tgllahirString);
        }else{
               Long pasien_tgllahirLong = (Long)loginMap.get("pasien_tgllahir");
               pasien_tgllahir = new Date(pasien_tgllahirLong);
        }
    
        String ktpPasien = (String) loginMap.get("pasien_ktp");
        String namaPasien = (String) loginMap.get("pasien_nama");
        String password = (String) loginMap.get("password");
        String alamatPasien = (String) loginMap.get("pasien_alamat");
        String tempatLahirPasien = (String) loginMap.get("pasien_tempatlahir");
        String teleponPasien = (String) loginMap.get("pasien_telepon");
        String jenkelPasien = (String) loginMap.get("pasien_jenkel");
        String agamaPasien = (String) loginMap.get("pasien_agama");
        String noAsuransiPasien = "";
        String jenisAsuransiPasien = "";
        String goldarPasien = (String) loginMap.get("pasien_goldar");
        String kelurahanPasien = "";
        String kecamatanPasien = "";
        String kotaKabupatenPasien = "";
        String provinsiPasien = "";
        String noKkPasien = "";
       
  
        
        pasien.setId_pasien(pasienService.buatIdKode());
        pasien.setPasien_ktp((String) AES256.encrypt(ktpPasien));
        pasien.setPasien_nama((String) AES256.encrypt(namaPasien));
        pasien.setPasien_alamat((String) AES256.encrypt(alamatPasien));
        pasien.setPasien_tempatlahir((String) AES256.encrypt(tempatLahirPasien));
        pasien.setPasien_tgllahir(new Timestamp(pasien_tgllahir.getTime()));
        pasien.setPasien_telepon((String) AES256.encrypt(teleponPasien));
        pasien.setPasien_jenkel((String) AES256.encrypt(jenkelPasien));
        pasien.setPasien_agama((String) AES256.encrypt(agamaPasien));
        pasien.setPasien_noasuransi((String) AES256.encrypt(noAsuransiPasien));
        pasien.setPasien_jenisasuransi((String) AES256.encrypt(jenisAsuransiPasien));
        pasien.setPasien_goldar((String) AES256.encrypt(goldarPasien));
        pasien.setPasien_kelurahan((String) AES256.encrypt(kelurahanPasien));
        pasien.setPasien_kecamatan((String) AES256.encrypt(kecamatanPasien));
        pasien.setPasien_kotakabupaten((String) AES256.encrypt(kotaKabupatenPasien));
        pasien.setPasien_provinsi((String) AES256.encrypt(provinsiPasien));
        pasien.setPasien_nokk((String) AES256.encrypt(noKkPasien));
        
        logpasien.setId_login(loginpasService.buatIdKode());
        logpasien.setNo_ktp(ktpPasien);
        logpasien.setPassword(password);
        logpasien.setId_pasien(pasienService.buatIdKode());
        
        
        
        long passien = 0;
        long daftar = 0 ;
        
        passien = pasienService.insert(pasien);
        daftar = loginpasService.insert(logpasien);
        
        if(passien > 0 && daftar > 0){
        
           response.put("statusCode", "00");
           response.put(Constants.STATUS, "success");
        
        }else{
         response.put("statusCode", "01");
         response.put(Constants.STATUS, "Gagal");
        }
        
    
    return response;
    }
    
    
    
    @SuppressWarnings("unchecked")
    @RequestMapping(value = "/pasien/login", method = RequestMethod.POST, produces = "application/json")
    public Map<String,Object> login (@RequestBody final Map<String, Object> params){
        
    Map<String, Object> loginMap = (Map<String, Object>) params.get(Constants.data);
      Map<String, Object> response = new HashMap<String, Object>();
        String ktpPasien = (String) loginMap.get("pasien_ktp");
        String password = (String) loginMap.get("password");
        
         LoginPasien logpasien = new LoginPasien();
         
         logpasien = loginpasService.getnoktp(ktpPasien);
      
         
         if(logpasien != null){
             
             if(logpasien.getNo_ktp().equals(ktpPasien)){
                 if(logpasien.getPassword().equals(password)){
                     
                         final Map<String, String> isiData = new HashMap<String, String>();
                         
                        isiData.put("id_login", logpasien.getId_login());
                        isiData.put("id_pasien", logpasien.getId_pasien());
                        isiData.put("no_ktp", logpasien.getNo_ktp());
                        
                        
                        response.put("statusCode", "00");
                        response.put(Constants.STATUS, "success");
                        response.put("data",isiData);
                 
                 }else{
                        response.put("statusCode", "01");
                        response.put(Constants.STATUS, "Password Salah");
                 }
                 
             
             }else{
                  response.put("statusCode", "01");
                  response.put(Constants.STATUS, "Username Salah");
             }
             
             
         }else{
           response.put("statusCode", "01");
           response.put(Constants.STATUS, "User Belum Terdaftar");
         
         }
    
   
    
    
    
    return response;
    }
    
}
