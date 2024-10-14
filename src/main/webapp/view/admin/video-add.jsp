<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri = "jakarta.tags.core" %>

<form action="${pageContext.request.contextPath}/admin/video/insert" method="post" enctype = "multipart/form-data">
	
	<img height="150" width="200" src="" id="imagess"/>
		<input type="file" onchange="chooseFile(this)" id="imagess" name="images">
	<br>
	
	<label for=videoId>Video ID:</label>
	<br> 
		<input type="text" id="videoId" name="videoId" >
	<br> 
	
	<label for=title>Video Title:</label>
	<br> 
		<input type="text" id="title" name="title" >
	<br> 
	
	<label for=views>View Count:</label>
	<br> 
		<input type="text" id="views" name="views" value="0" disabled>
	<br> 
	
	<label for="category">Category:</label>
	<br>
	
	<select id="category" name="categoryId">
	<option value="" disabled selected>-- Chọn --</option> <!-- Tùy chọn "Chọn" -->
		<c:forEach items="${categories}" var="category">
			<option value="${category.categoryId}">${category.categoryname}</option>
		</c:forEach>
	</select>
	<br>
	
	<label for=description>Description:</label>
	<br> 
		<input type="text" id="description" name="description">
	<br> 
	
	<label for="active">Status:</label>
	<br> 
		<input type="radio" id="ston" name="active" value="1" checked>
	<label for="html">Hoạt động</label><br>
	
	<input type="radio" id="stoff" name="active" value="0">
	<label for="css">Khóa</label><br>

	<br> <input type="submit" value="Submit">
</form>