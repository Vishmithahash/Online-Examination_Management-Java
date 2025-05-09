<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-image: url('dpayimage2.jpg'); ; font-family: Arial, sans-serif; padding: 20px;">

	<h2>Payment Table</h2>
	<table border = "2px">
		<tr>
			<th>Payment ID</th>
			<th>Student ID</th>
			<th>Specialization</th>
			<th>Email</th>
			<th>Amount</th>
			<th>Date</th>
			<th>Payment Method</th>
			<th>Action</th>
		</tr>
		<c:forEach var="payment" items="${allPayments}">
		<tr>
			<td>${payment.id}</td>
			<td>${payment.studentid}</td>
			<td>${payment.specialization}</td>
			<td>${payment.email}</td>
			<td>${payment.amount}</td>
			<td>${payment.date}</td>
			<td>${payment.pmethod}
			
			<td>
				<a href= "update.jsp?id=${payment.id}&studentid=${payment.studentid}&specialization=${payment.specialization}&email=${payment.email}&amount=${payment.amount}&date=${payment.date}&pmethod=${payment.pmethod}">
				<button>Update</button>
				</a>
				
				<form action="DeleteServlet" method="post">
				<input type="hidden" name="id" value="${payment.id}"/>
					<button>Delete</button>
				</form>
			</td>
		</tr>
		</c:forEach>
	</table>


</body>
</html>