package books;

import java.sql.*;


public class deletebook {
	
	public String title;
	public String getTitle() {
		return title;
	}
	public void setName(String title) {
		this.title = title;
	}
	
	
	public String execute() 
	{
		try{
			Statement stmt;
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			Connection conn=java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/BookDB","root","12345678");
			
			stmt = conn.createStatement(); // link MySQL
			ResultSet rst;
			
			String sql ="select Title from Book where Book.Title='"+title+"'";
			rst = stmt.executeQuery(sql);
			
			if(rst.next())
			{
				String sql2 ="delete from Book where Book.Title='"+title+"'";
				stmt.execute(sql2);
				
				System.out.println("delete success");
			}
			else
			{
				stmt.close();
				conn.close();
				return "Error";
			}
			stmt.close();
			conn.close();
		}catch(Exception e){
			e.printStackTrace();
		}
		return "Success";
	}
}
