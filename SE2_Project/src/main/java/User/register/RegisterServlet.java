package User.register;

import java.io.PrintWriter;
import jakarta.servlet.RequestDispatcher;
//import jakarta.servlet.*;
//import jakarta.servlet.http.*;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
//import jakarta.servlet.annotation.*;
import java.io.IOException;


@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public Register_Dao reg;  // Object for the Register_Dao.java class
	
	public void init() {
		reg = new Register_Dao();
	}
	

    public RegisterServlet() {
    	super();
    }
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/Registerpage.jsp");
		dispatcher.forward(request, response);
	}
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
       try {
    	   String firstName = request.getParameter("firstName");
           String lastName = request.getParameter("lastName");
           String mobilenum = request.getParameter("mobilenum");
           String useremail = request.getParameter("useremail");
           String paypalemail = request.getParameter("paypalemail");
           String paypalpswd = request.getParameter("paypalpswd");
           String userpswd = request.getParameter("userpswd");

           Register reg1 = new Register();
           reg1.setFirstname(firstName);
           reg1.setLastname(lastName);
           reg1.setMobilenumber(mobilenum);
           reg1.setUseremail(useremail);
           reg1.setPaypalemail(paypalemail);
           reg1.setPaypalpswd(paypalpswd);
           reg1.setUserpswd(userpswd);
        	PrintWriter pw = response.getWriter();
        	System.out.print(firstName);
    	  // pw.println(" "+firstName+" "+lastName+" "+mobilenum+" "+useremail+" "+paypalemail+" "+paypalpswd+" "+userpswd);
    	   reg.registerUsers(reg1);
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        
        RequestDispatcher dispatcher = request.getRequestDispatcher("");
		dispatcher.forward(request, response);
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

}
