/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.je.transaction.model;

/**
 *
 * @author teguh
 */
public class AntrianModel {
    private String id_antrianpasien;
    private String status;
    private String no_antrian;
    private String id_loginpasien;

    public String getId_antrianpasien() {
        return id_antrianpasien;
    }

    public void setId_antrianpasien(String id_antrianpasien) {
        this.id_antrianpasien = id_antrianpasien;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getNo_antrian() {
        return no_antrian;
    }

    public void setNo_antrian(String no_antrian) {
        this.no_antrian = no_antrian;
    }

    public String getId_loginpasien() {
        return id_loginpasien;
    }

    public void setId_loginpasien(String id_loginpasien) {
        this.id_loginpasien = id_loginpasien;
    }
    
    
    
}
