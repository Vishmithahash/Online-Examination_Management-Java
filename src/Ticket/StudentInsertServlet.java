package Ticket;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Ticket.StudentController;


@WebServlet("/StudentInsertServlet")
public class StudentInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String studentid = request.getParameter("studentid");
		String name = request.getParameter("name");
		String module = request.getParameter("module");
		String email = request.getParameter("email");
		String no = request.getParameter("no");
		String description = request.getParameter("description");

		
		boolean isTrue;
		
		isTrue = StudentController.insertdata(studentid, name, module, email, no, description);
		
		
		
		if(isTrue==true) {
			String alertMessage = "Data Insert Successful";
			response.getWriter().println("<script> alert('"+alertMessage+"'); window.location.href='StudentAllServlet'</script>");
		
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccessmessege.jsp");
			dis2.forward(request, response);
		}
		
	}

}
