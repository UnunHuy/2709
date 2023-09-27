<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>KhoaHoc List</title>
    <!-- Add Bootstrap CSS via CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container">
    <h1 class="mt-5 mb-4 text-center">KhoaHoc List</h1>

    <table class="table table-striped">
        <thead>
        <tr>
            <th>ID</th>
            <th>Ten Khoa Hoc</th>
            <th>Nien Khoa</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${khoahocs}" var="khoahoc">
            <tr>
                <td>${khoahoc.id}</td>
                <td>${khoahoc.tenkhoahoc}</td>
                <td>${khoahoc.nienkhoa}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

    <a href="${pageContext.request.contextPath}/khoahoc/add" class="btn btn-primary">Thêm khoá học</a>
    <a href="${pageContext.request.contextPath}/" class="btn btn-primary">Danh sách sinh viên</a>
</div>

<!-- Add Bootstrap JavaScript and Popper.js via CDN (required for some Bootstrap features) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@2.9.3/dist/umd/popper.min.js"></script>

</body>
</html>