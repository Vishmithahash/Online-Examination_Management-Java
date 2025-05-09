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


@WebServlet("/StudentDeleteServlet")
public class StudentDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       


 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		String id = request.getParameter("id");
		
		boolean isTrue;
		
		isTrue = StudentController.deletedata(id);
		
		if(isTrue == true) {
			
			String alertMessage = "Data Delete Successful";
			response.getWriter().println("<script> alert('"+alertMessage+"');"+" window.location.href='StudentAllServlet';</script>");
			
		}
		else {
			List<Student> studentDetails = StudentController.getById(id);
			request.setAttribute("studentDetails", studentDetails);
			
			RequestDispatcher dispacher = request.getRequestDispatcher("unsuccessmessege.jsp");
			dispacher.forward(request, response);
		}
		
	}

}
