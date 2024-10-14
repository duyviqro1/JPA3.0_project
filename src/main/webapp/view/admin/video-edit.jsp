<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri = "jakarta.tags.core" %>

<form action="${pageContext.request.contextPath}/admin/video/update" method="post" enctype = "multipart/form-data">
	
	<label for="images">images:</label>
	<br> 
		<c:if test="${video.images.substring(0,5) !='https'}">
			<c:url value= "/images?fname=${video.images }" var="imgUrl">  </c:url>
		</c:if>
			<c:if test="${video.images.substring(0,5) =='https'}">
			<c:url value="${video.images }" var="imgUrl" > </c:url>
			</c:if>
			
			<img height="150" width="200" src="${imgUrl}" id="imagess"/>
		<input type="file" onchange="chooseFile(this)" id="images" name="images" value = "${video.images }">
	<br>
	
	<label for=videoId>Video ID:</label>
	<br> 
		<input type="text" id="videoId" name="videoId" value="${video.videoId }" >
	<br> 
	
	<label for=title>Video Title:</label>
	<br> 
		<input type="text" id="title" name="title" value="${video.title }">
	<br> 
	
	<label for=views>View Count:</label>
	<br> 
		<input type="text" id="views" name="views" value="${video.views }">
	<br> 
	
	<label for="category">Category:</label>
	<br>
	<select id="category" name="categoryId">
		<c:forEach items="${categories}" var="category">
			<option value="${category.categoryId}">${category.categoryname}</option>
		</c:forEach>
	</select>
	<br>
	
	<label for=description>Description:</label>
	<br> 
		<input type="text" id="description" name="description" value="${video.description }">
	<br> 
	
	<label for="active">Status:</label>
	<br>
		<input type="radio" id="ston" name="active" value="1" ${video.active ==1?'checked':'' }>
	<label for="html">Hoạt động</label><br>
	
	<input type="radio" id="stoff" name="active" value="0" ${video.active !=1?'checked':'' }>
	<label for="css">Khóa</label><br>
	
	<input type="submit" value="Update">
</form>