<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix ="c" uri = "jakarta.tags.core" %>
    
<form action="${pageContext.request.contextPath}/admin/category/update" method="post" enctype = "multipart/form-data">

<input type="text" id="CategoryId" name="CategoryId" value = "${cate.categoryId }" hidden = "hidden">
	<label for="Categoryname">Category Name:</label>
	<br> 
		<input type="text" id="Categoryname" name="Categoryname" value = "${cate.categoryname }">
	<br> 
		<label for="images">images:</label>
	<br> 
		<c:if test="${cate.images.substring(0,5) !='https'}">
			<c:url value= "/images?fname=${cate.images }" var="imgUrl">  </c:url>
		</c:if>
			<c:if test="${cate.images.substring(0,5) =='https'}">
			<c:url value="${cate.images }" var="imgUrl" > </c:url>
			</c:if>
			
			<img height="150" width="200" src="${imgUrl}" id="imagess"/>
		<input type="file" onchange="chooseFile(this)" id="images" name="images" value = "${cate.images }">
	<br>
		<input type="radio" id="ston" name="status" value="1" ${cate.status ==1?'checked':'' }>
	<label for="html">Hoạt động</label><br>
	
	<input type="radio" id="stoff" name="status" value="0" ${cate.status !=1?'checked':'' }>
	<label for="css">Khóa</label><br>
	
	<input type="submit" value="Update">
</form>