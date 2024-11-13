<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Category List</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>
    <div class="container mt-4">
        <a href="${pageContext.request.contextPath}/admin/category/add" class="btn btn-primary mb-3">Add Category</a>

        <table class="table table-striped table-bordered table-hover" id="sample_1">
            <thead>
                <tr>
                    <th>STT</th>
                    <th>Images</th>
                    <th>CategoryID</th>
                    <th>CategoryName</th>
                    <th>Status</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listcate}" var="cate" varStatus="STT">
                    <tr>
                        <td>${STT.index + 1}</td>
                        <td>
                            <c:if test="${cate.images.substring(0, 5) != 'https'}">
                                <c:url value="/images?fname=${cate.images}" var="imgUrl"></c:url>
                            </c:if>
                            <c:if test="${cate.images.substring(0, 5) == 'https'}">
                                <c:url value="${cate.images}" var="imgUrl"></c:url>
                            </c:if>
                            <img height="150" width="200" src="${imgUrl}" alt="Image">
                        </td>
                        <td>${cate.categoryId}</td>
                        <td>${cate.categoryname}</td>
                        <td>
                            <c:if test="${cate.status == 1}">
                                <span>Hoạt động</span>
                            </c:if>
                            <c:if test="${cate.status != 1}">
                                <span>Khóa</span>
                            </c:if>
                        </td>
                        <td>
                            <a href="<c:url value='/admin/category/edit?id=${cate.categoryId}'/>" class="btn btn-warning btn-sm">Edit</a> |
                            <a href="<c:url value='/admin/category/delete?id=${cate.categoryId}'/>" class="btn btn-danger btn-sm">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

        <!-- Pagination -->
        <div class="pagination-wrapper">
            <nav aria-label="Page navigation">
                <ul class="pagination justify-content-center">
                    <!-- Prev button -->
                    <c:if test="${currentPage > 1}">
                        <li class="page-item">
                            <a class="page-link" href="?page=${currentPage - 1}&size=${pageSize}" aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                            </a>
                        </li>
                    </c:if>

                    <!-- Page numbers -->
                    <c:forEach begin="1" end="${totalPages}" var="i">
                        <li class="page-item ${currentPage == i ? 'active' : ''}">
                            <a class="page-link" href="?page=${i}&size=${pageSize}">${i}</a>
                        </li>
                    </c:forEach>

                    <!-- Next button -->
                    <c:if test="${currentPage < totalPages}">
                        <li class="page-item">
                            <a class="page-link" href="?page=${currentPage + 1}&size=${pageSize}" aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                            </a>
                        </li>
                    </c:if>
                </ul>
            </nav>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
