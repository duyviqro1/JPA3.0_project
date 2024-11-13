<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri ="jakarta.tags.core" %>

<a href="${pageContext.request.contextPath}/admin/video/add">Add Video</a> |
<a href="${pageContext.request.contextPath}/admin/video/by-category">xem theo category</a>
<table border ="1" width="100%">
	<tr>
		<th>STT</th>
		<th>Video ID</th>
		<th>Thumpnail</th>
		<th>Video Title</th>
		<th>Description</th>
		<th>Views</th>
		<th>Category</th>
		<th>Status</th>
		<th>Action</th>
	</tr>

	<c:forEach items="${listvideo}" var="video" varStatus="STT">
		<tr>
			<td>${STT.index+1 }</td>
			
			<td>${video.videoId }</td>
			
			<td>
			<c:if test="${video.images.substring(0,5) !='https'}">
			<c:url value= "/images?fname=${video.images }" var="imgUrl">  </c:url>
			</c:if>
			<c:if test="${video.images.substring(0,5) =='https'}">
			<c:url value="${video.images }" var="imgUrl" > </c:url>
			</c:if>
			<img height="150" width="200" src="${imgUrl}" />
			</td>
			
			<td>${video.title }</td>
			
			<td>${video.description }</td>
			
			<td>${video.views }</td>
			
			<td>${video.category.categoryname }</td>
			
			
			<td>
			
			<c:if test="${video.active==1}">
					<span>Hoạt động</span>
			</c:if>
			<c:if test="${video.active!=1}">
					<span>Khóa</span>
			</c:if>
			
			</td>
			
			<td><a
				href="<c:url value='/admin/video/edit?id=${video.videoId }'/>">Sửa</a>| <a
				href="<c:url value='/admin/video/delete?id=${video.videoId }'/>">Xóa</a> |
				<a href="<c:url value='/admin/video/detail?id=${video.videoId}'/>">Xem chi tiết</a>
				</td>
		</tr>
	</c:forEach>

</table>