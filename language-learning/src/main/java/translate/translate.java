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

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class translate
 */
@WebServlet("/translate")
public class translate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public translate() {
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
			
			String text =  request.getParameter("text");
			String tgt_lang = request.getParameter("lang");
			String tgt_text = translate_sentence("en", tgt_lang, text);
			
			
			System.out.println("s:::::"+userID);
//			throw new Exception();
			
			
			
//			System.out.println()
			
			Connection connection = null;
		    String insertSql = " INSERT INTO TRANSLATE (USERID, TEXT, TGT_TEXT, TGT_LANG  ) values (?,?,?,?)";

		      
		      
		         DBConnection.getDBConnection(getServletContext());
		         connection = DBConnection.connection;
		         PreparedStatement preparedStmt = connection.prepareStatement(insertSql);
		         preparedStmt.setString(1, userID);
		         preparedStmt.setString(2, text);
		         preparedStmt.setString(3, tgt_text);
		         preparedStmt.setString(4, tgt_lang);
		         preparedStmt.execute();
		         connection.close();

		    
		    request.setAttribute("userName", userName);
		    request.setAttribute("userID", userID);
		    request.setAttribute("result", tgt_text);
			request.setAttribute("text", text);
			request.getRequestDispatcher("/translated.jsp").forward(request, response);
			
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
	
	
	private static String translate_sentence(String src, String tgt, String text) throws IOException {
		
		System.out.println(src);
		System.out.println(tgt);
		System.out.println(text);
        
        String urlStr = "https://script.google.com/macros/s/AKfycbzfrcq8wpNevXovImuS34rnhPXrLqem7UmvAsNgImE7peBCqY2IBahN_6YZ6he3F1xMnw/exec" +
                "?q=" + URLEncoder.encode(text, "UTF-8") +
                "&target=" + tgt +
                "&source=" + src;
        
        URL url = new URL(urlStr);
        StringBuilder response = new StringBuilder();
        HttpURLConnection con = (HttpURLConnection) url.openConnection();
        con.setRequestProperty("User-Agent", "Mozilla/5.0");
        BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
        String inputLine;
        while ((inputLine = in.readLine()) != null) {
            response.append(inputLine);
        }
        in.close();
        
        System.out.println(response.toString());
        return response.toString();
    }

}
