/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package servlets;

import model.Itemcarrito;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import util.Conexion;

@WebServlet("/carrito")
public class Carrito extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int usuarioId = 1; 

        List<Itemcarrito> items = new ArrayList<>();

        try (Connection con = Conexion.getConexion()) {
            String sql = "SELECT p.nombre, p.precio, c.cantidad " +
                         "FROM carrito c JOIN productos p ON c.productos_id = p.id " +
                         "WHERE c.usuario_id=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, usuarioId);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                items.add(new Itemcarrito(
                        rs.getString("nombre"),
                        rs.getDouble("precio"),
                        rs.getInt("cantidad")
                ));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        
        request.setAttribute("items", items);
        RequestDispatcher rd = request.getRequestDispatcher("jsp/carrito.jsp");
        rd.forward(request, response);
    }
}
