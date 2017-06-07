import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.mysql.jdbc.PreparedStatement;


public class Driver {
	Connection conn = null;
	Statement statement;
	ResultSet result;
	JDBC jdbc=new JDBC();
	static int id = 256;
	public Driver()
	{
		try {
			 conn=jdbc.getDbConnection();
		}catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	}
	
	public ResultSet findAttribute(String str)
	{
		String sql="select * from " + str;
		try {
			statement = (Statement) conn.createStatement();
			result=statement.executeQuery(sql);
			System.out.println(result.getString(1));
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
		
		return result;
	}
	
	
	public void putData(String fullName,String email,String phone, String password,String passcon) throws SQLException{
		/*Statement mySmt = conn.createStatement();
		String sql = "insert into Customer "
				+  "(Customer_id,Customer_name,customer_email,Customer_No_of_apps,Password,Phone_no) "
				+  "values " + "(" + id++ + "," + fullName + "," + email + "," + "'0'" + "," + phone + "," + password+ ")";
		System.out.println(sql);
				 //INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
		
				 //VALUES ('Cardinal','Tom B. Erichsen','Skagen 21','Stavanger','4006','Norway'); */
		 id+=1;
		 PreparedStatement ps = (PreparedStatement) conn.prepareStatement("insert into Customer(Customer_id, Customer_name, Customer_email,Customer_No_of_apps,Password,Phone_no) values(?,?,?,?,?,?)");
		 ps.setInt(1,id++);
         ps.setString(2,fullName);
         ps.setString(3,email);
         ps.setInt(4,0);
         ps.setString(5, password);
         ps.setString(6,phone);
         
         ps.executeUpdate();
		
		//mySmt.executeUpdate(sql);
	}
	
	
	public void close() {
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
