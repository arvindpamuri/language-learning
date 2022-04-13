package translate;


import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
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
			String text =  request.getParameter("text");
			String tgt = request.getParameter("lang");
			String s = translate_sentence("en", tgt, text);
			
			System.out.println("s:::::"+s);
//			throw new Exception();
			
			request.setAttribute("result", s);
			request.setAttribute("text", text);
			request.getRequestDispatcher("/translated.jsp").forward(request, response);
			
		}
		catch (Exception e) {
	         
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
        
        String urlStr = "https://script.google.com/macros/s/AKfycbx0NdKeZknMBbtd1rzoWxEulQOUvfCNeY6GGIXeVHHFBxPv9e6DAWSTH2j_wyFwnszfzw/exec" +
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
