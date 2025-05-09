package OnlineExam;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteModuleServelet")
public class DeleteModuleServelet extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
       
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String id = request.getParameter("id");
		boolean isTrue;
		isTrue = ContolModule.deletedata(id);
		
		if(isTrue == true)
		{
			String alertMessage = "Data Delete Successful";
			response.getWriter().println("<script>alert('"+alertMessage+"');"+"window.location.href='ViewModulesServelet';</script>");
		}
		else
		{
			List<ModuleModel>moduleDetails = ContolModule.getById(id);
			request.setAttribute("moduleDetails", moduleDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("wrong.jsp");
			dispatcher.forward(request,  response);
		}
	}

}
