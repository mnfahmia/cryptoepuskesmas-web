/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.je.transaction.dao.impl;

import com.je.transaction.dao.LoginPasienDao;
import com.je.transaction.model.LoginPasien;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.RowMapperResultSetExtractor;
import org.springframework.stereotype.Repository;

/**
 *
 * @author teguh
 */
@Repository("LoginpasienDao")
public class LoginPasienDaoImpl implements LoginPasienDao{
    @Autowired
    private JdbcTemplate jdbcTemplate;
    
    
    private static final String SQL_INSERT_LOGIN = "INSERT INTO _loginpasien ("
            + "id_loginpasien,"
            + "pasien_ktp,"
            + "passwod,"
            + "_id_pasien) VALUES (?,?,?,?)";
    
    private static final String SQL_GET_NOKTP = "select * from _loginpasien WHERE pasien_ktp =?";
    private static final String SQL_BUAT_ID = "SELECT IFNULL(MAX(CONVERT(id_loginpasien, SIGNED INTEGER)),0) AS kode FROM _loginpasien";
    
    public List<LoginPasien> getAll(int start, int limit, String order, Map<String, String> params) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public LoginPasien getById(String id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public long insert(LoginPasien loginPasien) {
        long result = 0;
        try {
            result = jdbcTemplate.update(SQL_INSERT_LOGIN, new Object[]{
              loginPasien.getId_login(),
              loginPasien.getNo_ktp(),
              loginPasien.getPassword(),
              loginPasien.getId_pasien()
            
            });
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return result;
    }

    public long update(LoginPasien loginPasien) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public long delete(LoginPasien loginPasien) {
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

    public LoginPasien getBy(String id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public LoginPasien getnoktp(String noktp) {
        LoginPasien result = new LoginPasien();
        
        try{
            result = jdbcTemplate.queryForObject(SQL_GET_NOKTP, new Object[]{noktp}, new RowMapper<LoginPasien>() {
                public LoginPasien mapRow(ResultSet rs, int i) throws SQLException {
                    LoginPasien log = new LoginPasien();
                    
                    log.setId_login(rs.getString("id_loginpasien"));
                    log.setId_pasien(rs.getString("_id_pasien"));
                    log.setNo_ktp(rs.getString("pasien_ktp"));
                    log.setPassword(rs.getString("passwod"));
                    return log;
                }
            });
        
            return result;
        }catch(Exception e){
            return null;
        }
    }
    
}
