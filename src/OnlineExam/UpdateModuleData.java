package OnlineExam;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateModuleData")
public class UpdateModuleData extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
	}
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String subjectName = request.getParameter("subjectName");
		String examinationDate = request.getParameter("examinationDate");
		String examinationTime = request.getParameter("examinationTime");
		String totalMarks = request.getParameter("totalMarks");
		String passingMarks = request.getParameter("passingMarks");
		String duration = request.getParameter("duration");
		String questionFormat = request.getParameter("questionFormat");
		String studentGroup = request.getParameter("studentGroup");
		String gradingMethod = request.getParameter("gradingMethod");
	
boolean isTrue;
		
		isTrue = ContolModule.updatedata(id, subjectName, examinationDate, examinationTime, totalMarks, passingMarks, duration, questionFormat, studentGroup, gradingMethod);
	
		if(isTrue==true)
		{
			List<ModuleModel> moduleDetails = ContolModule.getById(id);
			request.setAttribute("moduleDetails", moduleDetails);
			
			String alertMessage = "Data Update Successful";
			response.getWriter().println("<script> alert('"+alertMessage+"'); window.location.href='ViewModulesServelet'</script>");
		}
		else
		{
			RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
			dis2.forward(request,  response);
		}
	}

}
