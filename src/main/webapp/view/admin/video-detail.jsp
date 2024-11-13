<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Video Detail</title>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<style>
.video-detail-container {
	display: flex;
	flex-direction: row;
	align-items: flex-start;
	justify-content: flex-start;
	margin-top: 30px;
}

.video-image {
	width: 250px;
	height: 150px;
	object-fit: cover;
	margin-right: 20px;
}

.video-info {
	max-width: 600px;
}

.video-title {
	font-size: 24px;
	font-weight: bold;
}

.video-id, .video-category, .video-views {
	font-size: 18px;
	margin: 10px 0;
}

.video-description {
	margin-top: 20px;
	font-size: 16px;
	line-height: 1.5;
}
</style>
</head>
<body>
	<div class="container">
		<h1 class="text-center my-5">Video Detail</h1>

		<c:if test="${not empty video}">
			<div class="video-detail-container">
				<!-- Video Image -->
				<td><c:if test="${video.images.substring(0,5) !='https'}">
						<c:url value="/images?fname=${video.images }" var="imgUrl">
						</c:url>
					</c:if> <c:if test="${video.images.substring(0,5) =='https'}">
						<c:url value="${video.images }" var="imgUrl">
						</c:url>
					</c:if> <img height="150" width="200" src="${imgUrl}" /></td>
				<!-- Video Title -->
				<div class="video-title">${video.title}</div>

				<!-- Video ID -->
				<div class="video-id">
					<strong>Video ID: </strong>${video.videoId}</div>

				<!-- Video Category -->
				<div class="video-category">
					<strong>Category: </strong>${video.category.categoryname}</div>

				<!-- Video Views -->
				<div class="video-views">
					<strong>Views: </strong>${video.views}</div>
			</div>
	</div>

	<!-- Video Description -->
	<div class="video-description">
		<strong>Description: </strong>
		<p>${video.description}</p>
	</div>
	</c:if>

	<c:if test="${empty video}">
		<p class="text-center">No video found!</p>
	</c:if>
	<a href="<c:url value='/admin/videos'/>" class="btn btn-secondary mt-3">Back to Video List</a>
	</div>

	<!-- Bootstrap JS and dependencies -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
