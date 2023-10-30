<%-- 
    Document   : index
    Created on : 26/09/2023, 22:26:54
    Author     : edwii
--%>
<%@page import="modelo.Puesto" %>
<%@page import="java.util.HashMap" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Empleados</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    </head>
    <body>
        <h1>Formulario Empleados</h1>
        
        <div class= "container"> 
            <form action="sr_empleado" method="post" class="form-group">
                <label for="lbl_nombres"><b>Nombres:</b></label>
                <input type="text" name="txt_nombres" id="txt_nombres" class="form-control" placeholder="Ejemplo: Nombre 1 Nombre 2" required>
                <label for="lbl_apellidos"><b>Apellidos:</b></label>
                <input type="text" name="txt_apellidos" id="txt_apellidos" class="form-control" placeholder="Ejemplo: Apellido 1 Apellido 2" required>
                <label for="lbl_direccion"><b>Direccion:</b></label>
                <input type="text" name="txt_direccion" id="txt_direccion" class="form-control" placeholder="Ejemplo: #Casa calle zona ciudad" required>
                <label for="lbl_telefono"><b>Telefono:</b></label>
                <input type="number" name="txt_telefono" id="txt_telefono" class="form-control" placeholder="Ejemplo: 55555555" required>
                <label for="lbl_dpi"><b>DPI :</b></label>
                <input type="number" name="txt_dpi" id="txt_dpi" class="form-control" placeholder="Ejemplo: 2979457190201" required>
                <label for="lbl_genero"><b> Genero :</b></label>
                <select name ="drop_genero" id="drop_genero" class="form-control">
                        <option value="1">Masculino</option>
                    <option value="2"> Femenino</option>
                </select>
                <label for="lbl_fn"><b>Fecha de Nacimiento:</b></label>
                <input type="date" name="txt_fn" id="txt_fn" class="form-control" required>
                
                <label for="lbl_codigo_puesto"><b>Codigo Puesto:</b></label>
                <select name ="drop_puesto" id="drop_puesto" class="form-control">
                       <%
                       Puesto puesto = new Puesto();
                       HashMap<String,String> drop = puesto.drop_sangre();
                       for (String i: drop.keySet()){
                       out.println("<option value='" + i  + "'>" + drop.get(i) + "</option>");
                           }
                       %>
                       
                </select>
                
                
                <label for="lbl_inicio"><b>Fecha de Inicio de labores:</b></label>
                <input type="date" name="txt_inicio" id="txt_inicio" class="form-control" required>
                <label for="lbl_ingreso"><b>Fecha de Ingreso de labores:</b></label>
                <input type="date" name="txt_ingreso" id="txt_ingreso" class="form-control" required>
                
                
                
                <br><!-- comment -->
                <button  name="btn_agregar" id="btn_agregar" value="agregar" class="btn btn-primary">Agregar</button>



            </form>


</div>
        
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
    </body>
</html>
