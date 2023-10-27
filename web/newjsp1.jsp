<%-- 
    Document   : newjsp1
    Created on : 27 oct. 2023, 18:06:30
    Author     : hammi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
   String a = request.getParameter("a");
   String b = request.getParameter("b");
   int x = Integer.parseInt(a);
   int y = Integer.parseInt(b);
  
 %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form method="POST" action="newjsp1.jsp">
            <input type="number" name="a" >
            <select name="op">
                <option value="+" >+</option>
                <option value="-"> -</option>
                <option value="*" >*</option>
                <option value="/">/</option>
            </select>
            <input type="number" name="b">
            <input type="submit" value="Envoyer">
        </form>
        <%= x %> <!-- expression -->
        <%= y %> <!-- expression -->
    </body>
</html>
