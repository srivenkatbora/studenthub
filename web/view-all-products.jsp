<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Social Recommendation System - View All Products</title>
    <link rel="stylesheet" href="style.css">
</head>
<%
    String pname=(String) session.getAttribute("product");
    String categ=(String) session.getAttribute("category");
     String desc=(String) session.getAttribute("desc");
      String img=(String) session.getAttribute("image");
    %>

      <script>
      document.getElementById("img").src=img;
      </script>
<body>
    <div class="header" >
        <h1>A General Framework For Implicit And Explicit Social Recommendations</h1>
    </div>

    <div class="navigation">
        <a href="index.html">Home</a>
        <a href="admin.html">Admin</a>
        <a href="#">OSN User</a>
        <a href="#">E Commerce</a>
        <a href="registration.html">Registration</a>
    </div><br><br>
    <div class="slideshow-container" align="center">
        <div class="mySlides">
            <img src="ecommerce img1" alt="Image 1" height="350px" width="1000px">
        </div>
        <div class="mySlides">
            <img src="ecommerce img2" alt="Image 2" height="350px" width="1000px">
        </div>
        <div class="mySlides">
            <img src="ecommerce img3" alt="Image 3" height="350px" width="1000px">
        </div>
    </div>
    <div class="dashboard-content">
        <div class="table">
            <h1>View All Products</h1>
            <table border="1">
                <tr>
                    <th>Image</th>
                    <th>Product Name</th>
                    <th>Category</th>
                    <th>View Details</th>
                  
                </tr>
        
                <tr>
                    <td><img src="" id="img" alt="Product 1"></td>
                    <td><%= pname %></td>
                    <td><%= categ %></td>
                    <td><%= desc %></td>
                </tr>
        
                <tr>
                    <td><img src="product2.jpg" alt="Product 2"></td>
                    <td>Product 2</td>
                    <td>Clothing</td>
                    <td><button onclick="viewDetails('Product 2')">View Details</button></td>
                </tr>
        
            </table>
        </div>
        <div class="admin-dashboard-card">
            <h2>Admin Menu</h2>
            <ul class="admin-dashboard-menu">
                <li><a onclick="navigate('index.html')">Home</a></li><br>
                <li><a onclick="navigate('viewuser.jsp')">View all Users & Activate</a></li><br>
                <li><a onclick="navigate('view-ecommerce-users.html')">View E-Commerce Users</a></li><br>
                <li><a onclick="navigate('add-products.html')">Add Products</a></li><br>
                <li><a onclick="navigate('view-all-products.html')">View all Products</a></li><br>
                <li><a onclick="navigate('view-recommended-products.html')">View Recommended Products</a></li><br>
                <li><a onclick="navigate('view-purchased-products.html')">View Purchased Products</a></li><br>
                <li><a onclick="logout()">Logout</a></li>
            </ul>
        </div>
    </div>
    

    <script src="script.js"></script>
</body>
</html>
