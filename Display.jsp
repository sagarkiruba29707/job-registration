<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Your Registration Details</title>
<style>
fieldset{
	text-align:left;
	background-color:lemonchiffon;
	border:2px groove;
	width:700px;
	}
</style>
</head>
<body>
<%@page import="java.sql.*"%>.;
<%@page import ="java.util.Date"%>
<h1><b><center>Application details</center></b></h1>
<%try{
  Class.forName("com.mysql.jdbc.Driver");  
    //create connection object
  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jobreg","root","");	 
 Statement st=con.createStatement();
 String n=request.getParameter("username");
 String p=request.getParameter("pwd");
 ResultSet rs=st.executeQuery("select * from reg_db where username='"+n+"' and password='"+p+"'");
 rs.next();
%>
<center><fieldset>
<legend>Info</legend>
<br><b>NAME&emsp;&emsp;&emsp;&emsp;&emsp;&ensp;&emsp;&emsp;:&emsp;</b><%=rs.getString("name") %>
<br><br><b>FATHER NAME&emsp;&emsp;&emsp;:&ensp;</b><%=rs.getString("father_name") %>
<br><br><b>AGE&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;&emsp;&emsp;:&emsp;</b><%=rs.getInt("age") %>
<br><br><b>DATE OF BIRTH&ensp;&emsp;&emsp;:&emsp;</b><%=rs.getString("DOB") %>
<br><br><b>ADDRESS&emsp;&emsp;&emsp;&ensp;&emsp;&emsp;&nbsp;:&emsp;</b><%=rs.getString("address") %>
<br><br><b>GENDER&emsp;&emsp;&emsp;&ensp;&emsp;&emsp;&ensp;&nbsp;:&emsp;</b><%=rs.getString("gender") %>
<br><br><b>NATIONALITY&emsp;&emsp;&emsp;&nbsp;:&emsp;</b><%=rs.getString("nationality") %>
<br><br><b>QUALIFICATION&nbsp;&emsp;&emsp;:&emsp;</b><%=rs.getString("qualification") %>
<br><br><b>DEPARTMENT&emsp;&ensp;&emsp;&emsp;:&emsp;</b><%=rs.getString("department") %>
<br><br><b>COLLEGE NAME&nbsp;&emsp;&emsp;:&emsp;</b><%=rs.getString("college_name") %>
<br><br><b>EXPERIENCE&emsp;&emsp;&emsp;&emsp;:&emsp;</b><%=rs.getInt("experience") %>
<br><br><b>LANGUAGES&emsp;&emsp;&nbsp;&emsp;&emsp;:&emsp;</b><%=rs.getString("languages") %>
<br><br><b>PHONE NUMBER&nbsp;&emsp;&emsp;:&emsp;</b><%=rs.getLong("phone_no")%>
<br><br><b>OTHER COURSES&emsp;&emsp;:&emsp;</b><%=rs.getString("courses") %>
<br><br><b>OTHER ACTIVITIES&emsp;:&emsp;</b><%=rs.getString("activities") %>
<br><br><br><br>
<p style="text-align:right">registered at&nbsp;<%=rs.getString("registration_date") %></p></fieldset></center>
<%
}
catch(Exception e){e.printStackTrace();}
%>
</body>
</html>