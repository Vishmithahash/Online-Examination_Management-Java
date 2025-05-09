<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    
    <title>Login Page</title>
    <link rel="stylesheet" href="login.css">

</head>
<body>
    <div class="container">
        <h1>Login</h1>
        <form action>
            <label for="username">Username</label>			
            <input type="text" id="username" name="username" placeholder="Enter your username">
			
			
            <label for="password">Password</label>
            <input type="password" id="password" name="password" placeholder="Enter your password">
			
            <div class="checkbox">
                <label for="remember-me">
                    <input type="checkbox" id="remember-me" name="remember-me">
                    Remember me
                </label>
                <a href="#">Forgot Password?</a>
            </div>
			
			</form>
            <a href="dashboard.jsp"><button>Login</button></a>
            <p>Don't have an account? <a href="#">Register</a></p>
        
    </div>
</body>
</html>