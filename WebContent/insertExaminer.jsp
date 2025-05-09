<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Add new question</title>


<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 100px 20px 20px; 
    }
 
    body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    margin: 0;
    padding: 100px 20px 20px;
    background-image: url('pen2.jpg'); 
    background-size: cover; 
    background-position: center; 
    background-attachment: fixed; 
    background-repeat: no-repeat; 
}



    h1 {
        text-align: center;
        color: #333;
    }

    form {
        background-color: #fff;
        padding: 20px;
        margin: 0 auto;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        max-width: 400px;
    }
    
    
    
    
    form {
    background-color: rgba(255, 255, 255, 0.9); /* Semi-transparent background for better readability */
    padding: 20px;
    margin: 0 auto;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    max-width: 400px;
}
    

    

    form input[type="text"], form input[type="number"] {
        width: 100%;
        padding: 10px;
        margin: 10px 0;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }

    form button {
        width: 100%;
        padding: 10px;
        background-color: #28a745;
        color: #fff;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        font-size: 16px;
    }

    form button:hover {
        background-color: #218838;
    }

    .form-label {
        font-weight: bold;
        margin-bottom: 5px;
    }

    a {
        text-decoration: none;
    }

    a button {
        width: 150px; /* Reduced width */
        padding: 10px;
        background-color: #007bff;
        color: #fff;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        font-size: 16px;
        margin: 10px auto; /* Center the button horizontally */
        display: block; /* Ensures block-level element */
    }

    a button:hover {
        background-color: #0069d9;
    }
    
    h2 {
        text-align: center;
        color: white;
        font-size: 24px;
        margin-bottom: 20px;
    }
    
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
        z-index: 1000; /* Ensures header stays on top */
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
    
    /* Footer styling */
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
        z-index: 1000; /* Ensures its on top */
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
        width: 100%;
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

<header>
    
    <div class="header-top">
        <div class="logo">
            <img src="uni.png" alt="Campus Logo">
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
</header><br><br>






	<h2>Add New Question</h2>
	<form action = "InsertServletExaminer" method = "post">


				Examiner ID: <input type="text" name="eid" required> <br>
                
                Examiner Name: <input type="text"  name="name" required ><br>
                
               
                Paper ID: <input type="text" name="paperid" required><br>

                
                 Question: <input type ="text"  name="question" ><br>

                
                Relevent marks: <input type = "text"  name="marks" required><br>
                
               
                
                

                <button type="submit">Add Question</button>
            </form>
            <br>
            <a href = "GetAllServletExaminer"> <button> view Questions </button></a>
            
            
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