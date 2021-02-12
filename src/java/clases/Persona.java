/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clases;

import clasesgenericas.ConectorBD;
import java.sql.ResultSet;

/**
 *
 * @author Marino botina
 */
public class Persona {
    private String identificacion;
    private String nombres;
    private String telefono;
    private String email;
    private String clave;

    public Persona() {
    }

    
    public Persona(String identificacion, String nombres, String telefono, String email, String clave) {
        this.identificacion = identificacion;
        this.nombres = nombres;
        this.telefono = telefono;
        this.email = email;
        this.clave = clave;
    }

    public String getIdentificacion() {
        return identificacion;
    }

    public void setIdentificacion(String identificacion) {
        this.identificacion = identificacion;
    }

    public String getNombres() {
        return nombres;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getClave() {
        return clave;
    }

    public void setClave(String clave) {
        this.clave = clave;
    }
     public static ResultSet getLista() {
      String cadenaSQL="select * from persona";
      return ConectorBD.consultar(cadenaSQL);
 }
}     
