<%@ page import ="java.sql.*" %>
<%
    String userid = request.getParameter("username");    
    String pwd = request.getParameter("password");
    Class.forName("oracle.jdbc.driver.OracleDriver");  
Connection con=DriverManager.getConnection(  
"jdbc:oracle:thin:@localhost:1521:xe","system","cse"); 
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from registerfood where n='" + userid + "' and p='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("userid", userid);
        response.sendRedirect("successlogin.jsp");
    } 
    else {
        out.println("Invalid password <a href='loginpage.jsp'>Try again</a>");
    }