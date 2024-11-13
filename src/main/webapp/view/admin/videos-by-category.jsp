<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Videos by Category</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .category-container {
            margin-top: 30px;
        }
        .category-title {
            font-size: 24px;
            font-weight: bold;
            margin-bottom: 20px;
        }
        .video-item {
            display: flex;
            align-items: center;
            margin-bottom: 20px;
        }
        .video-image {
            width: 150px;
            height: 100px;
            object-fit: cover;
            margin-right: 20px;
        }
        .video-title {
            font-size: 18px;
            font-weight: bold;
        }
        .video-description {
            font-size: 14px;
            color: #666;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1 class="text-center my-5">All Videos by Category</h1>

        <c:forEach items="${categories}" var="category">
            <div class="category-container">
                <!-- Hiển thị tên danh mục -->
                <div class="category-title">${category.categoryname}</div>

                <c:if test="${not empty category.videos}">
                    <!-- Hiển thị danh sách video trong danh mục -->
                    <div class="row">
                        <c:forEach items="${category.videos}" var="video">
                            <div class="col-md-4">
                                <div class="video-item">
                                    <img src="${pageContext.request.contextPath}/images/${video.images}" alt="Video Thumbnail" class="video-image" />
                                    <div>
                                        <div class="video-title">${video.title}</div>
                                        <div class="video-description">${video.description}</div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </c:if>

                <c:if test="${empty category.videos}">
                    <p>No videos found in this category.</p>
                </c:if>
            </div>
        </c:forEach>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
