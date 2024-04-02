import java.io.*;  
import java.sql.*;  
import javax.servlet.ServletException;  
import javax.servlet.http.*;  
  
public class Register extends HttpServlet {  
public void doPost(HttpServletRequest request, HttpServletResponse response)  
            throws ServletException, IOException {  
  
response.setContentType("text/html");  
PrintWriter out = response.getWriter();  
          
String n=request.getParameter("name");  
String e=request.getParameter("email");  
String p=request.getParameter("number"); 
String pa=request.getParameter("password1");
String rep=request.getParameter("password2");   
          
try
{  
Class.forName("oracle.jdbc.driver.OracleDriver");  
Connection con=DriverManager.getConnection(  
"jdbc:oracle:thin:@localhost:1521:xe","system","cse");  
  
PreparedStatement ps=con.prepareStatement(  
"insert into registerfood values(?,?,?,?,?)");  
  
ps.setString(1,n);  
ps.setString(2,e);  
ps.setString(3,p);  
ps.setString(4,pa);  
ps.setString(5,rep);  
          
int i=ps.executeUpdate();  
response.setContentType("text/html");
if(i>0)  
{
out.println("You are successfully registered...");
RequestDispatcher rd = request.getRequestDispatcher("loginfood.html");
rd.forward(request, response);
}
}
catch (Exception e2)
{
System.out.println(e2);
}  
          
out.close();  
}  
  
}  