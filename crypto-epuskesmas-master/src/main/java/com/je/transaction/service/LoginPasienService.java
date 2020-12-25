/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.je.transaction.service;

import com.je.transaction.model.LoginPasien;
import java.util.List;
import java.util.Map;

/**
 *
 * @author teguh
 */
public interface LoginPasienService {
    public List<LoginPasien> getAll(int start, int limit, String order, Map<String, String> params);
    public LoginPasien getById(String id);
    public long insert(LoginPasien loginPasien);
    public long update(LoginPasien loginPasien);
    public String buatIdKode();
    public LoginPasien getnoktp(String noktp);
    public long delete(LoginPasien loginPasien);
}
