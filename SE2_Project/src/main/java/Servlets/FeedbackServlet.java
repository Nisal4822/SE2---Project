package Servlets;


import java.io.IOException;
import javax.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/FeedbackServlet")

public class FeedbackServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        // Retrieve form data
        String firstname = request.getParameter("firstname");
        String Useremail = request.getParameter("Useremail");
        String feedback = request.getParameter("feedback");

        // Perform any processing if needed
        
        // Forward to success JSP page
        request.setAttribute("firstname", firstname);
        request.getRequestDispatcher("/FeedbackSuccess.jsp").forward(request, response);
    }

}
