package PaymentPackege;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String studentid = request.getParameter("studentid");
		String specialization = request.getParameter("specialization");
		String email = request.getParameter("email");
		String amount = request.getParameter("amount");
		String date = request.getParameter("date");
		String pmethod = request.getParameter("pmethod");
		
		boolean isTrue;
		isTrue = PaymentController.updatedata(id, studentid, specialization, email, amount, date, pmethod);
		
	
		if(isTrue==true) {
			List<Payment> paymentdetails = PaymentController.getById(id);
			request.setAttribute("paymentdetails", paymentdetails);
			
			String alertMessage = "Data Update Successful";
			response.getWriter().println("<script> alert('"+alertMessage+"');"+"window.location.href='GetAllServlet';</script>");
		
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
	}

}
