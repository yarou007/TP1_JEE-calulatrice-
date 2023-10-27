<%-- 
    Document   : calcul.jsp
    Created on : 5 oct. 2023, 19:07:59
    Author     : hammi
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="java.Throwable.*" %>



                               <% 
   double res=0.0;
  try{
if ( 
    
   (request.getParameter("x"))!=null && (request.getParameter("y")) !=null ){
  
   
      double x = Double.parseDouble(request.getParameter("x"));
      double y = Double.parseDouble(request.getParameter("y"));
      
      String op = request.getParameter("op");
        String vs="";
        
   
      switch(op){
      case "+" : res=x+y;  break;
      case "-" : res=x-y; break;
      case "/" : res=x/y; break;
      case "*" : res=x*y; break;
      default:out.println("Mauvais saisi");
       }
     
        vs=Double.toString(res);
       /* if (op.equals("+")){
      res = x + y ;
      }
      else if (op.equals("/")){
      res = x / y ;
      }
      else if (op.equals("-")){
      res = x - y ;
      }
      else {
      res = x * y ;
      }*/
  }
  else {
  out.println("Saisir les valeurs: ");
    }
     }catch(ParseException ex){ // or InputMismatchExcpetion
               out.println(ex.getMessage());
      }           
     }catch(ArithmeticException ex){
               out.println(ex.getMessage());
      }           
                               

%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type"  content="text/html; charset=UTF-8">
        <title>Calculatrice</title>   
    </head>
    <body>     
        <form method="POST" action="calcul.jsp">
            <input type="number" name="x" size="20" >
                    <select name="op">
                <% if (request.getParameter("op") != null) { %>
                    <option value="+" <% if (request.getParameter("op").equals("+")) { %> selected <% }  %> > + </option> 
                    <option value="-" <% if (request.getParameter("op").equals("-")) { %> selected <% } %>> -</option>
                    <option value="*" <% if (request.getParameter("op").equals("*")) { %> selected <% } %> >*</option><!-- comment -->
                    <option value="/" <% if (request.getParameter("op").equals("/")) { %> selected <% } %> > /</option>
                    <% }
                    else {    %>
                    <option value="+">+</option>
                    <option value="-">-</option>
                    <option value="*">*</option>
                    <option value="*">/</option>
                    <% } %>
                    

                    
            </select>

            <input type="number" name="y" size="20" >
            <input type="submit" value="CALCULER">
           
        </form>
 
              <%=res%>
  
    </body>

</html>
