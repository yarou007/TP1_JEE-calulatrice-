<%-- 
    Document   : date
    Created on : 6 oct. 2023, 12:34:51
    Author     : hammi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%!
     String msg="";
     int myval = Integer.parseInt(request.getParameter("myval"));
          public void devinette(int myval) {
             rand = (int)(Math.random() * 4);
             if (myval==random4()){
                       msg = "vous avez gangez";
               }else   msg = "vous avez gangez";
            }
         
          public void egale(){
               
         }
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="#" method="POST">
        <input type="number" name="myval" >
        <input type="submit" >

        </form>
        <h1><% out.println(random4()); %></h1>
        <br><!-- comment -->
        <%= msg
            %>
    </body>
</html>
