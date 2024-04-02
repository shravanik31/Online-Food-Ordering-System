import java.io.*;
import java.sql.*;
import java.util.Enumeration;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class Login extends HttpServlet{
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");  
		PrintWriter out = response.getWriter();  
		          
		String u=request.getParameter("username");  
		String p=request.getParameter("password");
		try{

	       Class.forName("oracle.jdbc.driver.OracleDriver");  
Connection con=DriverManager.getConnection(  
"jdbc:oracle:thin:@localhost:1521:xe","system","cse");

		Statement st=con.createStatement();
	        int flag=0;
	        ResultSet rs =st.executeQuery("select username,password from registerfood");
	        while(rs.next())
	        {
	        	
			//System.out.println(rs.getString("username")+" "+rs.getString("password"));
	        	
			if((rs.getString("username").equals(u))&& (rs.getString("password").equals(p)))
	        			{
	        				flag=1;
	        				break;
	        				//out.println("successful login");
	        			}
	        	else
	        	{
	        		flag=0;
	        		continue;
	        	}
	        }
	        if(flag==1){
	        		out.println("successful login");
	        }
	        else
	        {
	        	out.println("unsuccessful login");
	        }
		}
		catch(Exception e){
			e.printStackTrace();
			System.out.println(e);}
	}
}