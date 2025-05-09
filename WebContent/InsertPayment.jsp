<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> Add Payment</title>

<header>
    <div class="header-top">
        <div class="logo">
            <img src="uni.jpg" alt="Campus Logo">
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
<style>

/* Header styling */
header {
	position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    background-color: blue;
    color: white;
    padding: 10px 0;
    text-align: center;
}

.header-top {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 0 20px;
}

.logo img {
    height: 50px;
}

.user-account a {
    color: white;
    text-decoration: none;
    font-size: 16px;
}

/* Navigation styling */
nav.categories {
    background-color: darkblue;
    padding: 10px 0;
}

nav.categories a {
    color: white;
    margin: 0 15px;
    text-decoration: none;
}

nav.categories a:hover {
    text-decoration: underline;
}

/* body styling */


* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    
    
}

body {
    font-family: Arial, sans-serif;
    background-image: url('pimage.jpg'); 
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 1000px;
   
}

.addpay {
    background-color: white;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
    width: 400px;
}

h2 {
    text-align: center;
    margin-bottom: 20px;
}

.form-group {
    margin-bottom: 15px;
}

.form-group label {
    display: block;
    margin-bottom: 5px;
    font-weight: bold;
}

.form-group input, 
.form-group select {
    width: 100%;
    padding: 10px;
    font-size: 16px;
    border: 1px solid lightgreen;
    border-radius: 5px;
}

button {
    width: 100%;
    padding: 10px;
    font-size: 16px;
    background-color: green;
    color: white;
    border: none;
    border-radius: 5
}

footer {
	position: fixed;
    bottom: 0;
    left: 0;
    width: 100%;
    background-color: blue;
    color: white;
    padding: 20px 0px;
    text-align: center;
    display: flex;
    justify-content: space-between;
    z-index: 1000; /* Ensures it’s on top */
}

.footer-top {
    display: flex;
    justify-content: space-between;
    width: 100%;
    padding: 10px 20px;
}

.footer-campus {
    text-align: left;
}

.footer-campus p {
    margin: 0;
    font-size: 14px;
    color: white;
}

.footer-links {
	text-align: right;
    display: flex;
    justify-content: center;
    gap: 40px; /* Space between the links */
    flex-wrap: wrap;
    padding: 10px 0;
    width:100%
}

.footer-links a {
    color: white;
    text-decoration: none;
    margin: 0 15px;
    white-space: nowrap;  /* Prevents wrapping */
}

.footer-links a:hover {
    text-decoration: underline;
}

/* Push main content above the footer */
.container {
    padding-bottom: 100px; /* Adjust based on footer height */
}



</style>
</head>
<body>

<div class="addpay">
        <h2>Add Payment</h2>
        <form action="InsertServlet" method ="POST">

            <div class="form-group">
                <label for="studentId">Student ID</label>
                <input type="text" id="studentId" name="studentid" required>
            </div>
            
             <div class="form-group">
                <label for="specialization">Specialization</label>
                <input type="text" id="specialization" name="specialization"  required>
            </div>

            <div class="form-group">
                <label for="studentEmail">Student Email</label>
                <input type="email" id="studentEmail" name="email"  required>
            </div>

            <div class="form-group">
                <label for="amount">Amount</label>
                <input type="text" id="amount" name="amount"  required>
            </div>

            <div class="form-group">
                <label for="date">Date</label>
                <input type="date" id="date" name="date" required>
            </div>

            <div class="form-group">
                <label for="paymentMethod">Payment Method</label>
                 <input type="text" id="pmethod" name="pmethod" required>
            </div>

            <button type="submit">Add Payment</button>
        </form>
        
        <br><br><a href="GetAllServlet"><button>View Payments</button></a>
    </div>
    
     <footer>
    <div class="footer-top">
        <div class="footer-campus">
            <p> © 2024 Horizons University</p>
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