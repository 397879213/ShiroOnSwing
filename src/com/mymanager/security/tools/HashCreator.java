package com.mymanager.security.tools;

import org.apache.shiro.crypto.RandomNumberGenerator;
import org.apache.shiro.crypto.SecureRandomNumberGenerator;
import org.apache.shiro.crypto.hash.Md5Hash;
import org.apache.shiro.crypto.hash.Sha256Hash;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author agung
 */
public class HashCreator {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        generatePassword("admin1234");
    }

    private static void generatePassword(String plainTextPassword) {
        Md5Hash md5Pass = new Md5Hash(plainTextPassword);
        System.out.println("username pass : " + md5Pass);
    }

}
