<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix ="c" uri = "jakarta.tags.core" %>
<form action="${pageContext.request.contextPath}/admin/user/insert" method="post" enctype = "multipart/form-data">


		<label for="fullname">Full Name:</label>
	<br> 
		<input type="text" id="fullname" name="fullname" >
	<br> 
	
		<label for="username">User Name:</label>
	<br> 
		<input type="text" id="username" name="username" >
	<br> 
	
	<label for="password">Password:</label>
	<br> 
		<input type="text" id="password" name="password" >
	<br> 
	
		<label for="images">images:</label>
	<br> 
		<img height="150" width="200" src="" id="imagess"/>
		<input type="file" onchange="chooseFile(this)" id="imagess" name="images">
	<br>
	
	<label for="email">Email:</label>
	<br> 
		<input type="text" id="email" name="email" >
	<br> 
	
		<label for="phone">Phone Number:</label>
	<br> 
		<input type="text" id="phone" name="phone" >
	<br> 
	
	
		<label for="roleid">Role:</label>
	<br> 
		<input type="text" id="roleid" name="roleid" >
	<br> 

	<br> <input type="submit" value="Submit">
</form>
