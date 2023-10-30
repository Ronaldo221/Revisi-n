/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.PreparedStatement;
/**
 *
 * @author edwii
 */
public class Empleado extends Persona {
    private String DPI;
    private String fecha_nacimiento;
    private String fecha_inicio_labores;
    private String fecha_ingreso;
    private int id_puesto;
    private Conexion cn;

    public Empleado (){}
    
    public Empleado(String DPI, String fecha_nacimiento, String fecha_inicio_labores, String fecha_ingreso, int id_puesto) {
        this.DPI = DPI;
        this.fecha_nacimiento = fecha_nacimiento;
        this.fecha_inicio_labores = fecha_inicio_labores;
        this.fecha_ingreso = fecha_ingreso;
        this.id_puesto = id_puesto;
    }

    public Empleado(String DPI, String fecha_nacimiento, String fecha_inicio_labores, String fecha_ingreso, int id_puesto, int id, String nombres, String apellidos, String direccion, String telefono, String genero) {
        super(id, nombres, apellidos, direccion, telefono, genero);
        this.DPI = DPI;
        this.fecha_nacimiento = fecha_nacimiento;
        this.fecha_inicio_labores = fecha_inicio_labores;
        this.fecha_ingreso = fecha_ingreso;
        this.id_puesto = id_puesto;
    }


    public String getDPI() {
        return DPI;
    }

    public void setDPI(String DPI) {
        this.DPI = DPI;
    }

    public String getFecha_nacimiento() {
        return fecha_nacimiento;
    }

    public void setFecha_nacimiento(String fecha_nacimiento) {
        this.fecha_nacimiento = fecha_nacimiento;
    }

    public String getFecha_inicio_labores() {
        return fecha_inicio_labores;
    }

    public void setFecha_inicio_labores(String fecha_inicio_labores) {
        this.fecha_inicio_labores = fecha_inicio_labores;
    }

    public String getFecha_ingreso() {
        return fecha_ingreso;
    }

    public void setFecha_ingreso(String fecha_ingreso) {
        this.fecha_ingreso = fecha_ingreso;
    }

    public int getId_puesto() {
        return id_puesto;
    }

    public void setId_puesto(int id_puesto) {
        this.id_puesto = id_puesto;
    }
    
   
    @Override
   public void agregar (){
   try{
       PreparedStatement parametro;
       cn = new Conexion();
       String query="INSERT INTO empleados(nombres,apellidos,direccion,telefono,DPI,genero,fecha_nacimiento,id_puesto,fecha_inicio_labores,fecha_ingreso) VALUES (?,?,?,?,?,?,?,?,?,?);";
       cn.abrir_conexion();
       parametro = (PreparedStatement)cn.conexionBD.prepareStatement(query);
       parametro.setString(1,getNombres());
       parametro.setString(2,getApellidos());
       parametro.setString(3,getDireccion());
       parametro.setString(4,getTelefono());
       parametro.setString(5,getDPI());
       parametro.setString(6,getGenero());
       parametro.setString(7,getFecha_nacimiento());
       parametro.setInt(8,getId_puesto());
       parametro.setString(9,getFecha_inicio_labores());
       parametro.setString(10,getFecha_ingreso());
       parametro.executeUpdate();
       cn.cerrar_conexion();
              
   } catch(SQLException ex){
       System.out.println(ex.getMessage());
       
   }
   
   
   
   
   
   }
   }
    
 
