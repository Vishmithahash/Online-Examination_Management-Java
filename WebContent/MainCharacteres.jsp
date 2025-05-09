<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Users</title>
    <link rel="stylesheet" href="MainCharacteres.css">
    <link rel="stylesheet" href="header.css">
    <link rel="stylesheet" href="footer.css">
</head>
<body>

<header>
    <div class="header-top">
        <div class="logo">
            <img src="images12/uni.png" alt="Campus Logo">
        </div>
        <div class="user-account">
            <a href="MainCharacteres.jsp">User Account</a>
        </div>
    </div>

    <nav class="categories">
        <a href="dashboard.jsp">Dashboard</a>
        <a href="examinations.html">Examinations</a>
        <a href="helpdesk.html">Help Desk</a>
    </nav>
</header>
<br><br><br><br><br><br><br>

    <div class="image-container">
        <!-- Image 1 with buttons -->
        <div class="image-box">
            <img src="images9/2.jpg" alt="Image 1">
            <p>ADMINISTRATOR</p>
            <div class="button-group">
                <a href="enrollAdmin.jsp"><button>Manage Modules</button></a>
            </div>
        </div>

        <!-- Image 2 with buttons -->
        <div class="image-box">
            <img src="images9/3.jpg" alt="Image 2">
            <p>FINANCIAL MANAGER</p>
            <div class="button-group">
                <a href="enrollFinancialManager.jsp"><button>Payment</button></a>
            </div>
        </div>

        <!-- Image 3 with buttons -->
        <div class="image-box">
            <img src="images9/4.jpeg" alt="Image 3">
            <p>EXAMINER</p>
            <div class="button-group">
                <a href="Examinerenroll.jsp"><button>Add Questions</button></a>
            </div>
        </div>
    </div>
    
   

	   
    <footer>
    <div class="footer-top">
        <div class="footer-campus">
            <p>© 2024 Horizons University</p>
        </div>
    </div>

    <nav class="footer-links">
        <a href="contact.html">Contact Us</a>
        <a href="about.html">About Us</a>
        <a href="terms.html">Terms of Service</a>
        <a href="privacy-policy.html">Privacy Policy</a> <!-- Moved here -->
    </nav>
</footer>
    
    <script src="MainCharacteresHead.js"></script>

</body>
</html>
