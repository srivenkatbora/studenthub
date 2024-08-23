function navigate(page) {
    window.location.href = page;
}
let slideIndex = 0;

function showSlides() {
    let i;
    let slides = document.getElementsByClassName("mySlides");

    for (i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";
    }

    slideIndex++;

    if (slideIndex > slides.length) {
        slideIndex = 1;
    }

    slides[slideIndex - 1].style.display = "block";
    setTimeout(showSlides, 3000);
}

function adminLogin() {
    const correctUsername = "admin";
    const correctPassword = "admin123";

    const username = document.getElementById("username").value;
    const password = document.getElementById("password").value;

    if (username === correctUsername && password === correctPassword) {
        navigate("admin-dashboard.html");
        return false; 
    } else {
        alert("Invalid credentials. Please try again.");
        return false;
    }
}

function showPage(page) {
    let dashboard = document.getElementById("dashboard");
    dashboard.innerHTML = ""; 

    if (page === 'home') {
        dashboard.innerHTML = "<h2>Welcome to Admin</h2>";
    } else if (page === 'view-users') {
        navigate("view-users.html");
    } else if (page === 'view-ecommerce-users') {
        navigate("view-ecommerce-users.html");
    } else if (page === 'add-products') {
        navigate("add-products.html");
    } else if (page === 'view-all-products') {
        navigate("view-all-products.html");
    } else if (page === 'view-recommended-products') {
        navigate("view-recommended-products.html");
    } else if (page === 'view-purchased-products') {
        navigate("view-purchased-products.html");
    }
}

function logout() {
    alert("Logged out successfully!");
    navigate('index.html');
}

document.addEventListener('DOMContentLoaded', function () {
    showSlides();
});

