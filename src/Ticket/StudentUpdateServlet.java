package Ticket;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Ticket.Student;
import Ticket.StudentController;


@WebServlet("/StudentUpdateServlet")
public class StudentUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String studentid = request.getParameter("studentid");
		String name = request.getParameter("name");
		String module = request.getParameter("module");
		String email = request.getParameter("email");
		String no = request.getParameter("no");
		String description = request.getParameter("description");
	
		
		boolean isTrue;
		isTrue = StudentController.updatedata(id, studentid, name, module, email, no, description);
			
			if(isTrue==true) {
				List<Student> studentdetails = StudentController.getById(id);
				request.setAttribute("studentdetails", studentdetails);
				
				String alertMessage = "Data Update Successful";
				response.getWriter().println("<script> alert('"+alertMessage+"'); window.location.href='StudentAllServlet'</script>");
				
			}
			else {
				RequestDispatcher dis2 = request.getRequestDispatcher("unsuccessmessge.jsp");
				dis2.forward(request, response);
			
			}
		
	}

}
