<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Page</title>
<style type="text/css">
	body {
		  font-family: Arial;
		  padding: 20px;
		  background: #EDDA74;
		}
		header {
		  padding: 30px;
		  font-size: 40px;
		  border: none;
		  text-align: center;
		  background-image: url("https://cdn.pixabay.com/photo/2016/04/30/13/12/texture-1362879__340.jpg");
		  background-repeat: no-repeat;
		  background-attachment: fixed;
		  background-size: cover;
		}
</style>
</head>
<body>
 <div align="center">
  <header>Registration Form</header><br><br><br>
  <form action="<%= request.getContextPath() %>/register" method="post">
   <table style="with: 80%">
    <tr>
     <td>First Name</td>
     <td><input type="text" name="firstName" /></td>
    </tr>
    <tr>
     <td>Last Name</td>
     <td><input type="text" name="lastName" /></td>
    </tr>
    <tr>
     <td>UserName</td>
     <td><input type="text" name="username" /></td>
    </tr>
    <tr>
     <td>Password</td>
     <td><input type="password" name="password" /></td>
    </tr>
    <tr>
     <td>Address</td>
     <td><input type="text" name="address" /></td>
    </tr>
    <tr>
     <td>Contact No</td>
     <td><input type="text" name="contact" /></td>
    </tr>
   </table>
   <input type="submit" value="Submit" />
  </form>
 </div>
</body>
</html>
