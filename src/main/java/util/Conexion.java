/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package util;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Daniel Avila
 */
public class Conexion {
     private static final String URL = "jdbc:postgresql://localhost:5432/musicalsite";
    private static final String USER = "postgres";
    private static final String PASSWORD = "4420255";

    public static Connection getConexion() {
        try {
            
            Class.forName("org.postgresql.Driver");

            
            return DriverManager.getConnection(URL, USER, PASSWORD);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
