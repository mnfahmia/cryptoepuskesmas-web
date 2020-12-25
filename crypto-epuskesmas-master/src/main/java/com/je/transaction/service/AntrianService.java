/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.je.transaction.service;

import com.je.transaction.model.AntrianModel;
import java.util.List;
import java.util.Map;

/**
 *
 * @author teguh
 */
public interface AntrianService {
     public List<AntrianModel> getAll(int start, int limit, String order, Map<String, String> params);
    public AntrianModel getBy(String id);
    public long BuatAntrian(AntrianModel antrianmodel);
    public long update(AntrianModel antrianmodel);
    public String buatIdKode();
    public int countantrian();
    public AntrianModel getnoantrian(String idlogin);
    public long delete(AntrianModel antrianmodel);
}
