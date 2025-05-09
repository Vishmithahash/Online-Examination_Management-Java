package ExaminerCrud;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/InsertServletExaminer")
public class InsertServletExaminer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

  

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String eid = request.getParameter("eid");
		String name = request.getParameter("name");
		String paperid = request.getParameter("paperid");
		String question = request.getParameter("question");
		String marks = request.getParameter("marks");
		
		boolean isTrue;
		
		isTrue = ExaminerCtrl.insertdata(eid,name,paperid,question,marks);
		
		if(isTrue == true) {
			String alertMessage = "data insert successfull";
			response.getWriter().println("<script> alert('"+alertMessage+"'); window.location.href='GetAllServletExaminer'</script>");
			
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("wrongExaminer.jsp");
			dis2.forward(request, response);
		}
	}

}
