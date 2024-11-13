<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- BEGIN TOP BAR -->
<div class="pre-header">
	<div class="container">
		<div class="row">
			<!-- BEGIN TOP BAR LEFT PART -->
			<div class="col-md-6 col-sm-6 additional-shop-info">
				<ul class="list-unstyled list-inline">
					
				</ul>
			</div>
			<!-- END TOP BAR LEFT PART -->
			<!-- BEGIN TOP BAR MENU -->
			<div class="col-md-6 col-sm-6 additional-nav">
				<ul class="list-unstyled list-inline pull-right">
					<li><a href="${pageContext.request.contextPath}/home">Trang chủ</a></li>
					<li><a href="${pageContext.request.contextPath}/products">Sản phẩm</a></li>
					<li><c:choose>
							<c:when test="${sessionScope.account == null}">
								<a href="${pageContext.request.contextPath}/login">Login</a> 
								| <a href="${pageContext.request.contextPath}/register">Register</a>
										
							</c:when>
							<c:otherwise>
								<a href="${pageContext.request.contextPath}/profile">${sessionScope.account.fullname}</a>
											| <a href="${pageContext.request.contextPath}/logout">Logout</a>
							</c:otherwise>
						</c:choose></li>
						<!-- Chỉ hiển thị "Trang quản trị" nếu là admin -->
						<li><a href="${pageContext.request.contextPath}/admin/categories">Trang quản trị</a></li>
					
				</ul>
			</div>
			<!-- END TOP BAR MENU -->
		</div>
	</div>
</div>
<!-- END TOP BAR -->

