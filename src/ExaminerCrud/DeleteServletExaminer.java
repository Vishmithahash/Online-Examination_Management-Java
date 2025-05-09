package ExaminerCrud;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeleteServletExaminer")
public class DeleteServletExaminer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		boolean isTrue;
		
		isTrue = ExaminerCtrl.deletedata(id);
		
		if(isTrue == true) {
			String alertMessage = "Data Delete Successful";
			response.getWriter().println("<script>alert('"+alertMessage+"');"+"window.location.href='GetAllServletExaminer';</script>");
		}
		else {
			List<Examiner> examdetails = ExaminerCtrl.getById(id);
			request.setAttribute("examdetails", examdetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("wrongExaminer.jsp");
			dispatcher.forward(request, response);
		}
		
	}

}
