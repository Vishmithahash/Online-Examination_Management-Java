<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">





<style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
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
            border-radius: 5px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            max-width: 400px;
            margin: auto;
        }

        label {
            display: block;
            margin: 15px 0 5px; /* Increased margin for more space */
            font-weight: bold;
        }

        input[type="text"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            margin-bottom: 15px; /* Added bottom margin for spacing */
        }

        button {
            background-color: #4CAF50;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            width: 100%;
            margin-top: 10px; /* Added margin on top of the button */
        }

        button:hover {
            background-color: #45a049;
        }
        
        
         h2 {
        text-align: center;
        color: white;
        font-size: 24px;
        margin-bottom: 20px;
    }
    </style>






<title>Update Form</title>
</head>
<body>
<h2>Update Form</h2>
	<%
	String id = request.getParameter("id");
	String eid = request.getParameter("eid");
	String name = request.getParameter("name");
	String paperid = request.getParameter("paperid");
	String question = request.getParameter("question");
	String marks = request.getParameter("marks");

	%>
	
	<form action = "UpdateServletExaminer" method = "POST">

				ID: <input type="text" name="id" value="<%=id%>" readonly> <br>

				Examiner ID: <input type="text" name="eid" value="<%=eid%>" > <br>
                
                Examiner Name: <input type="text"  name="name" value="<%=name%>" ><br>
                
               
                Paper ID: <input type="text" name="paperid" value="<%=paperid%>" ><br>

                
                Question: <input type ="text"  name="question" value="<%=question%>" ><br>

                
                Relevent Marks: <input type = "text"  name="marks"  value="<%=marks%>" ><br>
                
               
                
                

                <button type="submit">Update Question</button>
            </form>
	
</body>
</html>