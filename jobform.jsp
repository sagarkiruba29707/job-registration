<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JobForm</title>
<style>
h1{
   text-align:center;
   font-size:50px;  
   } 
fieldset{
    text-align:left;
	background-color:lemonchiffon;
	border:2px groove;
	width:600px;
	} 
</style>
<%@page import="java.io.*" %>
</head>
<body>
<h1><i>JOB REGISTRATION</i></h1>
<center>
<fieldset>
<legend><b>Please fill the details in capital letters</b></legend>
        <form name="myForm" action="Database" method="post"> 
        <br><br>Username&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;:&emsp;<input type="text" name="uname" value="<%=request.getParameter("username")%>" readonly>
        <br>Password&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp;:&emsp;<input type="text" name="pass" value="<%=request.getParameter("pwd")%>" readonly>
        <br><br>Name&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;:&emsp;<input type="text" name="name"required>
        <br><br>Father name&emsp;&emsp;&emsp;&emsp;&ensp;:&emsp;<input type="text" name="fname"required>
        <br><br>Age&emsp;&nbsp;&ensp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;:&emsp;<input type="number" name="age"required>
        <br><br>DOB&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;&emsp;:&emsp;<input type="date" name="DOB" placeholder="YYYY-MM-DD" required>
        <br><br>Address&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;:&emsp;<input type="text" name="add" required>
        <br><br>Gender&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;:&emsp;<input type="radio" name="sex" value="Male" >Male&nbsp;<input type="radio" name="sex" value="Female" >Female
        <br><br>Nationality&emsp;&emsp;&emsp;&emsp;&ensp;&nbsp;:&emsp;<input type="text" name="nation" required>
        <br><br>Qualification&ensp;&nbsp;&nbsp;&emsp;&emsp;&emsp;:&emsp;<select  name="qualification" required>
        	<option > </option>
        	<option > BACHELOR OF TECHNOLOGY</option>
            <option> BACHELOR OF ENGINEERING</option>
                <option > DIPLOMA </option>
                    <option>POLYTECHNIC </option></select>
        <br><br>Department&ensp;&emsp;&emsp;&emsp;&emsp;:&emsp;<input type="text" name="dept" size="20" required>
        <br><br>College Name & Year&nbsp;:&emsp;<input type="text" name="clgname"required>        
        <br><br>Years of Experience&ensp;&ensp;:&emsp;<input type="number" name="experience"required>
        <br><br>Languages Known&ensp;&emsp;:&emsp; <input type="text" name="languages"required>
        <br><Br>Phone Number&emsp;&emsp;&emsp;:&emsp;&nbsp;<input type="number" name="phone" maxlength="10">
        <br><br>Other courses&ensp;&emsp;&emsp;&emsp;:&emsp; <input type="text" name="courses">
        <br><br>Extra curricular&ensp;&nbsp;&emsp;&emsp;:&emsp;&nbsp;<input type="text" name="activities">
        <br><br>Optional:<br><textarea rows="5" cols="40" > why did you select this job? </textarea>
        <br><br><input type="submit" value="Submit">
    </form></fieldset></center>
</body>
</html>