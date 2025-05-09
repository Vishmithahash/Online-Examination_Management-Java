<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
	body{
	background-color: yellow;
	}
	.btn1:hover{
	background-color: red;
	}
	.btn2:hover{
	background-color: green;
	}
	table{
	background-color: lightblue;
	}
</style>
</head>
<body>
<h2>Module Table</h2>

<input type = "text" id="searchInput" placeholder="search...">
<br><br>

<table border="2px">
	<tr>
		<th>ID</th>
		<th>Subject Name</th>
		<th>Exam Date</th>
		<th>Exam Time</th>
		<th>Total Marks</th>
		<th>Passing Marks</th>
		<th>Duration</th>
		<th>Question Format</th>
		<th>Student Group</th>
		<th>Grading Method</th>
		<th>Action</th>
	</tr>
	
	<c:forEach var="modules" items="${allModules}"> 
	<tr>
		<td>${modules.id}</td>
		<td>${modules.subjectName}</td>
		<td>${modules.examinationDate}</td>
		<td>${modules.examinationTime}</td>
		<td>${modules.totalMarks}</td>
		<td>${modules.passingMarks}</td>
		<td>${modules.duration}</td>
		<td>${modules.questionFormat}</td>
		<td>${modules.studentGroup}</td>
		<td>${modules.gradingMethod}</td>
		<td>
		<a href = "UpdateModuleData.jsp?id=${modules.id}&subjectName=${modules.subjectName}&examinationDate=${modules.examinationDate}&examinationTime=${modules.examinationTime}&totalMarks=${modules.totalMarks}&passingMarks=${modules.passingMarks}&duration=${modules.duration}&questionFormat=${modules.questionFormat}&studentGroup=${modules.studentGroup}&gradingMethod=${modules.gradingMethod}">
			<button class="btn2">UPDATE</button>
		</a>
		
		<form action="DeleteModuleServelet" method="post">
		<input type="hidden" name="id" value="${modules.id}">
			<button class="btn1">DELETE</button>
		</form>
		</td>
	</tr>
	</c:forEach>
</table>

<script>

function filterTable()
{
	var input,filter,table,tr,td,i,txtValue;
	input = document.getElementById("searchInput");
	filter = input.value.toUpperCase();
	table = document.querySelector("table");
	tr=table.getElementsByTagName("tr");
	
	for(i=0;i<tr.length;i++)
		{
		td=tr[i].getElementsByTagName("td");
		for(var j=0;j<td.length;j++)
			{
			if(td[j])
				{
				txtValue = td[j].textContent || td[j].innerText;
				if(txtValue.toUpperCase().indexOf(filter) > -1)
					{
					tr[i].style.display="";
					
				
				break;
				}
			else
				{
				tr[i].style.display="none";
				}
			}
		}
	}
}
	document.getElementById("searchInput").addEventListener("input", filterTable);

</script>


</body>
</html>