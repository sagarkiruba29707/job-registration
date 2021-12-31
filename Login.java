import java.sql.*;

public class Login {
	public static boolean validate(String n, String p) {
		boolean status=false;
		try {
			Class.forName("com.mysql.jdbc.Driver");  
		     //create connection object
		     Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jobreg","root","");
			Statement st=con.createStatement();		
				ResultSet rs=st.executeQuery("select * from reg_db where username='"+n+"' and password='"+p+"'");	
				status=rs.next();
	}
	catch(Exception e){e.printStackTrace();}
	return status;
	}
	
}
