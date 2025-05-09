<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-image: url('uimage.jpg');  background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
    font-family: Arial, sans-serif;
    
    display: flex;
     justify-content: center;
      align-items: center;
       height: 100vh;
        margin: 0;"">

	<%
	String id = request.getParameter("id");
	String studentid = request.getParameter("studentid");
	String specialization = request.getParameter("specialization");
	String email = request.getParameter("email");
	String amount = request.getParameter("amount");
	String date = request.getParameter("date");
	String pmethod = request.getParameter("pmethod");
	%>
	
	  <form action="UpdateServlet" method ="post">

            <div class="form-group">
                <label for="studentId"> ID</label>
                <input type="text" id="id" name="id" value="<%=id %>" readonly>
            </div>
            
            <br><div class="form-group">
                <label for="studentId">Student ID</label>
                <input type="text" id="studentId" name="studentid" value="<%=studentid %>" required>
            </div>
            
             <br><div class="form-group">
                <label for="specialization">Specialization</label>
                <input type="text" id="specialization" name="specialization" value="<%=specialization %>"  required>
            </div>

            <br><div class="form-group">
                <label for="studentEmail">Student Email</label>
                <input type="text" id="studentEmail" name="email" value="<%=email %>"  required>
            </div>

            <br><div class="form-group">
                <label for="amount">Amount</label>
                <input type="text" id="amount" name="amount" value="<%=amount %>"  required>
            </div>

            <br><div class="form-group">
                <label for="date">Date</label>
                <input type="text" id="date" name="date" value="<%=date %>" required>
            </div>

           <br><div class="form-group">
                <label for="paymentMethod">Payment Method</label>
                 <input type="text" id="pmethod" name="pmethod" value="<%=pmethod %>" required>
            </div>

            <br><br><button type="submit">Update Payment</button>
        </form>
	
</body>
</html>