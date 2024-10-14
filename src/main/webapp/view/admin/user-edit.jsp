<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix ="c" uri = "jakarta.tags.core" %>
    
<form action="${pageContext.request.contextPath}/admin/user/update" method="post" enctype = "multipart/form-data">

	<input type="text" id="id" name="id" value = "${user.id }" hidden = "hidden">
	
	<label for="fullname">Full Name:</label>
	<br> 
		<input type="text" id="fullname" name="fullname" value = "${user.fullname }">
	<br> 
	
	<label for="username">User Name:</label>
	<br> 
		<input type="text" id="username" name="username" value = "${user.username }">
	<br> 
	
	<label for="password">Password:</label>
	<br> 
		<input type="text" id="password" name="password" value = "${user.password }">
	<br> 
	
		<label for="images">images:</label>
	<br> 
		<c:if test="${user.images.substring(0,5) !='https'}">
			<c:url value= "/images?fname=${user.images }" var="imgUrl">  </c:url>
		</c:if>
			<c:if test="${user.images.substring(0,5) =='https'}">
			<c:url value="${user.images }" var="imgUrl" > </c:url>
			</c:if>
			
			<img height="150" width="200" src="${imgUrl}" id="imagess"/>
		<input type="file" onchange="chooseFile(this)" id="images" name="images" value = "${user.images }">
	<br>
	
	<label for="email">Email:</label>
	<br> 
		<input type="text" id="email" name="email" value = "${user.email }">
	<br> 
	
	<label for="phone">Phone Number:</label>
	<br> 
		<input type="text" id="phone" name="phone" value = "${user.phone }">
	<br> 
	
		<label for="roleid">RoleId:</label>
	<br> 
		<input type="text" id="roleid" name="roleid" value = "${user.roleid }">
	<br> 
	
	<input type="submit" value="Update">
</form>