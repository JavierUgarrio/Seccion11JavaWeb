
package com.oregoon.mensajes;

import java.sql.SQLException;
import java.util.*;


public class Main {
    public static void main(String []args) throws SQLException, ClassNotFoundException{
        Conexion.getConexion();
        System.out.println("Conexion exitosa");
          MensajeDao mdao = new MensajeDao();
          
        Mensaje msj1 = new Mensaje("hola que tal vas desde Main", "Manolo"); 
        
//        int registro = mdao.insertar(msj1);
//        System.out.println("Se inserto: " + registro);

//        Mensaje msm = new Mensaje(7,"Hola desde la prueba de java web","Main");
//        int registro = mdao.editar(msm);
//        System.out.println("Se edito: " + registro);

//        Mensaje msm = new Mensaje(12);
//        int registro = mdao.eliminar(msm);
//        System.out.println("Se elimino: "+ registro );
         
        List<Mensaje>mensajes= mdao.seleccionar();
        for(Mensaje mensaje : mensajes){
            System.out.println(mensaje);
        }
        
        
    }
}
