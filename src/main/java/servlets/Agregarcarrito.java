package servlets;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.IOException;
import java.sql.*;
import util.Conexion;

@WebServlet("/Agregarcarrito")
public class Agregarcarrito extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Obtener parámetros
        int productosId = Integer.parseInt(request.getParameter("productos_id"));
        int usuarioId = 1;

        try (Connection con = Conexion.getConexion()) {

            String checkSql = "SELECT cantidad FROM carrito WHERE usuario_id=? AND productos_id=?";
            try (PreparedStatement checkStmt = con.prepareStatement(checkSql)) {
                checkStmt.setInt(1, usuarioId);
                checkStmt.setInt(2, productosId);

                try (ResultSet rs = checkStmt.executeQuery()) {
                    if (rs.next()) {

                        int cantidadActual = rs.getInt("cantidad");
                        String updateSql = "UPDATE carrito SET cantidad=? WHERE usuario_id=? AND productos_id=?";
                        try (PreparedStatement updateStmt = con.prepareStatement(updateSql)) {
                            updateStmt.setInt(1, cantidadActual + 1);
                            updateStmt.setInt(2, usuarioId);
                            updateStmt.setInt(3, productosId);
                            updateStmt.executeUpdate();
                        }
                    } else {

                        String insertSql = "INSERT INTO carrito(usuario_id, productos_id, cantidad) VALUES(?, ?, ?)";
                        try (PreparedStatement insertStmt = con.prepareStatement(insertSql)) {
                            insertStmt.setInt(1, usuarioId);
                            insertStmt.setInt(2, productosId);
                            insertStmt.setInt(3, 1);
                            insertStmt.executeUpdate();
                        }
                    }
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        response.sendRedirect(request.getContextPath() + "/jsp/carrito.jsp");

    }
}
