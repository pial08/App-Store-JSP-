

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SearchServlet
 */
@WebServlet("/SearchServletPath")
public class SearchServlet extends HttpServlet {
	
	ResultSet result = null;
	String app_name=null;
	String app_url = null;
	String app_image = null;
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("inside post Method");
		response.setContentType("text/html");
		PrintWriter writer = response.getWriter();
		String search = request.getParameter("search");
		
		String str = "Apps";
		Driver driver = new Driver();
		result = driver.findAttribute(str);
		System.out.println("hoooo!!");
		
		try {
			while(result.next()){
				//app_name=result.getString(1);
				app_name = result.getString(2);
				app_url	= result.getString(3);
				app_image = result.getString(9);
				
				//out.println(Customer_name + " " + Password);
				
				if(app_name.equals(search))
				{
					System.out.println("match");
					
					HttpSession session=request.getSession();
					session.setAttribute("appName",app_name);
					session.setAttribute("appUrl",app_url);
					session.setAttribute("image", app_image);
					
					
					
					response.sendRedirect("next.jsp");
					//dp.forward(request, response);
					
					System.out.println("match");
					result.close();
					break;
					
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

}
