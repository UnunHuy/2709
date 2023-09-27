<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add SinhVien</title>

    <!-- Add Bootstrap CSS via CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container w-50">
    <h1 class="mt-5 mb-4 text-center">Add SinhVien</h1>

    <form:form action="add" method="post" modelAttribute="khoahoc">
        <div class="mb-3">
            <form:label path="tenkhoahoc" class="form-label">Tên khoá học:</form:label>
            <form:input path="tenkhoahoc" class="form-control"/>
            <form:errors path="tenkhoahoc" class="text-danger"/>
        </div>

        <div class="mb-3">
            <form:label path="nienkhoa" class="form-label">Niên khoá:</form:label>
            <form:input path="nienkhoa" class="form-control"/>
            <form:errors path="nienkhoa" class="text-danger"/>
        </div>


        <div class="text-center">
            <button type="submit" class="btn btn-primary">Submit</button>
        </div>
        <a href="${pageContext.request.contextPath}/">Back to SinhVien List</a>
    </form:form>
</div>

<!-- Add Bootstrap JavaScript and Popper.js via CDN (required for some Bootstrap features) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@2.9.3/dist/umd/popper.min.js"></script>

</body>
</html>