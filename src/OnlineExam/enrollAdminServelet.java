package OnlineExam;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/enrollAdminServelet")
public class enrollAdminServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    private static final String ENROLLMENT_KEY = "123"; // Define your enrollment key here

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get the enrollment key from the form
        String inputKey = request.getParameter("enrollmentKey");

        // Check if the key is correct
        if (ENROLLMENT_KEY.equals(inputKey)) {
            // Enrollment successful
        	String alertMessage = "Enrollment Key Successfully Entered";
			response.getWriter().println("<script> alert('"+alertMessage+"'); window.location.href='addModules.jsp'</script>");
		
        } else {
            // Enrollment failed
            response.getWriter().println("Invalid enrollment key. Please try again.");
        }
    }
}