<%@page import="java.sql.*"%>
<%@ page session="true" %>

<html>
<head>

</head>

<body>
</body>
<%
    String utype=request.getParameter("userType");
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String email = request.getParameter("email");
    String gen = request.getParameter("gender");
    String dob = request.getParameter("dob");
    String mobile = request.getParameter("mobile");
    String address = request.getParameter("address");
    
    
    try{
       
       // String user=null;
        //String password=null;
	 Class.forName("com.mysql.jdbc.Driver");

            // Establish a connection
           
        Connection co = DriverManager.getConnection("jdbc:mysql://localhost:3306/social_recommendation_system","root","venkat360@");

    PreparedStatement ps = co.prepareStatement("insert into registrationdetails values(?,?,?,?,?,?,?,?)");

        ps.setString(1,utype);    
        ps.setString(2,username);
        ps.setString(3,password);
        ps.setString(4,email);
        ps.setString(5,dob);
        ps.setString(6,gen);
        ps.setString(7,address);
        ps.setString(8,mobile);

    ps.executeUpdate();

//out.print(Successfully Registered);

response.sendRedirect("index.html?message=success");
out.println("User Registered Successfully");
}
catch(Exception e1)
{
out.println(e1.getMessage());
}


%>

</html>