<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<link rel="stylesheet" href="header.css">
    <link rel="stylesheet" href="footer.css">
    <title>Module Enrollment</title>
    <style>
        /* Style to center content */
        body {
            background-color: grey;
            display: flex;
            justify-content: center; /* Horizontal centering */
            align-items: center; /* Vertical centering */
            height: 100vh; /* Full view height */
            margin: 0;
        }

        .container {
            background-color: lightblue;
            padding: 20px;
            border-radius: 10px;
            text-align: center; /* Center the text inside the div */
        }

        label, input, button {
            margin-bottom: 10px;
        }

        button {
            padding: 10px 20px;
            background-color: navy;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        button:hover {
            background-color: darkblue;
        }
    </style>
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

    <div class="container">
        <h2>Module Enrollment</h2>

        <form action="enrollAdminServelet" method="POST">
            <label for="enrollmentKey">Enrollment Key:</label>
            <input type="password" id="enrollmentKey" name="enrollmentKey" required>
            <br><br>
            <button type="submit">Enroll Me</button>
        </form>
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

</body>
</html>

