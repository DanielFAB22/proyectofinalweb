/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package util;

import java.sql.Connection;

/**
 *
 * @author Daniel Avila
 */
public class Testconexion {
     public static void main(String[] args) {
        Connection con = Conexion.getConexion();

        if (con != null) {
            System.out.println("Conexión exitosa a PostgreSQL");
        } else {
            System.out.println("Error en la conexión");
        }
    }
}
