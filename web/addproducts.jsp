<%@page import="java.sql.*"%>
<%@ page session="true" %>

<html>
<head>

</head>

<body>
</body>
<%
    String Category=request.getParameter("category");
    String product = request.getParameter("productName");
    String desc = request.getParameter("description");
    String Price = request.getParameter("price");
    String Brand = request.getParameter("brand");
    String img = request.getParameter("image");
    
    
    try{
       
       // String user=null;
        //String password=null;
	 Class.forName("com.mysql.jdbc.Driver");

            // Establish a connection
           
        Connection co = DriverManager.getConnection("jdbc:mysql://localhost:3306/social_recommendation_system","root","venkat360@");

    PreparedStatement ps = co.prepareStatement("insert into addproducts values(?,?,?,?,?,?)");

        ps.setString(1,Category);    
        ps.setString(2,product);
        ps.setString(3,desc);
        ps.setString(4,Price);
        ps.setString(5,Brand);
        ps.setString(6,img);
       

    ps.executeUpdate();

//out.print(Successfully Registered);

response.sendRedirect("admin-dashboard.html?message=success");
out.println("Product added Successfully");
}
catch(Exception e1)
{
out.println(e1.getMessage());
}


%>

</html>