<%-- 
    Document   : CONSULTA3
    Created on : 21/01/2020, 10:58:59
    Author     : dell_i5_7
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<%@page import="org.jfree.chart.*"%>
<%@page import="org.jfree.chart.plot.*"%>
<%@page import="org.jfree.data.general.*"%>
<%@page import="org.jfree.data.category.DefaultCategoryDataset.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Graficador</title>
    </head>
    <body>
        <FORM action="">
            <table BORDER="1"WHITH="250"ALING="CENTER">
                
                
               
                 <%
           
                     
           Class.forName("org.postgresql.Driver");
           Connection cn=DriverManager.getConnection("jdbc:postgresql://172.17.42.52/proyecto_r_Adriano_Jimenez","postgres","server2019");
           Statement cmd =cn.createStatement();
           String sql="select mes_nacm,count(nac_muj)  from matrim_datos_mujer group by mes_nacm;";
           ResultSet rs= cmd.executeQuery(sql);
        
        
        
        %>
                
                
                <tr>
                    <th colspan="2">
                        <a href="graficador1.jsp"><input type="button"name="grabar"value="OFICINAS POR AÑO"></td></a>
                        
                    </th>
                </tr>
                
                
                
            </table>
            
        </FORM>
        
       
        
    </body>
</html>
