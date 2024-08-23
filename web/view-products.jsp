<%-- 
    Document   : view-products
    Created on : 30 Nov, 2023, 3:27:48 PM
    Author     : venka
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
  <%
        try{
   Class.forName("com.mysql.jdbc.Driver");

            // Establish a connection
            String url = "jdbc:mysql://localhost:3306/social_recommendation_system";
            String username = "root";
            String password = "venkat360@";
            Connection con = DriverManager.getConnection(url, username, password);
            String str= "select * from addproducts"; 
           PreparedStatement stmt= con.prepareStatement(str);
           
           ResultSet rs= stmt.executeQuery();
          while (rs.next())
          {
             
       session.setAttribute("product",rs.getString(2));
       session.setAttribute("category", rs.getString(1));
       session.setAttribute("desc",rs.getString(3));
       session.setAttribute("image",rs.getString(6)); 
      response.sendRedirect("view-all-products.jsp");
          }
        }
         catch(Exception e)
        {
          out.println("the error is"+e.getMessage());
        }
        %>
</html>
