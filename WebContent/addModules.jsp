<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Add Subject Modules</title>
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


<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>



<div class="container">
    <h1>Add Subject Modules</h1><br><br>

    <!-- Examination Module Form -->
    <form class="form" id="moduleForm" action="ModuleInsertServelet" method="post">
        <label for="subject">Subject Name:</label>
        <input type="text" id="subject" name="subjectName" required>

        <label for="exam-date">Examination Date:</label>
        <input type="date" id="exam-date" name="examinationDate" placeholder="yyyy/mm/dd" pattern="\d{4}/\d{2}/\d{2}" required>

        <label for="exam-time">Examination Time:</label>
        <input type="time" id="exam-time" name="examinationTime" placeholder="hh:mm AM/PM" pattern="(0[1-9]|1[0-2]):([0-5][0-9])\s?(AM|PM)" required>

        <label for="total-marks">Total Marks:</label>
        <input type="number" id="total-marks" name="totalMarks" required>

        <label for="passing-marks">Passing Marks:</label>
        <input type="number" id="passing-marks" name="passingMarks" required>

        <label for="duration">Duration (hours):</label>
        <input type="number" id="duration" name="duration" required>

        <label for="question-format">Question Format:</label>
        <select id="question-format" name="questionFormat" required>
            <option value="mcq">Multiple Choice Questions (MCQ)</option>
            <option value="essay">Essay</option>
            <option value="short-answer">Short Answer</option>
        </select>

        <label for="student-group">Student Group:</label>
        <input type="text" id="student-group" name="studentGroup" required>

        <label for="grading-method">Grading Method:</label>
        <select id="grading-method" name="gradingMethod" required>
            <option value="automatic">Automatic Grading</option>
            <option value="manual">Manual Grading</option>
        </select>

        <button type="submit">Save Module</button>
    </form>
    <a href="ViewModulesServelet"><button>View Modules</button></a>
</div>

<br>
<br>
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

<script>
    document.getElementById('moduleForm').addEventListener('submit', function(event) {
        const examDateInput = document.getElementById('exam-date');
        const selectedDate = new Date(examDateInput.value);
        const today = new Date();

        // Reset the time for today and selectedDate to midnight for accurate comparison
        today.setHours(0, 0, 0, 0);
        selectedDate.setHours(0, 0, 0, 0);

        if (selectedDate < today) {
            alert('Examination date must be today or a future date.');
            event.preventDefault(); // Prevent form submission
        }
    });
</script>

<script src="AddModulesJs.js"></script>

</body>
</html>
