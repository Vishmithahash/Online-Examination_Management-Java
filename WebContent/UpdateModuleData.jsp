<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Module Data</title>
 <link rel="stylesheet" href="AddModulesStyles.css">
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

<br><br><br><br><br><br><br><br><br>

	<%
		String id = request.getParameter("id");
		String subjectName = request.getParameter("subjectName");
		String examinationDate = request.getParameter("examinationDate");
		String examinationTime = request.getParameter("examinationTime");
		String totalMarks = request.getParameter("totalMarks");
		String passingMarks = request.getParameter("passingMarks");
		String duration = request.getParameter("duration");
		String questionFormat = request.getParameter("questionFormat");
		String studentGroup = request.getParameter("studentGroup");
		String gradingMethod = request.getParameter("gradingMethod");
	
	%>
	<div class="container">
        <h1>Update Subject Modules</h1><br><br>
	
	<form class="form" id="moduleForm" action="UpdateModuleData" method="post">
            
			<label for="subject">ID:</label>
            <input type="text" id="id" name="id" value="<%=id%>" readonly>
            
            <label for="subject">Subject Name:</label>
            <input type="text" id="subject" name="subjectName" value="<%=subjectName%>" required>

            <label for="exam-date">Examination Date:</label>
            <input type="text" id="exam-date" name="examinationDate" value="<%=examinationDate%>" required>

            <label for="exam-time">Examination Time:</label>
            <input type="text" id="exam-time" name="examinationTime" value="<%=examinationTime%>" required>

            <label for="total-marks">Total Marks:</label>
            <input type="text" id="total-marks" name="totalMarks" value="<%=totalMarks%>" required>

            <label for="passing-marks">Passing Marks:</label>
            <input type="text" id="passing-marks" name="passingMarks" value="<%=passingMarks%>" required>

            <label for="duration">Duration (hours):</label>
            <input type="text" id="duration" name="duration" value="<%=duration%>" required>

           

            <label for="question-format">Question Format:</label>
            <select id="question-format" name="questionFormat" value="<%=questionFormat%>" required>
                <option value="mcq">Multiple Choice Questions (MCQ)</option>
                <option value="essay">Essay</option>
                <option value="short-answer">Short Answer</option>
            </select>

            <label for="student-group">Student Group:</label>
            <input type="text" id="student-group" name="studentGroup" value="<%=studentGroup%>" required>

            <label for="grading-method">Grading Method:</label>
            <select id="grading-method" name="gradingMethod" value="<%=gradingMethod%>" required>
                <option value="automatic">Automatic Grading</option>
                <option value="manual">Manual Grading</option>
            </select>

            <button type="submit">Update Module</button>
        </form>
        </div>
        
        <br><br><br><br>
        <br><br><br><br>
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