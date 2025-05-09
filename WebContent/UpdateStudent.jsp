<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Raise a ticket</title>
<style >

		/* Header styling */
	header {
	
		position: fixed;
  	  top: 0;
  	  left: 0;"WebContent/UpdateStudent.jsp"
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
	


 * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }

    body {
        font-family: Arial, sans-serif;
        background-image: url('bg1.jpg'); /* Use the relative path to your image */
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
        height: 1500px;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .ticket-container {
        background-color: rgba(255, 255, 255, 0.8); /* White background with transparency */
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
        width: 400px;
        backdrop-filter: blur(10px); /* Apply blur effect */
    }

    h2 {
        text-align: center;
        margin-bottom: 20px;
    }

    form {
        display: flex;
        flex-direction: column;
    }

    label {
        margin-bottom: 5px;
        font-weight: bold;
    }

    input, textarea {
        margin-bottom: 15px;
        padding: 10px;
        font-size: 16px;
        border: 1px solid #ccc;
        border-radius: 4px;
    }

    button {
        width: 100%;
        padding: 10px;
        background-color: #007bff;
        color: white;
        font-size: 16px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }

    button:hover {
        background-color: #0056b3;
    }

    a button {
        margin-top: 10px;
        width: 100%;
        padding: 10px;
        background-color: #6c757d;
        color: white;
        font-size: 16px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }

    a button:hover {
        background-color: #5a6268;
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
	</header>






	<%
		String id = request.getParameter("id");
		String studentid = request.getParameter("studentid");
		String name = request.getParameter("name");
		String module = request.getParameter("module");
		String email = request.getParameter("email");
		String no = request.getParameter("no");
		String description = request.getParameter("description");
	%>
	
	<div class="ticket-container">
        <h2>Raise a Ticket</h2>
        
        <form action="StudentUpdateServlet" method="post">
        	
        	 <label for="ticket-id">Ticket ID:</label>
            <input type="text" id="ticket-id" name="id" value="<%=id%>" readonly>
        	
            <label for="student-id">Student ID:</label>
            <input type="text" id="student-id" name="studentid" value="<%=studentid%>" required>

            <label for="student-name">Student Name:</label>
            <input type="text" id="student-name" name="name" value="<%=name%>" required>

            <label for="module-name">Module Name:</label>
            <input type="text" id="module-name" name="module" value="<%=module%>" required>

            <label for="email">Email:</label>
            <input type="text" id="email" name="email" value="<%=email%>" required>

            <label for="phone">Phone Number:</label>
            <input type="text" id="phone" name="no" value="<%=no%>" required>

            <label for="description">Description of Issue:</label>
            <input type="text" id="description" name="description" value="<%=description%>" required>
            

            <button type="submit">Update Ticket</button>
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