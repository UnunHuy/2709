<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>SinhVien List</title>

    <!-- Add Bootstrap CSS via CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <h1 class="mb-4">SinhVien List</h1>
    <a href="${pageContext.request.contextPath}/sinhvien/add" class="btn btn-primary mb-4">Thêm sinh viên</a>
    <a href="${pageContext.request.contextPath}/khoahoc" class="btn btn-warning mb-4">Danh sách khoá học</a>
    <table class="table table-bordered">
        <thead>
        <tr>
            <th>ID</th>
            <th>Họ tên</th>
            <th>Khoá học</th>
            <th></th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="sinhvien" items="${sinhviens}">
            <tr>
                <td>${sinhvien.id}</td>
                <td>${sinhvien.hoten}</td>
                <td>${sinhvien.khoahoc.tenkhoahoc}</td>
                <td>
                    <a href="${pageContext.request.contextPath}/sinhvien/${sinhvien.id}" class="btn btn-info btn-sm text-white">View</a>
                    <a href="${pageContext.request.contextPath}/sinhvien/edit/${sinhvien.id}" class="btn btn-warning btn-sm text-white">Edit</a>
                    <a href="${pageContext.request.contextPath}/sinhvien/delete/${sinhvien.id}" class="btn btn-danger btn-sm">Delete</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

<!-- Add Bootstrap JavaScript and Popper.js via CDN (required for some Bootstrap features) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@2.9.3/dist/umd/popper.min.js"></script>
</body>
</html>
