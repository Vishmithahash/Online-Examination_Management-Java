package OnlineExam;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ViewModulesServelet")
public class ViewModulesServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		List <ModuleModel> allModules = ContolModule.getAllmodule();
		request.setAttribute("allModules", allModules);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("displayModuleDetails.jsp");
		dispatcher.forward(request, response);
	 }
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		doGet(request, response);
	}

}
