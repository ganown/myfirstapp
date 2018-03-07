    
    <HTML>
	<Body>
	<%@ page language="java" %>
	<%@ page import="java.io.*"%>
	<%@ page import="java.sql.DriverManager" %>
	<%@ page import="java.sql.Connection" %>
	<%@ page import="java.sql.SQLException" %>
	<%
	try{
		Class.forName("org.postgresql.Driver");
        Connection connection = null;
        java.sql.Statement stmt = null;
        out.println("Before Database Connectivity");
        connection = DriverManager.getConnection("jdbc:postgresql://192.168.99.100:5432/firstapp","testuser", "testpwd");
        out.println("Connectivity Successful");
        stmt = connection.createStatement();
      
      String sql = "Insert into Customer Values ('ONE','1st Customer')";
      stmt.executeUpdate(sql);
       
        out.println("sql query Updated");
        
       connection.close();
        
     }
     catch (Exception ex)
     {
        out.println("Exception : " + ex.toString());
     }
%>
	</Body>
</HTML>