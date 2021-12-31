

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.Date;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Database
 */
@WebServlet("/Database")
public class Database extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Database() {
        super();
        // TODO Auto-generated constructor stub
    }

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
		doGet(request, response);
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		try {
			Date date=new Date();
			String reg_date=date.toString();
			Class.forName("com.mysql.jdbc.Driver");  
		     //create connection object
		    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jobreg","root","");
			//new (name,father_name,DOB,address,qualification,department,college_name_year,experience,activities,languages,other_courses)
		   	PreparedStatement ps=con.prepareStatement("insert into reg_db(username,password,name,father_name,age,DOB,address,gender,nationality,qualification,department,college_name,experience,languages,phone_no,courses,activities,registration_date)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
		   
		   	ps.setString(1,request.getParameter("uname"));
			ps.setString(2,request.getParameter("pass"));
		   	ps.setString(3,request.getParameter("name"));
			ps.setString(4,request.getParameter("fname"));
			ps.setString(5,request.getParameter("age"));
			ps.setString(6,request.getParameter("DOB"));
			ps.setString(7,request.getParameter("add"));
			ps.setString(8,request.getParameter("sex"));
			ps.setString(9,request.getParameter("nation"));
			ps.setString(10,request.getParameter("qualification"));
			ps.setString(11,request.getParameter("dept"));
			ps.setString(12,request.getParameter("clgname"));
			ps.setString(13,request.getParameter("experience"));
			ps.setString(14,request.getParameter("languages"));
			ps.setString(15,request.getParameter("phone"));
			ps.setString(16,request.getParameter("courses"));
			ps.setString(17,request.getParameter("activities"));
			ps.setString(18,reg_date);
			
			int i=ps.executeUpdate();
			
			if(i>0) {
				out.println("<b>You are successfully registered</b>");
			    out.println("<br><br>If you want to see details , ");
			    out.println("<a href=\"Login.jsp\">Click here</a>");
			}
		}
		catch(Exception e){e.printStackTrace();}
	}

}
