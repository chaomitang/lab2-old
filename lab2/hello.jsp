<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Hello users</title>
</head>
<body>
<center>
	==========================================================<br>
	<h3>Books management platform</h3>
	<h4>+++Hello,users!+++</h4>
	==========================================================<br>
	<h1>                   </h1>
	
	--------------------------------------------------------<br>
	Search the Books by inputing the author:<br>
	--------------------------------------------------------<br>
		<form Action="search.action" method="post">
			 Name:<input name="name" type="text">
			 <input type="submit" value="search">
		</form>
	--------------------------------------------------------<br>
	<br>
	<table   border="1" cellpadding="1" cellspacing="0" >
	<%
	try
	{
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		Connection con=java.sql.DriverManager.getConnection
				("jdbc:mysql://localhost:3306/bookdb","root","12345678");
		Statement stmt=con.createStatement();
		ResultSet rst=stmt.executeQuery("select * from author;");
		
		out.println("<tr>");
		out.println("You can use the following names");
		out.println("</tr>");
		

		out.println("<tr>");
		out.println("    ");
		out.println("</tr>");
		
		while(rst.next())
		{
			out.println("<tr>");
			out.println("<td>"+rst.getString("Name")+"</td>");
			out.println("</tr>");
		}
		
		rst.close();
		stmt.close();
		con.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	 %>
	 </table>
	==========================================================<br>
	</center>
</body>
</html>
