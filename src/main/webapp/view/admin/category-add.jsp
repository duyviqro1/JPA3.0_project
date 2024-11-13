<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix ="c" uri = "jakarta.tags.core" %>
	
	
	
<form action="${pageContext.request.contextPath}/admin/category/insert" method="post" enctype = "multipart/form-data">
	<label for="Categoryname">Category Name:</label>
	<br> 
		<input type="text" id="Categoryname" name="Categoryname" >
	<br> 
		<label for="images">images:</label>
	<br> 
		<img height="150" width="200" src="" id="imagess"/>
		<input type="file" onchange="chooseFile(this)" id="imagess" name="images">
	<br>
		<label for="status">status:</label>
	<br> 
		<input type="radio" id="ston" name="status" value="1" checked>
	<label for="html">Hoạt động</label><br>
	
	<input type="radio" id="stoff" name="status" value="0">
	<label for="css">Khóa</label><br>

	<br> <input type="submit" value="Submit">
</form>
