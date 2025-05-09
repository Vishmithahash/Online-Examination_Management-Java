<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Dashboard</title>
   <link rel="stylesheet" href="dashboard.css">
   <link rel="stylesheet" href="header.css">
   <link rel="stylesheet" href="footer.css">
   <link href="https://cdn.jsdelivr.net/npm/remixicon@4.2.0/fonts/remixicon.css" rel="stylesheet" >
</head>

<body>
  <header>
    <div class="header-top">
        <div class="logo">
            <img src="images12/uni.png" alt="Campus Logo">
        </div>
		<nav>
        <div class="user-account">
            <a href="MainCharacteres.jsp">User Account</a>
        </div>
        <div class="user-account">
            <br><a href="InsertStudent.jsp">Raise Tickets</a>
        </div>
        </nav>
        
    </div>

    <nav class="categories">
        <a href="dashboard.jsp">Dashboard</a>
        <a href="examinations.html">Examinations</a>
        <a href="helpdesk.html">Help Desk</a>
    </nav>
</header>

 <br><br><br><br><br><br><br><br>


<div class="top-button">
<a href = "DisplayModuleName"><button>MODULES</button></a>
  </div>

<div class="home">
  
  
 

  <div class="slider">
    <div class="slides">
      <input type="radio" name="radio-btn" id="radio1">
      <input type="radio" name="radio-btn" id="radio2">
      <input type="radio" name="radio-btn" id="radio3">
      <input type="radio" name="radio-btn" id="radio4">
      

      <div class="slide first">
        <img src="imagesdashboard/1.jpg" alt="">
      </div>
      <div class="slide">
        <img src="imagesdashboard/2.jpg" alt="">
      </div>
      <div class="slide">
        <img src="imagesdashboard/3.jpg" alt="">
      </div>
      <div class="slide">
        <img src="imagesdashboard/4.jpg" alt="">
      </div>
   

      <div class="navigation-auto">
      <div class="auto-btn1"></div>
      <div class="auto-btn1"></div>
      <div class="auto-btn1"></div>
      <div class="auto-btn1"></div>
      </div>



    </div>

    <div class="navigation-manual">
      <label for="radio1" class="manual-btn"></label>
      <label for="radio2" class="manual-btn"></label>
      <label for="radio3" class="manual-btn"></label>
      <label for="radio4" class="manual-btn"></label>
    </div>

  </div>
</div>

<script src="dashboard.js"></script>



<br><br><br><br><br><br><br><br>



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