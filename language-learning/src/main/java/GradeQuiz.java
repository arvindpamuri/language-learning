

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

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
		
		String quizVer = request.getParameter("submit");
		
		// these are for updating the DB
		if (quizVer.equalsIgnoreCase("submit spanish quiz one")) {
			quizVer = "sp1";
		}
		else if(quizVer.equalsIgnoreCase("submit spanish quiz two")) {
			quizVer = "sp2";
			/*
			 * 1 = uno
			 * 2 = ocho
			 * 3 = diez
			 * 4 = Catorce
			 * 5 = Veinte
			 * 6 = cero
			 * 7 = Sesenta
			 * 8 = Treinta y siete
			 * 9 = Noventa y uno
			 * 10 = Cien
			 * i decided to just put correct and wrong for the return values on the inputs.
			 */
			
		}
		else if(quizVer.equalsIgnoreCase("submit spanish quiz three")) {
			quizVer = "sp3";
		}
		else if(quizVer.equalsIgnoreCase("submit japanese quiz one")) {
			quizVer = "jp1";
		}
		else if(quizVer.equalsIgnoreCase("submit japanese quiz two")) {
			quizVer = "jp2";
			/*
			 * 1 =
			 * 2 =
			 * 3 =
			 * 4 = 
			 * 5 =
			 * 6 =
			 * 7 =
			 * 8 =
			 * 9 = 
			 * 10 =
			 */
			
		}
		else if(quizVer.equalsIgnoreCase("submit japanese quiz three")) {
			quizVer = "jp3";
		}
		
	      // goes to user page, please connect
	      out.println("<a href=\"\"</a>Return to User Home<br>");
	      out.println("</body></html>");
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
