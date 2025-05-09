<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Student Table</title>
    
    <!-- Internal CSS for Creative Table Design -->
    <style>
        /* Body styling */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f5f7fa;
            margin: 0;
            padding: 0;
        }

        /* Title styling */
        h2 {
            text-align: center;
            color: #4A90E2;
            margin: 20px 0;
            font-size: 24px;
            text-transform: uppercase;
            letter-spacing: 2px;
        }

        /* Table container */
        .table-container {
            width: 90%;
            margin: 30px auto;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
            overflow: hidden;
        }

        /* Table styles */
        table {
            width: 100%;
            border-collapse: collapse;
            background-color: white;
        }

        th, td {
            padding: 12px 15px;
            text-align: center;
            border-bottom: 1px solid #ddd;
            color: #333;
        }

        th {
            background-color: #4A90E2;
            color: white;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        /* Alternating row colors */
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        /* Hover effect on rows */
        tr:hover {
            background-color: #f1f7fd;
            transition: background-color 0.3s ease;
        }

        /* Button styling */
        button {
            padding: 8px 20px;
            font-size: 14px;
            color: white;
            background-color: #E94B3C;
            border: none;
            border-radius: 20px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #D43727;
        }

        /* Form inside the table */
        form {
            display: inline;
        }

        /* Link styling for buttons */
        a {
            text-decoration: none;
        }

        /* Add some padding to the table's action column */
        td:nth-child(8) {
            padding-left: 5px;
            padding-right: 5px;
        }

        /* Responsive styling */
        @media (max-width: 768px) {
            th, td {
                padding: 8px 10px;
                font-size: 14px;
            }
            h2 {
                font-size: 20px;
            }
        }
    </style>
</head>
<body>
    <h2>Student Table</h2>

    <div class="table-container">
        <table>
            <tr>
                <th>Ticket ID</th>
                <th>Student ID</th>
                <th>Name</th>
                <th>Module</th>
                <th>Email</th>
                <th>Phone Number</th>
                <th>Description</th>
                <th>Action</th>
            </tr>
            <c:forEach var="student" items="${allStudents}">
                <tr>
                    <td>${student.id}</td>
                    <td>${student.studentid}</td>
                    <td>${student.name}</td>
                    <td>${student.module}</td>
                    <td>${student.email}</td>
                    <td>${student.no}</td>
                    <td>${student.description}</td>
                    <td>
                        <a href="UpdateStudent.jsp?id=${student.id}&studentid=${student.studentid}&name=${student.name}&module=${student.module}&email=${student.email}&no=${student.no}&description=${student.description}">
                            <button>Update</button>
                        </a>
                        <form action="StudentDeleteServlet" method="post">
                            <input type="hidden" name="id" value="${student.id}">
                            <button>Delete</button>
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>


