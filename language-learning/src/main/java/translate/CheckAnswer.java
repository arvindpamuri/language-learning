package translate;

import database.DBConnection;


import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class translate
 */
@WebServlet("/CheckAnswer")
public class CheckAnswer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckAnswer() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		try {
			
			
				String userName = request.getParameter("userName");
				String userID = request.getParameter("userID");
				String text = request.getParameter("text");
				String usertext = request.getParameter("usertext");
				String tgt_text = request.getParameter("tgt_text");
				
//		    System.out.println();
//		    System.out.println(text);
//		    System.out.println(usertext);
//		    System.out.println();
		    request.setAttribute("userName", userName);
		    request.setAttribute("userID", userID);
		    request.setAttribute("text", text);
		    request.setAttribute("usertext", usertext);
		    request.setAttribute("tgt_text", tgt_text);
			request.getRequestDispatcher("/QuizOutput.jsp").forward(request, response);
			
		}
		catch (Exception e) {
			
			 System.out.println(e);
	         
	         request.getRequestDispatcher("/translateError.jsp").forward(request, response);
		}
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	

}
