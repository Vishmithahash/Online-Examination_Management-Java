<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Question table</title>





<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
        box-sizing: border-box; /* Ensure padding and borders are included in width calculations */
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

    h2 {
        text-align: center;
        color: white;
        margin-bottom: 1.5rem;
        font-size: 1.8rem;
    }

    table {
        width: 100%; /* Use full available width */
        max-width: 1200px; /* Limit table width for larger screens */
        margin: 0 auto; /* Center the table horizontally */
        border-collapse: collapse;
        font-size: 1rem;
        background-color: white;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        overflow-x: auto;
    }

    table th, table td {
        padding: 1em; /* Use relative units for padding */
        text-align: center;
        border: 1px solid #ddd;
        word-wrap: break-word; /* Ensure long text wraps inside the cells */
    }

    table th {
        background-color: #4CAF50;
        color: white;
    }

    table tr:nth-child(even) {
        background-color: #f2f2f2;
    }

    table tr:hover {
        background-color: #ddd;
    }

    button {
        background-color: #4CAF50;
        color: white;
        border: none;
        padding: 0.7em 1.2em;
        font-size: 1rem;
        cursor: pointer;
        border-radius: 5px;
    }

    button:hover {
        background-color: #45a049;
    }

    form {
        display: inline;
    }

    a {
        text-decoration: none;
    }

    /* For smaller screens */
    @media (max-width: 768px) {
        table th, table td {
            padding: 0.5em;
            font-size: 0.9rem;
        }

        h2 {
            font-size: 1.5rem;
        }

        button {
            padding: 0.5em 1em;
            font-size: 0.9rem;
        }
    }

    /* For very small screens */
    @media (max-width: 480px) {
        table th, table td {
            padding: 0.3em;
            font-size: 0.8rem;
        }

        h2 {
            font-size: 1.2rem;
        }

        button {
            padding: 0.4em 0.8em;
            font-size: 0.8rem;
        }
    }
    
    
    h2 {
        text-align: center;
        color: white;
        font-size: 24px;
        margin-bottom: 20px;
    }
    
</style>








</head>
<body>
<h2>Question Table</h2>
	
	<table border = "2px">
	
	
	
	<tr>
		<th>ID</th>
		<th>Examiner_ID</th>
		<th>Examiner_Name</th>
		<th>Paper_ID</th>
		<th>Question</th>
		<th>Marks</th>
		<th>Action</th>
		</tr>
		
		
		<c:forEach var="Exam" items="${allExams}">
		<tr>
			<td>${Exam.id}</td>
			<td>${Exam.eid}</td>
			<td>${Exam.name}</td>
			<td>${Exam.paperid}</td> 
			<td>${Exam.question}</td>
			<td>${Exam.marks}</td>
			
			<td>
			<a href = "UpdateExaminer.jsp?id=${Exam.id}&eid=${Exam.eid}&name=${Exam.name}&paperid=${Exam.paperid}&question=${Exam.question}&marks=${Exam.marks}">
			<button>Update</button>
			</a>
			
			<form action="DeleteServletExaminer" method = "post">
			<input type = "hidden" name = "id" value = "${Exam.id}">
			<button>Delete</button>
			</form>
			
			</td>
			
		</tr>
		</c:forEach>
		
	</table>
	
	
	
</body>
</html>