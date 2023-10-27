<%-- 
    Document   : daly
    Created on : 5 oct. 2023, 22:23:00
    Author     : hammi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!
     float x = request.getParameter("x");
     float y = request.getParameter("y");

    %>

<!DOCTYPE html>
<html>
    
    <head>
        <meta http-equiv="Content-Type"  content="text/html; charset=UTF-8">
        <title>Calculatrice</title>
        
    </head>
    <body>     
      
        <form method="POST" action="#">
            <input type="number" name="x" size="20" required>
            <select name="op">
                <option value="+">+</option>
                <option value="-">-</option>
                <option value="*">*</option>
                <option value="/">/</option>
            </select>
            <input type="number" name="y" size="20" required>
            <input type="submit" value="CALCULER">
        </form>
         <%=x%>
         <%=y%>
    </body>
</html>