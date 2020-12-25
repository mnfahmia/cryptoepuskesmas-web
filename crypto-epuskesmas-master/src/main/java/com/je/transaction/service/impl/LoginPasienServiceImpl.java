/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.je.transaction.service.impl;

import com.je.transaction.dao.LoginPasienDao;
import com.je.transaction.model.LoginPasien;
import com.je.transaction.service.LoginPasienService;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author teguh
 */
@Service("loginservice")
@Transactional
public class LoginPasienServiceImpl implements LoginPasienService{
    
    @Autowired
    private LoginPasienDao login;

    public List<LoginPasien> getAll(int start, int limit, String order, Map<String, String> params) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public LoginPasien getById(String id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public long insert(LoginPasien loginPasien) {
        return login.insert(loginPasien);
    }

    public long update(LoginPasien loginPasien) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public String buatIdKode() {
            String urutan = "";
        urutan = login.buatIdKode();
        
        return urutan;
    }

    public long delete(LoginPasien loginPasien) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public LoginPasien getnoktp(String noktp) {
        LoginPasien log = new LoginPasien();
        log = login.getnoktp(noktp);
        
        return log;
    }
    
}
