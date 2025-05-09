package PaymentPackege;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		boolean isTrue;
		isTrue = PaymentController.deletedata(id);
		if(isTrue == true) {
			String alertMessage = "Data Delete Successful";
			response.getWriter().println("<script>alert('"+alertMessage+"');"+"window.location.href='GetAllServlet';</script>");
		}
		else {
			List<Payment>paymentDetails = PaymentController.getById(id);
			request.setAttribute("paymentDetails", paymentDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("wrong.jsp");
			dis.forward(request,response);
		}
	}

}
