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
@WebServlet("/TranslateQuiz")
public class TranslateQuiz extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TranslateQuiz() {
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
				
				Connection connection = null;
			    PreparedStatement preparedStatement = null;
		      		   
		        DBConnection.getDBConnection(getServletContext());
		        connection = DBConnection.connection;


		        String selectSQL = "SELECT TEXT, TGT_TEXT FROM TRANSLATE WHERE USERID = " + userID  +" LIMIT 2 ;";

		        preparedStatement = connection.prepareStatement(selectSQL);
		            
		        	String text = "";
		        	String tgt_text = "";
		            ResultSet rs = preparedStatement.executeQuery();
		            while (rs.next()) {
		            	text = rs.getString(1).trim();
		                tgt_text = rs.getString(2).trim();
		            }
		            
		            System.out.println("called inside----------------"+tgt_text);
		    request.setAttribute("userName", userName);
		    request.setAttribute("userID", userID);
		    request.setAttribute("text", text);
		    request.setAttribute("tgt_text", tgt_text);
			request.getRequestDispatcher("/TranslateQuiz.jsp").forward(request, response);
			
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
