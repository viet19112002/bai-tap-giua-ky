package controller;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/FormServlet")
public class serverlet {
	    protected void doPost(HttpServletRequest request, 
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

}
