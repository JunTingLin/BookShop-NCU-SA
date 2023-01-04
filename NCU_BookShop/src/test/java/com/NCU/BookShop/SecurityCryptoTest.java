package com.NCU.BookShop;

import org.junit.Test;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

public class SecurityCryptoTest {

    @Test
    public void TestSecurityCrypto() {

        PasswordEncoder pe = new BCryptPasswordEncoder();
        String ecode = pe.encode("vili");
        System.out.println(ecode);
        boolean matches = pe.matches("admin", "$2a$10$FdNRmAeG9VTPy7.m7.CXmu5opagl1v876xqHS6n8dTW1/6SK1blra");
        System.out.println(matches);

        System.out.println();

        String ecode2 = pe.encode("123");
        System.out.println(ecode2);
        boolean matches2 = pe.matches("123", ecode2);
        System.out.println(matches2);

        // $2a$10$4HrYhe7nBj3aogISLLgRnux8t0V9CDWyCeM09J0AVt92fBbM6AUvm
        //boolean matches3 = pe.matches("1234", "$2a$10$4HrYhe7nBj3aogISLLgRnux8t0V9CDWyCeM09J0AVt92fBbM6AUvm");
        //System.out.println(matches3);
    }
}
