package PaymentPackege;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/InsertServlet")
public class InsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String studentid = request.getParameter("studentid");
		String specialization = request.getParameter("specialization");
		String email = request.getParameter("email");
		String amount = request.getParameter("amount");
		String date = request.getParameter("date");
		String pmethod = request.getParameter("pmethod");

		
		boolean isTrue;
		
		isTrue = PaymentController.insertdata(studentid, specialization, email, amount, date, pmethod);
		
		
		
		if(isTrue==true) {
			String alertMessage = "Successful";
			response.getWriter().println("<script> alert('"+alertMessage+"'); window.location.href='GetAllServlet'</script>");
		
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
	}

	

}
