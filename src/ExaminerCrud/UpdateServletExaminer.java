package ExaminerCrud;

import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdateServletExaminer")
public class UpdateServletExaminer extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String eid = request.getParameter("eid");
		String name = request.getParameter("name");
		String paperid = request.getParameter("paperid");
		String question = request.getParameter("question");
		String marks = request.getParameter("marks");
		
		boolean isTrue;
		isTrue = ExaminerCtrl.updatedata(id, eid, name, paperid, question, marks);
	
		if(isTrue == true) {
			List<Examiner> examdetails = ExaminerCtrl.getById(id);
			request.setAttribute("examdetails", examdetails);
			String alertMessage = "data updated successfull";
			response.getWriter().println("<script> alert('"+alertMessage+"'); window.location.href='GetAllServletExaminer'</script>");
			
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("wrongExaminer.jsp");
			dis2.forward(request, response);
		}
	
	}

}
