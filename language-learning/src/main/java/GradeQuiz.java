

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class GradeQuiz
 */
@WebServlet("/GradeQuiz")
public class GradeQuiz extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GradeQuiz() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String[] q = new String[10];
		int numCorrect = 0;
		PrintWriter out = response.getWriter();
	      String docType = "<!doctype html public \"-//w3c//dtd html 4.0 " + "transitional//en\">\n";
	      out.println(docType + //
	            "<html>\n" + //
	            "<head><title>Graded Quiz</title></head>\n" + //
	            "<body style=\"background-color: powderblue; font-size: 30px; text-align: center\">\n" + //
	            "<h2 align=\"center\">Graded Quiz</h2>\n");

	    String listQuestion = "";
		for(int i = 0; i < 10; i++) {
			q[i] = request.getParameter("q" + (i+1));
			if (q[i].equals("correct")) {
				numCorrect++;
				listQuestion = listQuestion + "<li> Question " + (i+1) + ": Correct</li>\n";
			}
			else {
				listQuestion = listQuestion + "<li> Question " + (i+1) + ": Incorrect</li>\n";
			}
		}
		out.println("You got " + numCorrect + "/10 questions correct.\n <ul>\n");
		
		out.println(listQuestion + "</ul>\n");
		
		String subParam = request.getParameter("submit");
		System.out.println(subParam);
		String[] sArr = subParam.split(" ");
		String quizVer = sArr[0];
		String userName = sArr[1];
		String password = "";
		System.out.println(userName);
		System.out.println(quizVer + " " + userName);
	      Connection connection = null;
	      PreparedStatement preparedStatement = null;
	      try {
	         DBConnection.getDBConnection(getServletContext());
	         connection = DBConnection.connection;


	            String selectSQL = "SELECT * FROM USER WHERE USERNAME = ?";
	            preparedStatement = connection.prepareStatement(selectSQL);
	            preparedStatement.setString(1, userName);

	            ResultSet rs = preparedStatement.executeQuery();
                String SLevel;
                String JLevel;
                String Q1;
                String Q2;
	            while (rs.next()) {
	                password = rs.getString("PASSWORD");
	                SLevel = rs.getString(4).trim();
	                System.out.println(SLevel);
	                JLevel = rs.getString(5).trim();
	                System.out.println(JLevel);
	                Q1 = rs.getString(6);//jq
	                System.out.println(Q1);
	                Q2 = rs.getString(7);//sq
	                System.out.println(Q2);
	          
				// these are for updating the DB
				if(quizVer.equals("sp1") || quizVer.equals("sp2")) {
					
					String x = SLevel;
					if (quizVer.equals("sp1") && numCorrect > 6) {
						x = "2";
					}
					else if(quizVer.equals("sp2") && numCorrect > 6){
						x = "Done";
					}
					int score = Integer.parseInt(Q2);
					selectSQL = "UPDATE USER SET SPANISH_LEVEL = ?, QUIZ2_MAX = ? WHERE USERNAME = ?";
		            preparedStatement = connection.prepareStatement(selectSQL);
		            preparedStatement.setString(1, x);
					if(score < numCorrect) {
						x = "" + numCorrect;
					}
					else {
						x = "" + score;
					}
		            preparedStatement.setString(2, x);
		            preparedStatement.setString(3, userName);
		            
				}
				else {
					
					String x = JLevel;
					if (quizVer.equals("jp1") && numCorrect > 6) {
						x = "2";
					}
					else if(quizVer.equals("jp2") && numCorrect > 6){
						x = "Done";
					}
					int score = Integer.parseInt(Q1);
					selectSQL = "UPDATE USER SET JAPANESE_LEVEL = ?, QUIZ1_MAX = ? WHERE USERNAME = ?";
		            preparedStatement = connection.prepareStatement(selectSQL);
		            preparedStatement.setString(1, x);
					if(score < numCorrect) {
						x = "" + numCorrect;
					}
					else {
						x = "" + score;
					}
		            preparedStatement.setString(2, x);
		            preparedStatement.setString(3,  userName);
				} 
	        }
	        preparedStatement.execute(); 
		} catch (SQLException se) {
	         se.printStackTrace();
	      }
	      // goes to user page, please connect
	        out.println("<form action=\"SearchUser\" method=\"post\">\n"
	        		+ "<input type=\"hidden\" name=\"username\" value=\"" + userName + "\">\n"
	        		+ "<input type=\"hidden\" name=\"password\" value=\"" + password + "\">\n"
	        		+ "<button style=\" background-color: powderblue\" name=\"submit\"  type=\"submit\">Return to Home Page</button>\n"
	        		+ "</form>\n");
	      out.println("</body></html>");
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
