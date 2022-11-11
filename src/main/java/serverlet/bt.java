package serverlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/bt")
public class bt extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	    protected void doPost1(HttpServletRequest request, 
	            HttpServletResponse response)
	            throws ServletException, IOException {

	        response.setContentType("text/html");        
	        PrintWriter out = response.getWriter();        
	        try {
	            out.println("<h1>HTML from servlet</h1>");
	        } finally {
	            out.close();
	        }
	    }
  
     
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	

}
