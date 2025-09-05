package servlets;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.IOException;
import java.sql.*;
import util.Conexion;

@WebServlet("/agregarCarrito")
public class Agregarcarrito extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Obtenemos producto_id desde el formulario
        int productoId = Integer.parseInt(request.getParameter("producto_id"));
        int usuarioId = 1; 

        try (Connection con = Conexion.getConexion()) {
            
            String checkSql = "SELECT cantidad FROM carrito WHERE usuario_id=? AND producto_id=?";
            PreparedStatement checkStmt = con.prepareStatement(checkSql);
            checkStmt.setInt(1, usuarioId);
            checkStmt.setInt(2, productoId);
            ResultSet rs = checkStmt.executeQuery();

            if (rs.next()) {
                
                int cantidadActual = rs.getInt("cantidad");
                String updateSql = "UPDATE carrito SET cantidad=? WHERE usuario_id=? AND producto_id=?";
                PreparedStatement updateStmt = con.prepareStatement(updateSql);
                updateStmt.setInt(1, cantidadActual + 1);
                updateStmt.setInt(2, usuarioId);
                updateStmt.setInt(3, productoId);
                updateStmt.executeUpdate();
            } else {
               
                String insertSql = "INSERT INTO carrito(usuario_id, producto_id, cantidad) VALUES(?, ?, ?)";
                PreparedStatement insertStmt = con.prepareStatement(insertSql);
                insertStmt.setInt(1, usuarioId);
                insertStmt.setInt(2, productoId);
                insertStmt.setInt(3, 1);
                insertStmt.executeUpdate();
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        
        response.sendRedirect(request.getHeader("referer"));
    }
}
