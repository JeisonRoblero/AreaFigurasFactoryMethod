<%-- 
    Document   : circulo
    Created on : 26/05/2023, 23:38:24
    Author     : pablo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.factoryMethod.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Circulo</title>
    </head>
    <body>
        <a href="index.jsp"> <h3>< Regresar</h3> </a>
        <h1 align="center">Calcular Perimetro del Circulo</h1>
        <form action="">
            <table border="1" width="400" align="center">
                <tr>
                    <td>Ingrese el diamtero del Circulo: </td>
                    <td><input type="text"  name="txtdiamtero"></td>
                </tr>
                <br>
                <tr>
                    <th colspan="2"> <input type="submit" name="btnCalcularPerimetro" value="Calcular Perimetro"></th>
                </tr>
            </table>
        </form>
        <div align="center">
        <%
                if(request.getParameter("btnCalcularPerimetro") != null){
                    double diamtero = Double.parseDouble(request.getParameter("txtdiamtero"));
                    PerimetroFactory perimetroFactory = new PerimetroFactory();
                    double perimetro = perimetroFactory.calcularPerimetro(diamtero, 0, 0, 0, TipoFigura.CIRCULO);
        %>
                <h3>Resultado:  <%=perimetro%>cm</h3>
        <%
                }
        %>
        </div>
        <h1 align="center">Calcular Area del Circulo</h1>
        <form action="">
            <table border="1" width="400" align="center">
                <tr>
                    <td>Ingrese el perimetro del Circulo:</td>
                    <td><input type="text"  name="txtPerimetro"></td>
                </tr>
                <br>
                <tr>
                    <td>Ingrese el radio del Circulo:</td>
                    <td><input type="text"  name="txtRadio"></td>
                </tr>
                <br>
                <tr>
                    <th colspan="2"> <input type="submit" name="btnCalcularArea" value="Calcular Area"></th>
                </tr>
            </table>
        </form>
        <div align="center">
        <%
            if(request.getParameter("btnCalcularArea") != null){
            double perimetro = Double.parseDouble(request.getParameter("txtPerimetro"));
            double radio = Double.parseDouble(request.getParameter("txtRadio"));
            AreaFactory areaFactory = new AreaFactory();
            double area = areaFactory.calcularArea(perimetro, radio, 0, TipoFigura.CIRCULO);
        %>
        <h3>Resultado:  <%=area%>cm<sup>2</sup></h3>
        <%
            }
        %>
        </div>
    </body>
</html>
