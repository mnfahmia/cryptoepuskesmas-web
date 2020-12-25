/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.je.transaction.dao.impl;

import com.google.gson.Gson;
import com.je.transaction.model.AntrianModel;
import com.je.transaction.dao.AntrianDao;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

/**
 *
 * @author teguh
 */
@Repository("AntrianDao")
public class AntrianDaoImpl implements AntrianDao{
    
   @Autowired
    private JdbcTemplate jdbcTemplate;

     private static final String SQL_GET_idlogin = "select no_antrian from _antrianpasien WHERE id_loginpasien=?";
     private static final String SQL_COUNT_antrian = "SELECT COUNT(*) FROM _antrianpasien";
     private static final String SQL_DELETE_antrian = "Delete from _antrianpasien WHERE id_loginpasien = ?";
     private static final String SQL_BUAT_ID = "SELECT IFNULL(MAX(CONVERT(id_antrianpasien, SIGNED INTEGER)),0) AS kode FROM _antrianpasien";
         private static final String SQL_INSERT_antrian = "INSERT INTO _antrianpasien ("
            + "id_antrianpasien,"
            + "status,"
            + "no_antrian,"
            + "id_loginpasien) VALUES (?,?,?,?)";
    
    public List<AntrianModel> getAll(int start, int limit, String order, Map<String, String> params) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public AntrianModel getBy(String id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public long BuatAntrian(AntrianModel antrianmodel) {
        long result = 0;
        try {
            result = jdbcTemplate.update(SQL_INSERT_antrian, new Object[]{
              antrianmodel.getId_antrianpasien(),
              antrianmodel.getStatus(),
              antrianmodel.getNo_antrian(),
              antrianmodel.getId_loginpasien()
            
            });
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return result;
    }

    public long update(AntrianModel antrianmodel) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public String buatIdKode() {
         int banyakData = jdbcTemplate.queryForInt(SQL_BUAT_ID);
        int nomorBerikutnya = banyakData + 1;
        String urutan = "";
        if (banyakData == 0) {
            urutan = "1";
        } else {
            urutan = String.valueOf(nomorBerikutnya);
        }

        return urutan;
    }

    public AntrianModel getnoantrian(String id) {
        AntrianModel result = new AntrianModel();
       
     
        try{
            result = jdbcTemplate.queryForObject(SQL_GET_idlogin, new Object[]{id}, new RowMapper<AntrianModel>() {
                
                public AntrianModel mapRow(ResultSet rs, int i) throws SQLException {
                    AntrianModel hasil = new AntrianModel();
                    hasil.setNo_antrian(rs.getString("no_antrian"));
                 
                    return hasil;
                }
                
            });
           
            return result;
        
        }catch(Exception e){
        
            return null;
        
        }
        

    }

    public long delete(AntrianModel antrianmodel) {
        long result = 0;
        result = jdbcTemplate.update(SQL_DELETE_antrian, new Object[]{
        antrianmodel.getId_loginpasien()
        });
        
        return result;
    }

    public int countantrian() {
        int jumlah = 0;
        
        jumlah = jdbcTemplate.queryForInt(SQL_COUNT_antrian);
        
        return jumlah;
    }
    
}
