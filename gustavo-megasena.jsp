<%-- 
    Document   : gustavo-megasena
    Created on : 1 de out. de 2021, 11:12:15
    Author     : User
--%>

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<% 
    ServletContext sc = request.getServletContext();
    List<Integer> numbers = (List)
    sc.getAttribute(String.valueOf((session.getAttribute("session_name"))));
    
 %>
    
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Números da MegaSena</title>
    </head>
    <body>
         <%@include file = "WEB-INF/jspf/header.jspf" %>
         <main>
             
        
        <h3> Seus Números da Sorte </h3>
        
         <table>
                <thead>
                    <tr>
                        <th>Números da Sorte</th>
                    </tr>
                </thead>
                <tbody>
                    
                    <%for(Integer number :numbers){%>
                    <tr>
                        
                        
                        <th><%=number%></th>
                    </tr>
                    <%}%>
                </tbody>
         </table>
                 <%} else {%>
            <h4 class="error">Você não tem acesso a esse conteúdo, para acessar realize o Login.</h4>
            <%}%>
         </main>
    </body>
</html>