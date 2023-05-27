<%-- 
    Document   : rombo
    Created on : 26/05/2023, 23:38:02
    Author     : pablo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.factoryMethod.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Rombo</title>
    </head>
    <body>
        <a href="index.jsp"> <h3>< Regresar</h3> </a>
    <h1 align="center">Calcular Perimetro del Trapecio</h1>
        <form action="">
            <table border="1" width="400" align="center">
                <tr>
                    <td>Ingrese la longitud del lado 1: </td>
                    <td><input type="text"  name="txtLado1"></td>
                </tr>
                <br>
                <tr>
                    <td>Ingrese la longitud del lado 2: </td>
                    <td><input type="text"  name="txtLado2"></td>
                </tr>
                <br>
                <tr>
                    <td>Ingrese la longitud del lado 3: </td>
                    <td><input type="text"  name="txtLado3"></td>
                </tr>
                <br>
                <tr>
                    <td>Ingrese la longitud del lado 4: </td>
                    <td><input type="text"  name="txtLado4"></td>
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
                    double lado1 = Double.parseDouble(request.getParameter("txtLado1"));
                    double lado2 = Double.parseDouble(request.getParameter("txtLado2"));
                    double lado3 = Double.parseDouble(request.getParameter("txtLado3"));
                    double lado4 = Double.parseDouble(request.getParameter("txtLado4"));
                    PerimetroFactory perimetroFactory = new PerimetroFactory();
                    double perimetro = perimetroFactory.calcularPerimetro(lado1, lado2, lado3, lado4, TipoFigura.ROMBO);
        %>
                <h3>Resultado:  <%=perimetro%>cm</h3>
        <%
                }
        %>
        </div>
        <h1 align="center">Calcular Area del Trapecio</h1>
        <form action="">
            <table border="1" width="400" align="center">
                <tr>
                    <td>Ingrese la diagonal mayor del Rombo:</td>
                    <td><input type="text"  name="txtDiagonalMayor"></td>
                </tr>
                <br>
                <tr>
                    <td>Ingrese la diagonal menor del Rombo:</td>
                    <td><input type="text"  name="txtDiagonalMenor"></td>
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
            double diagonalMayor = Double.parseDouble(request.getParameter("txtDiagonalMayor"));
            double diagonalMenor = Double.parseDouble(request.getParameter("txtDiagonalMenor"));
            AreaFactory areaFactory = new AreaFactory();
            double area = areaFactory.calcularArea(diagonalMayor, diagonalMenor, 0, TipoFigura.ROMBO);
        %>
        <h3>Resultado:  <%=area%>cm<sup>2</sup></h3>
        <%
            }
        %>
        </div>
    </body>
</html>
