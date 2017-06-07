

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

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServletPath")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	
	Connection conn = null;
	Statement statement;
	ResultSet result;
	String Customer_email;
	String app_name;
	String Customer_name,Password;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("pial");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		System.out.println("inside post Method");
		response.setContentType("text/html");
		PrintWriter writer = response.getWriter();
		//String userName = request.getParameter("userName");
		String fullName = request.getParameter("fullName");
		writer.println("<h1>Login failed. Go back and try again</h1>");
		
		
		PrintWriter out = response.getWriter();
		out.println(" Full name is " + fullName );
		
		
		String pass = request.getParameter("password");
		out.println("password is:  " + pass);
		
		
		//String location = request.getParameter("location");
		
		
		
		//Connection conn = null;
		//Statement statement;
		ResultSet result=null;
		//JDBC jdbc=new JDBC();
		
		/*try {
			 conn=(Connection) jdbc.getDbConnection();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		String sql="select * from Customer";*/
		
		 try {
			//statement = (Statement) conn.createStatement();
			//result=statement.executeQuery(sql);
			 
			String str = "Customer";
			Driver driver = new Driver();
			result=driver.findAttribute(str);
			System.out.println("boo!!");
			
			
			while(result.next()){
				//app_name=result.getString(1);
				Customer_name = result.getString("Customer_name");
				Password = result.getString("Password");
				Customer_email=result.getString("Customer_email");
				//out.println(Customer_name + " " + Password);
				System.out.println(Customer_name + " " + Password);
				System.out.println(fullName + " " + pass);
				if(pass.equals(Password) && fullName.equals(Customer_name))
				{
					System.out.println("match");
					
					HttpSession session=request.getSession();
					session.setAttribute("name",Customer_name);
					session.setAttribute("name1",Customer_email);
					
					
					
					response.sendRedirect("homepage.jsp");
					//dp.forward(request, response);
					
					System.out.println("match");
					result.close();
					break;
					
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			//close();
		}
		
	}
	
	
	private void close() {
	    try {
	      if (result != null) {
	        result.close();
	      }

	      if (statement != null) {
	        statement.close();
	      }

	      if (conn != null) {
	        conn.close();
	      }
	    } catch (Exception e) {

	    }
	  }

}
