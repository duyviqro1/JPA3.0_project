<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri ="jakarta.tags.core" %>

<a href="${pageContext.request.contextPath}/admin/user/add">Add User</a>
<table border ="1" width="100%">
	<tr>
		<th>STT</th>
		<th>Full name</th>
		<th>User Name</th>
		<th>Password</th>
		<th>User Id</th>
		<th>Image</th>
		<th>Email</th>
		<th>Phone Number</th>
		<th>Role</th>
		<th>Action</th>
	</tr>

	<c:forEach items="${listuser}" var="user" varStatus="STT">
		<tr>
			<td>${STT.index+1 }</td>
			
			<td>${user.fullname }</td>
			
			<td>${user.username }</td>
			
			<td>${user.password }</td>
			
			<td>${user.email }</td>
			
			<td>${user.id }</td>
			
			<td>
			<c:if test="${user.images.substring(0,5) !='https'}">
			<c:url value= "/images?fname=${user.images }" var="imgUrl">  </c:url>
			</c:if>
			<c:if test="${user.images.substring(0,5) =='https'}">
			<c:url value="${user.images }" var="imgUrl" > </c:url>
			</c:if>
			<img height="150" width="200" src="${imgUrl}" />
			</td>
			
			<td>${user.phone }</td>
			
			<td>
			<c:if test="${user.roleid==1}">
					<span>Admin</span>
			</c:if>
			<c:if test="${user.roleid==2}">
					<span>User</span>
			</c:if>
			<c:if test="${user.roleid==3}">
					<span>Manager</span>
			</c:if>
			</td>
			<td><a
				href="<c:url value='/admin/user/edit?id=${user.id }'/>">Sửa</a>| <a
				href="<c:url value='/admin/user/delete?id=${user.id }'/>">Xóa</a></td>
		</tr>
	</c:forEach>

</table>