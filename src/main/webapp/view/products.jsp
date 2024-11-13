<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Products</title>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<style>
.product-card {
	margin-bottom: 30px;
}

.product-img {
	width: 100%;
	height: auto;
}

.product-info {
	padding: 10px;
}

.product-title {
	font-size: 1.5em;
	margin-bottom: 10px;
}

.product-description {
	font-size: 1.1em;
	margin-bottom: 10px;
}
</style>
</head>
<body>
	<div class="container mt-5">
		<h1 class="text-center mb-5">Video Products</h1>

		<!-- Check if the list of videos is not empty -->
		<c:if test="${not empty listVideos}">
			<div class="row">
				<!-- Iterate over each video -->
				<c:forEach var="video" items="${listVideos}">
					<div class="col-md-4">
						<div class="card product-card">
							<!-- Display Video Image -->
							<td><c:if test="${video.images.substring(0,5) !='https'}">
									<c:url value="/images?fname=${video.images }" var="imgUrl">
									</c:url>
								</c:if> <c:if test="${video.images.substring(0,5) =='https'}">
									<c:url value="${video.images }" var="imgUrl">
									</c:url>
								</c:if> <img height="150" width="200" src="${imgUrl}" /></td>
							<!-- Display Video Title -->
							<p>
								<strong>Title: </strong>${video.title}</p>
							<!-- Display Video Description -->
							<p class="card-text product-description">
								<c:choose>
									<c:when test="${empty video.description}">
                                            No description available.
                                        </c:when>
									<c:otherwise>
										<p>
											<strong>Descriptions: </strong>${video.description}</p>
									</c:otherwise>
								</c:choose>
							</p>
							<!-- Display Video Views -->
							<p>
								<strong>Views: </strong>${video.views}</p>
							<!-- Add link to video detail page -->
							<a href="/video/detail/${video.videoId}" class="btn btn-primary">View
								Details</a>
						</div>
					</div>
			</div>
			</c:forEach>
	</div>
	</c:if>

	<!-- If no videos are found -->
	<c:if test="${empty listVideos}">
		<p class="text-center">No videos available at the moment.</p>
	</c:if>

	</div>

	<!-- Bootstrap JS and dependencies -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
