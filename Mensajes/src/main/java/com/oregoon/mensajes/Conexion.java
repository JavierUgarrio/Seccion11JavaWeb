package com.oregoon.mensajes;
import java.sql.*;

public class Conexion {
    
    private static final String url = "jdbc:mysql://localhost/pruebamensajes_db?serverTimezone=UTC";
    private static final String user = "root";
    private static final String pass = "Alvaro0801";
    
    //Conexion a la base de datos
    public static Connection getConexion() throws SQLException, ClassNotFoundException{
        // Cargar el controlador de MySQL en memoria para gestionar conexiones a la base de datos
        Class.forName("com.mysql.cj.jdbc.Driver");
        // Establecer y devolver una conexión con la base de datos usando la URL, usuario y contraseña
        return DriverManager.getConnection(url, user, pass);
    }
    
    public static void cerrar(ResultSet rs) throws SQLException{
        rs.close();
    }
    
    public static void cerrar(PreparedStatement ps) throws SQLException{
        ps.close();        
    }
    
    public static void cerrar(Connection conexion) throws SQLException{
        conexion.close();
    }
}
